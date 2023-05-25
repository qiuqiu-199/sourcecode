package iccBotResultParse;

import model.*;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import parser.ManifestParser;
import testcase.TestcaseGenerator;

import java.io.*;
import java.util.*;

/**
 * @ClassName: Parser
 * @Author: qiuzhiq
 * @Date: 2023/5/10 16:19
 * @Description:
 */

public class Parser {
    public static void main(String[] args) throws DocumentException, FileNotFoundException, CloneNotSupportedException {

        //解析manifest文件
        AppModel.v().appPath = "apk/K9Mail.apk";
        AppModel.v().appName = "K9mail";
        ManifestParser manifestParser = new ManifestParser(AppModel.v().appPath);
        manifestParser.parse(true);  //这个true，对应fax里面的


        Map<String, Set<ICCMsg>> activity2receivedICCMap = new HashMap<>(); //存储发送给activity的iccmsg

        //从CTG.xml解析intent
        resolveIntentFromCTGfile(activity2receivedICCMap);
        //从manifest文件里的intentfile解析组件间通信
        resolveIntentFromManifest(activity2receivedICCMap);

        //从componentInfo/xml文件里解析intent
        resolveIntentFromReceivedIntent(activity2receivedICCMap);

        TestcaseGenerator testcaseGenerator = new TestcaseGenerator(activity2receivedICCMap);
        testcaseGenerator.generateTestApp();


        System.out.println("finish!");
    }

    public static void resolveIntentFromManifest(Map<String, Set<ICCMsg>> activity2receivedICCMap) {
        Set<String> activityNameSet = AppModel.v().activityMap.keySet();

        for (String activityName : activityNameSet) {
            ActivityModel activityModel = (ActivityModel) AppModel.v().activityMap.get(activityName);
            List<IntentFilterModel> intent_filter_data_list = activityModel.getIntentFilters();
            for (IntentFilterModel intentFilterModel : intent_filter_data_list) {
                Set<String> actions = intentFilterModel.getAction_list();
                Set<String> categories = intentFilterModel.getCategory_list();
                Set<Data> datas = intentFilterModel.getData_list();
                Set<String> types = intentFilterModel.getDatatype_list();
                BundleType extras = new BundleType();

                //generate ICCs use different strategies
                genereateICCRandomely(activityName, actions, categories, datas, types, extras, activity2receivedICCMap);
            }
        }
    }

    private static void genereateICCRandomely(String activityName, Set<String> actions, Set<String> categories, Set<Data> datas, Set<String> types, BundleType extras, Map<String, Set<ICCMsg>> activity2receivedICCMap) {
        Set<String> dataStrSet = new HashSet<>();
        for (Data data : datas) {
            dataStrSet.add(data.toString());
        }

        //TODO 这里对manifest的intentfilter的属性随机选一个，比如action里随机选一个，不应该所有action都来一份吗？这里这么做，一个activity只会有从一个intentFilter里生成一条iccmsg
        ICCMsg msg = new ICCMsg();
        msg.setAction(getRandomElementFromSet(actions));
        msg.setCategory(getRandomElementSetFromSet(categories));
        msg.setData(getRandomElementFromSet(dataStrSet));  //TODO 对data的处理由有些不太对劲
        msg.setType(getRandomElementFromSet(types));
        Set<String> extraSet = new HashSet<String>();
        for (List<ExtraData> eds : extras.obtainBundle().values())
            for (ExtraData ed : eds)
                extraSet.add(ed.toString());
        msg.setExtras(extraSet);

        //将设计好的ICCMsg加入map里
        if (!activity2receivedICCMap.keySet().contains(activityName)) {
            activity2receivedICCMap.put(activityName, new HashSet<>());
        }
        if (!activity2receivedICCMap.get(activityName).toString().contains(msg.toString()))
            activity2receivedICCMap.get(activityName).add(msg);
    }

