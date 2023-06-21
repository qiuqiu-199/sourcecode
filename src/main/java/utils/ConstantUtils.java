package utils;

import soot.Unit;
import soot.jimple.internal.JAssignStmt;

import java.io.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

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

    //临时用
    public static Map<String,Set<String>> map = new HashMap<>();

    //属性获取相关方法
    // get attribute method
    public static final String[] getAttribute_methods = {"android.content.Intent: java.lang.String getAction(",
            "android.content.Intent: java.util.Set getCategories(",
            "android.content.Intent: java.lang.String getDataString(",
            "android.content.Intent: android.net.Uri getData(", "android.content.Intent: java.lang.String getType("};

    public static boolean is_getIntent_unit(Unit u) {
//		方法解释：判断unit中调用getIntent方法获取intent
        if (!(u instanceof JAssignStmt)) return false;
        return u.toString().contains("android.content.Intent getIntent()>()");
    }
    public static boolean is_getBasicAttr_unit(Unit u) {
//        判断当前unit是否调用获取基本属性的方法
        if (!(u instanceof JAssignStmt))
            return false;
        for (int i = 0; i < getAttribute_methods.length; i++) {
            if (u.toString().contains(getAttribute_methods[i]))
                return true;
        }
        return false;
    }

    // get intent extra method
    public static final String[] get_intnet_extra_methods = {"getDoubleArrayExtra", "getDoubleExtra",
            "getFloatArrayExtra", "getFloatExtra", "getIntArrayExtra", "getIntExtra", "getIntegerArrayListExtra",
            "getLongArrayExtra", "getLongExtra", "getParcelableArrayExtra", "getParcelableArrayListExtra",
            "getParcelableExtra", "getSerializableExtra", "getShortExtra", "getShortArrayExtra", "getStringArrayExtra",
            "getStringArrayListExtra", "getStringExtra", "getBooleanArrayExtra", "getBooleanExtra", "getByteArrayExtra",
            "getByteExtra", "getCharArrayExtra", "getCharExtra", "getCharSequenceArrayExtra",
            "getCharSequenceArrayListExtra", "getCharSequenceExtra", "getBundleExtra", "getExtras",
            "android.os.Bundle: java.lang.Object get"};

    // extra intent method types
    public static final String[] intent_extra_method_types = {"doubleArray", "double", "floatArray", "float",
            "intArray", "int", "IntegerArrayList", "longArray", "long", "ParcelableArray", "ParcelableArrayList",
            "Parcelable", "Serializable", "short", "shortArray", "StringArray", "StringArrayList", "String",
            "booleanArray", "boolean", "byteArray", "byte", "charArray", "char", "CharSequenceArray",
            "CharSequenceArrayList", "CharSequence", "Bundle", "Extras", "String"};





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
