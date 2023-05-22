package model;

import java.util.HashMap;
import java.util.Set;

/**
 * @ClassName: AppModel
 * @Author: qiuzhiq
 * @Date: 2023/5/13 10:30
 * @Description:
 */

public class AppModel {
    private static final AppModel intance = new AppModel();

    public String appName;
    public String appPath;

    public Set<String> usesPermissionSet;
    public String permission;

    public  int countTC_use = 0;  //用来记录虚拟apk的activity数，具体形式见虚拟apk的java源码

    public HashMap<String, Set<ICCMsg>> activityName2ICC;


    public String manifestString;  //manifestString保存manifest文件信息
    public String pkgName;


    //全局单例
    public static AppModel v(){
        return intance;
    }


    public void setManifestString(String manifestString) {
        AppModel.v().manifestString = manifestString;
    }
}
