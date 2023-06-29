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

    public static final String[] extra_basic = {
            "<android.content.Intent: double getDoubleExtra(",
            "<android.content.Intent: float getFloatExtra(",
            "<android.content.Intent: int getIntExtra(",
            "<android.content.Intent: long getLongExtra(",
            "<android.content.Intent: short getShortExtra(",
            "<android.content.Intent: java.lang.String getStringExtra(",
            "<android.content.Intent: boolean getBooleanExtra(",
            "<android.content.Intent: byte getByteExtra(",
            "<android.content.Intent: char getCharExtra(",
            "<android.content.Intent: java.lang.CharSequence getCharSequenceExtra("
    };

    public static boolean is_get_extra_basic(Unit unit) {
        if (!(unit instanceof JAssignStmt))
            return false;
        for(String s : extra_basic){
            if(unit.toString().contains(s))return true;
        }
        return false;
    }

    public static String get_actual_extra_type(Unit unit) {
        String u = unit.toString();

        //基本数据类型
        if(u.contains("<android.content.Intent: double getDoubleExtra(") || u.contains("<android.content.Intent: double[] getDoubleArrayExtra(")) return "double";
        if(u.contains("<android.content.Intent: float getFloatExtra(") || u.contains("<android.content.Intent: float[] getFloatArrayExtra(")) return "float";
        if(u.contains("<android.content.Intent: int getIntExtra(") || u.contains("<android.content.Intent: int[] getIntArrayExtra(") || u.contains("<android.content.Intent: java.util.ArrayList getIntegerArrayListExtra(")) return "int";
        if(u.contains("<android.content.Intent: long getLongExtra(") || u.contains("<android.content.Intent: long[] getLongArrayExtra(")) return "long";
        if(u.contains("<android.content.Intent: short getShortExtra(") || u.contains("<android.content.Intent: short[] getShortArrayExtra(")) return "short";
        if(u.contains("<android.content.Intent: java.lang.String getStringExtra(") || u.contains("<android.content.Intent: java.lang.String[] getStringArrayExtra(") || u.contains("<android.content.Intent: java.util.ArrayList getStringArrayListExtra(")) return "String";
        if(u.contains("<android.content.Intent: boolean getBooleanExtra(") || u.contains("<android.content.Intent: boolean[] getBooleanArrayExtra(")) return "boolean";
        if(u.contains("<android.content.Intent: byte getByteExtra(") || u.contains("<android.content.Intent: byte[] getByteArrayExtra(")) return "byte";
        if(u.contains("<android.content.Intent: char getCharExtra(") || u.contains("<android.content.Intent: char[] getCharArrayExtra(")) return "char";
        if(u.contains("<android.content.Intent: java.lang.CharSequence getCharSequenceExtra(") || u.contains("<android.content.Intent: java.lang.CharSequence[] getCharSequenceArrayExtra(") || u.contains("<android.content.Intent: java.util.ArrayList getCharSequenceArrayListExtra(")) return "charSequence";

        return null;
    }
    public static final String[] extra_basicArray = {
            "<android.content.Intent: double[] getDoubleArrayExtra(",
            "<android.content.Intent: float[] getFloatArrayExtra(",
            "<android.content.Intent: int[] getIntArrayExtra(",
            "<android.content.Intent: long[] getLongArrayExtra(",
            "<android.content.Intent: short[] getShortArrayExtra(",
            "<android.content.Intent: java.lang.String[] getStringArrayExtra(",
            "<android.content.Intent: boolean[] getBooleanArrayExtra(",
            "<android.content.Intent: byte[] getByteArrayExtra(",
            "<android.content.Intent: char[] getCharArrayExtra(",
            "<android.content.Intent: java.lang.CharSequence[] getCharSequenceArrayExtra("
    };
    public static boolean is_get_extra_basicArray(Unit unit) {
        if (!(unit instanceof JAssignStmt))
            return false;
        for(String s : extra_basicArray){
            if(unit.toString().contains(s))return true;
        }
        return false;
    }
    public static final String[] extra_basicArrayList = {
            "<android.content.Intent: java.util.ArrayList getStringArrayListExtra(",
            "<android.content.Intent: java.util.ArrayList getCharSequenceArrayListExtra(",
            "<android.content.Intent: java.util.ArrayList getIntegerArrayListExtra("
    };
    public static boolean is_get_extra_basicArrayList(Unit unit) {
        if (!(unit instanceof JAssignStmt))
            return false;
        for(String s : extra_basicArrayList){
            if(unit.toString().contains(s))return true;
        }
        return false;
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

    public static String getActualBasicAttr(Unit unit) {

        if(unit.toString().contains("android.content.Intent: java.lang.String getAction(")) return "action";
        if(unit.toString().contains("android.content.Intent: java.util.Set getCategories(")) return "category";
        if(unit.toString().contains("android.content.Intent: java.lang.String getDataString(")) return "data_string";
        if(unit.toString().contains("android.content.Intent: android.net.Uri getData(")) return "data_uri";
        if(unit.toString().contains("android.content.Intent: java.lang.String getType(")) return "type";

        return null;
    }



}
