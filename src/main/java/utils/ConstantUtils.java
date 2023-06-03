package utils;

import java.io.*;
import java.util.HashSet;

/**
 * @ClassName: ConstantUtils
 * @Author: qiuzhiq
 * @Date: 2023/5/11 15:32
 * @Description:
 */

public class ConstantUtils {
    public static final String ANDROIDTARGET = "android-23";
    public static final String APKFLAG = "qiu.";
    public static final String ACTIVITY_ = "Activity_";
    public static final String TESTCASEFOLDER = "testcases" +File.separator;
    public static final String GENERATEDAPP1 = "generatedApp" + File.separator;

    public static final String MANIFEST = "AndroidManifest.xml";

    public static final String ACTIVITY = "Activity";
    public static final String SERVICE = "Service";
    public static final String RECEIVER = "Receiver";
    public static final String PROVIDER = "Provider";

    public static String RESULTFOLDER = "Result_testGen" + File.separator;
    public static String SRCFOLDER;

    public static boolean isStringType(String extra_type) {
        String[] no = { "Bundle", "Parcelable", "Serializable", "Extras", "ArrayList", "Array" };
        for (String s : no)
            if (extra_type.contains(s))
                return false;
        return true;
    }

    public static boolean isArrayListType(String extra_type) {
        String[] no = { "IntegerArrayList", "ParcelableArrayList", "StringArrayList" };
        for (String s : no)
            if (extra_type.contains(s))
                return true;
        return false;
    }
}
