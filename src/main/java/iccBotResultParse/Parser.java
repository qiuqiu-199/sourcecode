package iccBotResultParse;

import com.sun.xml.internal.bind.v2.runtime.reflect.opt.Const;
import model.AppModel;
import model.ICCMsg;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import testcase.TestcaseGenerator;
import utils.ConstantUtils;

import java.awt.*;
import java.io.*;
import java.util.*;

/**
 * @ClassName: Parser
 * @Author: qiuzhiq
 * @Date: 2023/5/10 16:19
 * @Description:
 */

public class Parser {

    public void parseXml(){

    }

    public static void main(String[] args) throws DocumentException, FileNotFoundException, CloneNotSupportedException {

        //解析manifest文件

        String apkpath = "apk/K9Mail.apk";


        AppModel.v().appName = "K9Mail";
        ConstantUtils.getActivitySetFromManifest();  //获取manifest里声明的activity组件，存入ConstantUtils.activitySet里面

        Map<String,Set<ICCMsg>> activity2receivedICCMap = new HashMap<>(); //存储发送给activity的iccmsg

        //从CTG.xml解析intent
        activity2receivedICCMap = resolveIntentFromCTGfile();
        //从manifest文件里的intentfile解析组件间通信

        //从componentInfo/xml文件里解析intent

        TestcaseGenerator testcaseGenerator = new TestcaseGenerator(activity2receivedICCMap);
        testcaseGenerator.generateTestApp();



        System.out.println("finish!");
    }

    public static Map<String,Set<ICCMsg>> resolveIntentFromCTGfile() throws DocumentException {
        //从CTG.xml获取每个icc目标为activity的intent信息  TODO 忽略了一点，ctg里有些活动组件是没有被组件启动，比如com.fsck.k9.activity.ChooseIdentity

        File file = new File("F:\\ThesisReproduction\\iccBot\\ICCBot\\qiuResult\\output\\K9Mail\\CTGResult\\CTG.xml");

        SAXReader saxReader = new SAXReader();
        Document document = saxReader.read(file);
        Element root = document.getRootElement();

        Iterator<Element> rootIterator = root.elementIterator();
        Map<String,Set<ICCMsg>> activity2receivedICCMap = new HashMap<>(); //存储发送给activity的iccmsg
        Map<String, Set<String>> act2iccmsgHistory = new HashMap<>(); //iccmsg保存为字符串，用做池子去掉接收到的重复的iccmsg
        //分析destination标签接收的intent信息就好
        while(rootIterator.hasNext()){
            Element sourceElement = rootIterator.next();
            Iterator<Element> destinationIterator = sourceElement.elementIterator();

            while (destinationIterator.hasNext()){
                Element destinationElement = destinationIterator.next();
                String desActName = destinationElement.attributeValue("name");

                //TODO CTG.xml的隐式intent要记得向下怎么处理
//                if(destinationElement.attributeValue("desType").equals("Activity") && ConstantUtils.activitySet.contains(destinationElement.getName())) {
                if(ConstantUtils.activitySet.contains(destinationElement.attributeValue("name"))) {

                    if(!act2iccmsgHistory.keySet().contains(desActName)) act2iccmsgHistory.put(desActName,new HashSet<>());
                    if (!activity2receivedICCMap.keySet().contains(desActName)) activity2receivedICCMap.put(desActName, new HashSet<>());

                    //对一条ctg边目的为activity的icc构建
                    ICCMsg iccMsg = new ICCMsg();
                    if (destinationElement.attributeValue("action") != null)
                        iccMsg.action = destinationElement.attributeValue("action");
                    if(destinationElement.attributeValue("category") != null)
                        iccMsg.category.addAll(Arrays.asList(destinationElement.attributeValue("category").split(",")));
                    if(destinationElement.attributeValue("data") != null){
                        String data = destinationElement.attributeValue("data");
                        iccMsg.data = data;
                        //TODO data待分解处理
//                        if(!data.equals("") && !data.equals("\"\"")) iccMsg.data = data;
//                        else
                    }

                    if(destinationElement.attributeValue("type") != null)
                        iccMsg.type = destinationElement.attributeValue("type");
                    if(destinationElement.attributeValue("extras") != null)
                        iccMsg.extras.addAll(Arrays.asList(destinationElement.attributeValue("extras").split(",")));

                    //一个目标组件接收的intent信息可能重复，去掉重复的
                    if(!act2iccmsgHistory.get(desActName).contains(iccMsg.toString()))
                        activity2receivedICCMap.get(desActName).add(iccMsg);

                    //activity接受的iccmsg池子
                    act2iccmsgHistory.get(desActName).add(iccMsg.toString());
                }
            }
        }

        return activity2receivedICCMap;
    }