    private static String getRandomElementFromSet(Collection<String> collection) {
        if (collection == null || collection.size() == 0)
            return "";
        Object[] obj = collection.toArray();
        return (String) obj[(int) (Math.random() * obj.length)];
    }

    private static Set<String> getRandomElementSetFromSet(Collection<String> collection) {
        if (collection == null || collection.size() == 0)
            return new HashSet<>();
        HashSet<String> newSet = new HashSet<String>();
        Object[] obj = collection.toArray();
        newSet.add((String) obj[(int) (Math.random() * obj.length)]);
        return newSet;
    }

    //从CTG.xml文件中解析iccmsg
    public static void resolveIntentFromCTGfile(Map<String, Set<ICCMsg>> activity2receivedICCMap) throws DocumentException {
        //从CTG.xml获取每个icc目标为activity的intent信息  TODO 忽略了一点，ctg里有些活动组件是没有被组件启动，比如com.fsck.k9.activity.ChooseIdentity

        File file = new File("F:\\ThesisReproduction\\iccBot\\ICCBot\\qiuResult\\output\\K9Mail\\CTGResult\\CTG.xml");

        SAXReader saxReader = new SAXReader();
        Document document = saxReader.read(file);
        Element root = document.getRootElement();

        Iterator<Element> rootIterator = root.elementIterator();
        //分析destination标签接收的intent信息就好
        while (rootIterator.hasNext()) {
            Element sourceElement = rootIterator.next();
            Iterator<Element> destinationIterator = sourceElement.elementIterator();

            while (destinationIterator.hasNext()) {
                Element destinationElement = destinationIterator.next();
                String desActName = destinationElement.attributeValue("name");

                //TODO CTG.xml的隐式intent要记得向下怎么处理
//                if(destinationElement.attributeValue("desType").equals("Activity") && ConstantUtils.activitySet.contains(destinationElement.getName())) {
                if (AppModel.v().activityMap.keySet().contains(destinationElement.attributeValue("name"))) {


                    //对一条ctg边目的为activity的icc构建
                    ICCMsg iccMsg = new ICCMsg();
                    if (destinationElement.attributeValue("action") != null)
                        iccMsg.action = destinationElement.attributeValue("action");
                    if (destinationElement.attributeValue("category") != null)
                        iccMsg.category.addAll(Arrays.asList(destinationElement.attributeValue("category").split(",")));
                    if (destinationElement.attributeValue("data") != null) {
                        iccMsg.data = destinationElement.attributeValue("data");
                        //TODO data待分解处理
//                        if(!data.equals("") && !data.equals("\"\"")) iccMsg.data = data;
//                        else
                    }

                    if (destinationElement.attributeValue("type") != null)
                        iccMsg.type = destinationElement.attributeValue("type");
                    if (destinationElement.attributeValue("extras") != null)
                        iccMsg.extras.addAll(Arrays.asList(destinationElement.attributeValue("extras").split(",")));


                    if (!activity2receivedICCMap.keySet().contains(desActName))
                        activity2receivedICCMap.put(desActName, new HashSet<>());
                    //一个目标组件接收的intent信息可能重复，去掉重复的
                    if (!activity2receivedICCMap.get(desActName).toString().contains(iccMsg.toString()))
                        activity2receivedICCMap.get(desActName).add(iccMsg);
                }
            }
        }

    }


