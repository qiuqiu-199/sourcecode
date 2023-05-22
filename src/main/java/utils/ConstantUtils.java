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
    public static final String packageName = "com.fsck.k9";
    public static final String ACTIVITY = "Activity_";
    public static final String TESTCASEFOLDER = "testcases" +File.separator;
    public static final String GENERATEDAPP1 = "generatedApp" + File.separator;

    public static final String MANIFEST = "AndroidManifest.xml";

    public static String RESULTFOLDER = "Result_testGen" + File.separator;
    public static String SRCFOLDER;



    //存放manifest文件内声明的activity
    public static HashSet<String> activitySet = new HashSet<>();

    public static void getActivitySetFromManifest() {
        File file = new File("F:\\ThesisReproduction\\METOOA\\Fax\\FaxTool\\Result_testGen\\summary_res\\K9Mail\\ActivityDeclaredModel.txt");
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            String line = null;
            line = reader.readLine();
            while(line != null){
                if(line.contains("act_name"))
                activitySet.add(line.split(": ")[1]);
                line = reader.readLine();
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

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