    //此方法解析componentInfo.xml，获取每个activity接收的intent信息
    public static void resolveReceivedICC() throws DocumentException, FileNotFoundException, CloneNotSupportedException {
        long startTime = System.currentTimeMillis();
        ConstantUtils.getActivitySetFromManifest();

        SAXReader saxReader = new SAXReader();  //TODO componentInfo文件位置记得改
        File file = new File("F:\\ThesisReproduction\\iccBot\\ICCBot\\qiuResult\\output\\K9Mail\\CTGResult\\ComponentInfo.xml");
        Document document = saxReader.read(file);

        Element root = document.getRootElement(); //根节点，子元素是Component
        Iterator<Element> rootIterator = root.elementIterator();

        int count = 1;
        File outFile = new File("./iccReceived.txt");
        System.setOut(new PrintStream(new FileOutputStream(outFile)));

        while (rootIterator.hasNext()){
            Element componentElement = rootIterator.next();
            Iterator<Element> componentIterator = componentElement.elementIterator();
            IccModelReceived iccModelReceived = new IccModelReceived();

            if(!componentElement.attributeValue("type").equals("Activity")) continue;

            iccModelReceived.componentName = componentElement.attributeValue("name");
            ConstantUtils.activitySet.remove(iccModelReceived.componentName);

            while (componentIterator.hasNext()){

                Element element = componentIterator.next();
//                System.out.println("intentElement.getName() = " + intentElement.getName());

                if(element.getName().equals("receive")){
                    if(element.attributeValue("action")!=null) iccModelReceived.action = element.attributeValue("action");
                    if(element.attributeValue("category")!=null) iccModelReceived.category = element.attributeValue("category");
                    if(element.attributeValue("data")!=null) iccModelReceived.data = element.attributeValue("data");
                    if(element.attributeValue("type")!=null) iccModelReceived.type = element.attributeValue("type");
                    if (element.attributeValue("extras")!=null) iccModelReceived.extras = element.attributeValue("extras");

                    //TODO componentInfo.xml没有统计flag
//                  if(element.attributeValue("flags")!=null) iccModelReceived.flag = element.attributeValue("flags");
                }
            }
            //TODO  为每个个activity生成一条一条ICCMsg

            //action只能有一个，category可以有多个，data一个？
            if(iccModelReceived.action != null){
                String[] actionSet = iccModelReceived.action.split(", ");
                for(String oneAction : actionSet){

                    if(iccModelReceived.category != null){
                        String[] categorySet = iccModelReceived.category.split(", ");

                    }

                    if(iccModelReceived.data != null){
                        String[] dataSet = iccModelReceived.data.split(", ");
                        for(String dataStr : dataSet){

                        }
                    }

                }
            }else{
                ICCMsg iccModel = new ICCMsg();
            }



            System.out.println("=============" + count++ + "================");
            System.out.println(iccModelReceived);
        }

        for (String s : ConstantUtils.activitySet) System.out.println(s);

        System.setOut(new PrintStream(new FileOutputStream(FileDescriptor.out)));
        long endTime = System.currentTimeMillis();
        System.out.println("时间： " + (endTime-startTime));
    }
}
