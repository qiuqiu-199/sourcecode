package parser;
/**
 * @ClassName: QManifestParser
 * @Author: qiuzhiq
 * @Date: 2023/5/22 14:28
 * @Description:
 */


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import model.*;

import org.xmlpull.v1.XmlPullParserException;

import soot.jimple.infoflow.android.axml.AXmlNode;
import soot.jimple.infoflow.android.manifest.ProcessManifest;
import utils.PrintUtils;

// This class is used to parse a manifest XML file
// Extract all the exported components (Activity, Service, and Receiver)
//本类用于解析manifest文件，提取暴露组件(Activity, Service, and Receiver)
public class ManifestParser {
    private ProcessManifest manifestManager;

    public ManifestParser() {}

    public ManifestParser(String appPath) {

        try {
            manifestManager = new ProcessManifest(appPath);
        } catch (IOException | XmlPullParserException e) {
            e.printStackTrace();
        }
//        catch (XmlPullParserException e) {   //TODO  这个异常不知道哪里的
//            e.printStackTrace();
//        }
    }

    public void parse(boolean b){  //TODO 这里加了个boolean变量
        //获取manifest.xml文件内容，在appmodel里存为字符串manifestString
        try {
            AppModel.v().manifestString = manifestManager.getAXml().toString();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("no manifest is available!qqq");
        }


        String pkg = manifestManager.getPackageName();
        if(pkg.endsWith(".debug"))
            pkg = pkg.replace(".debug", "");
        AppModel.v().pkgName = pkg;

        AXmlNode appNode = manifestManager.getApplication();

        //解析permission
        //从manifest文件里获取permission存入AppModel.v().permission里，存为字符串了
        //TODO 权限获取为null，目前不知道权限有啥用，后面有用再管
        if(appNode.getAttribute("permission")!=null){
            AppModel.v().permission = appNode.getAttribute("permission").getValue().toString();// which permission?
        }
        AppModel.v().usesPermissionSet = manifestManager.getPermissions();


        //解析组件activity、Service、Provider和Receiver

        parseComponent(manifestManager.getActivities(), "Activity");
        parseComponent(manifestManager.getServices(), "Service");
        parseComponent(manifestManager.getProviders(), "Provider");
        parseComponent(manifestManager.getReceivers(), "Receiver");

        List<AXmlNode> alis = appNode.getChildrenWithTag("activity-alias");
        for (AXmlNode actNode : alis) {
            String name = actNode.getAttribute("targetActivity").getValue().toString();
            if (AppModel.v().activityMap.containsKey(name)) {
                ActivityModel actModel = (ActivityModel) AppModel.v().activityMap.get(name);
                analyzeIntentFilter(actModel, actNode);
            }
        }

        // get EAs
        for (ComponentModel component : AppModel.v().activityMap.values()) {
            if (component.is_exported()) {
                AppModel.v().eaMap.put(component.getComponetName(), (ActivityModel)component);
            }
        }

        //更新声明的属性, TODO 解析manifest文件时更新组件声明属性，暂不清楚用处，略过
//        updataDeclaredAttribute();
    }

//    private void updataDeclaredAttribute() {
//        for( String act :AppModel.v().activityMap.keySet()){
//            appModel.declared_action_item_map_of_app.put(act, appModel.activityMap.get(act).getActionResList());
//            appModel.declared_category_item_map_of_app.put(act, appModel.activityMap.get(act).getCategoryResList());
//            appModel.declared_data_item_map_of_app.put(act, appModel.activityMap.get(act).getDataResList());
//            appModel.declared_type_item_map_of_app.put(act, appModel.activityMap.get(act).getTypeResList());
//        }
//    }