    //    此方法解析componentInfo.xml，获取每个activity接收的intent信息
    public static void resolveIntentFromReceivedIntent(Map<String, Set<ICCMsg>> activity2receivedICCMap) throws DocumentException {

        long startTime = System.currentTimeMillis();

        SAXReader saxReader = new SAXReader();  //TODO componentInfo文件位置记得改
        File file = new File("F:\\ThesisReproduction\\iccBot\\ICCBot\\qiuResult\\output\\K9Mail\\CTGResult\\ComponentInfo.xml");
        Document document = saxReader.read(file);

        Element root = document.getRootElement(); //根节点，子元素是Component
        Iterator<Element> rootIterator = root.elementIterator();

        while (rootIterator.hasNext()) {
            Set<String> actionSet = new HashSet<>();
            Set<String> categorySet = new HashSet<>();
            Set<String> dataSet = new HashSet<>();
            Set<String> typeSet = new HashSet<>();
            Set<String> extrasSet = new HashSet<>();

            Element componentElement = rootIterator.next();
            String activityName = componentElement.attributeValue("name");
            Iterator<Element> componentIterator = componentElement.elementIterator();

            if (!componentElement.attributeValue("type").equals("Activity")) continue;


            while (componentIterator.hasNext()) {

                Element element = componentIterator.next();
//                System.out.println("intentElement.getName() = " + intentElement.getName());

                if (element.getName().equals("receive")) {
                    if (element.attributeValue("action") != null) {
                        actionSet.addAll(Arrays.asList(element.attributeValue("action").split(", ")));
                    }else{
                        actionSet.add("");
                    }
                    if (element.attributeValue("category") != null) {
                        categorySet.addAll(Arrays.asList(element.attributeValue("category").split(", ")));
                    }else{
                        categorySet.add("");
                    }
                    if (element.attributeValue("data") != null) {
                        dataSet.addAll(Arrays.asList(element.attributeValue("data").split(", ")));
                    }else dataSet.add("");
                    if (element.attributeValue("type") != null) {
                        typeSet.addAll(Arrays.asList(element.attributeValue("type").split(", ")));
                    }else typeSet.add("");
                    if (element.attributeValue("extras") != null) {
                        //TODO Bundle-app_data,(,String-com.fsck.k9.search_folder,String-com.fsck.k9.search_account)处理
//                        String[] extras = element.attributeValue("extras").split(",");
//                        for (int i = 0; i < extras.length; ++i) {
//                            if(extras[i].equals("(")){
//                                BundleType bundleType = new BundleType();
//                                for(int j = i+1; j < extras.length; ++j){
//                                    String temp = extras[j];
//                                    if(temp.contains(")")){
//                                        List<ExtraData> temp1 = temp.replace(")","");
//                                        bundleType.put("String",temp1);
//                                    }else{
//
//                                    }
//                                }
//                            }
//                        }
                        extrasSet.addAll(Arrays.asList(element.attributeValue("extras").split(",")));
                    }else extrasSet.add("");
                }
            }
            //TODO  为每个个activity生成一条一条ICCMsg

//            action只能有一个，category可以有多个，data一个？
            for (String action : actionSet) {
                Set<String> categorySetGenerated = getRandomElementSetFromSet(categorySet);
                for (String data : dataSet) {
                    for (String type : typeSet) {
                        ICCMsg msg = new ICCMsg();
                        msg.setAction(action);
                        msg.setCategory(getRandomElementSetFromSet(categorySetGenerated));
                        msg.setData(data);  //TODO 对data的处理由有些不太对劲
                        msg.setType(type);
                        msg.setExtras(extrasSet);


                        //将设计好的ICCMsg加入map里
                        if (!activity2receivedICCMap.keySet().contains(activityName)) {
                            activity2receivedICCMap.put(activityName, new HashSet<>());
                        }
                        if (!activity2receivedICCMap.get(activityName).toString().contains(msg.toString()))
                            activity2receivedICCMap.get(activityName).add(msg);

                        ICCMsg msg1 = new ICCMsg();
                        msg1.setAction(action);
                        msg1.setCategory(getRandomElementSetFromSet(categorySetGenerated));
                        msg1.setData(data);  //TODO 对data的处理由有些不太对劲
                        msg1.setType(type);


                        //将设计好的ICCMsg加入map里
                        activity2receivedICCMap.get(activityName).add(msg1);
                    }
                }
            }
        }


        long endTime = System.currentTimeMillis();
        System.out.println("时间： " + (endTime - startTime));
    }
}
