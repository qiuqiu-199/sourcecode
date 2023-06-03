package utils;

import model.AppModel;
import soot.jimple.infoflow.android.iccta.App;

import java.io.File;

/**
 * @ClassName: utils.Global
 * @Author: qiuzhiq
 * @Date: 2023/5/30 14:56
 * @Description:
 */

public class Global {
    private static final Global instance = new Global();
    private AppModel appModel;
    public String appPath = "apk" + File.separator;

    public static Global v() {
        return instance;
    }

    public Global() {}

    public Global(AppModel appModel) {
        this.appModel = appModel;
    }

    public void setAppModel(AppModel appModel){
        this.appModel = appModel;
    }
    public AppModel getAppModel(){
        return appModel;
    }
}