    private void parseComponent(List<AXmlNode> components, String type) {
        // get components
        HashMap<String, ComponentModel> componentMap = getComponentMap(type);
        for (AXmlNode componentNode : components) {
            // ignore the component whose "enabled" attribute is "false"
            if (!componentNode.getTag().equals("activity") && componentNode.hasAttribute("enabled")) {
                if (componentNode.getAttribute("enabled").getValue().toString().equals("")
                        || componentNode.getAttribute("enabled").getValue().toString().equals("false")) {
                    continue;
                }
            }

            // new ActivityData instance
            String componentName = componentNode.getAttribute("name").getValue().toString();
            if (!componentName.contains(AppModel.v().pkgName)) {
                if (componentName.startsWith(".")) {
                    componentName = AppModel.v().pkgName + componentName;
                } else {
                    componentName = AppModel.v().pkgName + "." + componentName;
                }
            }
            // Exclude the activities not declared in app's package.
            // if (!MyConfig.getInstance().getMySwithch().isLibCodeSwitch()&&
            // !componentName.contains(appModel.getPackageName())) // out of
            // package
            // continue;

            // add external libs according to component decalartion  //TODO 这里注释掉，不清除作用
//            if (!componentName.contains(appModel.getPackageName())) {
//                String ss[] = componentName.split("\\.");
//                if (ss.length >= 2)
//                    appModel.getExtendedPakgs().add(ss[0] + "." + ss[1]);
//            }
            ComponentModel componentModel = getComponentModel(type, componentName);
            if (componentModel == null)
                continue;
            componentModel.setComponetName(componentName);

            synchronized (componentMap) {
                if (!componentMap.containsKey(componentModel.getComponetName())) {
                    componentMap.put(componentModel.getComponetName(), componentModel);
                }
            }

            // get the attributes of the activity element
            if (componentNode.getAttribute("exported") != null)
                componentModel.setExported(componentNode.getAttribute("exported").getValue().toString());

            if (componentNode.getAttribute("permission") != null)
                componentModel.setPermission(componentNode.getAttribute("permission").getValue().toString());

            if (componentModel instanceof ActivityModel && componentNode.getAttribute("launchMode") != null)
                ((ActivityModel) componentModel).setLaunchMode(componentNode.getAttribute("launchMode").getValue()
                        .toString());

            if (componentModel instanceof ActivityModel && componentNode.getAttribute("taskAffinity") != null)
                ((ActivityModel) componentModel).setTaskAffinity(componentNode.getAttribute("taskAffinity").getValue()
                        .toString());
            else if (componentModel instanceof ActivityModel)
                ((ActivityModel) componentModel).setTaskAffinity(AppModel.v().pkgName);

            analyzeIntentFilter(componentModel, componentNode);
        }

    }

    private HashMap<String, ComponentModel> getComponentMap(String type) {
        switch (type) {
            case "Activity":
                return AppModel.v().activityMap;
            case "Service":
                return AppModel.v().serviceMap;
            case "Provider":
                return AppModel.v().providerMap;
            case "Receiver":
                return AppModel.v().receiverMap;
        }
        return null;
    }

    private ComponentModel getComponentModel(String type, String componentName) {
        //TODO 注释掉，后续补上
//        if (SootUtils.getSootClassByName(componentName) == null)
//            return null;
        switch (type) {
            case "Activity":
                if (AppModel.v().activityMap.containsKey(componentName))
                    return AppModel.v().activityMap.get(componentName);
                return new ActivityModel();
            case "Service":
                if (AppModel.v().serviceMap.containsKey(componentName))
                    return AppModel.v().serviceMap.get(componentName);
                return new ServiceModel();
            case "Receiver":
                if (AppModel.v().receiverMap.containsKey(componentName))
                    return AppModel.v().receiverMap.get(componentName);
                return new BroadcastReceiverModel();
            case "Provider":
                if (AppModel.v().providerMap.containsKey(componentName))
                    return AppModel.v().providerMap.get(componentName);
                return new ContentProviderModel();
        }
        return null;
    }

    private void analyzeIntentFilter(ComponentModel componentModel, AXmlNode componentNode) {
        // traverse the child elements of the activity element
        for (AXmlNode ifNode : componentNode.getChildren()) {
            if (ifNode.getTag().equals("intent-filter")) {
                // new IntentFilterData instance
                IntentFilterModel ifd = new IntentFilterModel();
                componentModel.addIntentFilter(ifd);
                if (ifNode.getAttribute("priority") != null)
                    ifd.setPriority(ifNode.getAttribute("priority").getValue().toString());

                // traverse child elements of the intent filter element
                for (AXmlNode childNode : ifNode.getChildren()) {
                    if (childNode.getTag().equals("action")) {
                        String action = childNode.getAttribute("name").getValue().toString();
                        ifd.getAction_list().add(action);
                    }
                    if (childNode.getTag().equals("category")) {
                        String category = childNode.getAttribute("name").getValue().toString();
                        ifd.getCategory_list().add(category);
                    }
                    if (ifd.getAction_list().contains("android.intent.action.MAIN")
                            && ifd.getCategory_list().contains("android.intent.category.LAUNCHER")) {
                        AppModel.v().mainActivity = componentModel.getComponetName();
                    }

                    if (childNode.getTag().equals("data")) {
                        Data data = new Data();
                        if (childNode.getAttribute("scheme") != null)
                            data.setScheme(childNode.getAttribute("scheme").getValue().toString());
                        if (childNode.getAttribute("host") != null)
                            data.setHost(childNode.getAttribute("host").getValue().toString());
                        if (childNode.getAttribute("port") != null)
                            data.setPort(childNode.getAttribute("port").getValue().toString());
                        if (childNode.getAttribute("path") != null)
                            data.setPath(childNode.getAttribute("path").getValue().toString());
                        if (childNode.getAttribute("mimeType") != null)
                            ifd.getDatatype_list().add(childNode.getAttribute("mimeType").getValue().toString());
                        if (data.toString().length() > 0)
                            ifd.getData_list().add(data);
                    }
                }
            }
        }
    }
}

