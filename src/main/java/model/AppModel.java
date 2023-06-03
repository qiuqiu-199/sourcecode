package model;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * @ClassName: AppModel
 * @Author: qiuzhiq
 * @Date: 2023/5/13 10:30
 * @Description:
 */

public class AppModel {
    public String pkgName;
    public String appName;


//    public HashMap<String, ComponentModel> componentMap;
    public HashMap<String, ComponentModel> activityMap = new HashMap<>(); //保存activity名及其对应的activityModel
    public HashMap<String, ComponentModel> serviceMap = new HashMap<>();
    public HashMap<String, ComponentModel> providerMap = new HashMap<>();
    public HashMap<String, ComponentModel> receiverMap = new HashMap<>();
    public HashMap<String, ActivityModel> eaMap = new HashMap<>();
    public String mainActivity;

    public Set<String> usesPermissionSet;
    public String permission;

    public  int countTC_use = 0;  //用来记录虚拟apk的activity数，具体形式见虚拟apk的java源码

    public HashMap<String, Set<ICCMsg>> activityName2ICC;


    public String manifestString;  //manifestString保存manifest文件信息


    public HashMap<String, ActivityModel> getEaMap() {
        return eaMap;
    }
}
