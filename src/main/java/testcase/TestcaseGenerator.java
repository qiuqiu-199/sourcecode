package testcase;

import model.AppModel;
import model.ICCMsg;
import utils.ConstantUtils;
import utils.Global;
import utils.IOUtils;
import utils.Utils;

import java.io.File;
import java.io.FileInputStream;
import java.util.*;

import static com.sun.org.apache.xalan.internal.lib.ExsltStrings.split;

/**
 * @ClassName: TestcaseGenerator
 * @Author: qiuzhiq
 * @Date: 2023/5/13 20:17
 * @Description:
 */

public class TestcaseGenerator {
    public int appId;
    public String apkTC;
    public Map<String, Set<ICCMsg>> act2ReceivedICCMap;

    public TestcaseGenerator(Map<String, Set<ICCMsg>> act2ReceivedICCMap) {
        this.act2ReceivedICCMap = act2ReceivedICCMap;
        this.appId = 0;
        this.apkTC = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + Global.v().getAppModel().appName + File.separator + "testCase.iccmsg";

    }


    public void generateTestApp() {
        //项目名，也就是apk名
        String pro_name = Global.v().getAppModel().appName;
        //生成安卓项目的目录  Result_testGen\testcases\K9Mail\generatedApp\K9Mail
        String pro_path = "Result_testGen\\testcases\\" + pro_name + File.separator + ConstantUtils.GENERATEDAPP1 + pro_name;
        //创建安卓项目
        createAndroidProject(Global.v().getAppModel().pkgName, pro_path, Utils.getProjectName(Global.v().getAppModel().appName));
        //安卓项目的java文件所在目录，也就是src/qiu/com/fsck/k9/
        ConstantUtils.SRCFOLDER = "src" + File.separator + ConstantUtils.APKFLAG.replace(".", File.separator) + Global.v().getAppModel().pkgName.replace(".", File.separator) + File.separator;

        //复制三个模板进项目中
        copySerFiles(pro_path);


        for (String actName : act2ReceivedICCMap.keySet()) {
            Set<ICCMsg> ICCs = new HashSet<>(act2ReceivedICCMap.get(actName));
            handleICCMsg(ICCs, actName);
        }

        generateManifest();

        buildProject();
    }

    public void buildProject() {
        String pro_name = Global.v().getAppModel().appName;
        String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + Global.v().getAppModel().appName + File.separator;
        String projectPath = folder + ConstantUtils.GENERATEDAPP1 + pro_name;
        try {
            buildApp(projectPath);
        } catch (Exception e) {
            e.printStackTrace();
        }
        moveGeratedAPK(projectPath);// move app from bin to projectPath


//		IOUtils.delFolder(ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + appModel.appName + File.separator+ apkProjectFolder );

    }

    public void moveGeratedAPK(String projectPath) {
        String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + Global.v().getAppModel().appName + File.separator + "apkTestcases" + File.separator;
        File f = new File(folder);
        f.mkdirs();

        String oriPath = projectPath + File.separator + "bin" + File.separator + Utils.getProjectName(Global.v().getAppModel().appName)
                + "-debug.apk";
        String desPath = folder + "test.apk";
        Utils.moveFile(oriPath, desPath);
    }

    public static void buildApp(String projectPath) {
        System.out.println("ant debug -buildfile " + projectPath + "/build.xml");
        Utils.exec("ant debug -buildfile " + projectPath + "/build.xml");
    }

    public int gen_manifest_file(String manifest_path) {
        ArrayList<String> lines = Utils.getList(manifest_path);
        if (lines == null) return -1;
        IOUtils.write_to_file(manifest_path, "", false);
        String content = "";
        for (String line : lines) {
            if (line.contains("@string/app_name"))
                line = line.replace("@string/app_name", Global.v().getAppModel().appName + "_Launcher");
            //TODO 关于应用的permission待处理
//            if (line.contains("</manifest>")) {
//                if (Global.v().getAppModel().permission.length() != 0)
//                    content += "\t<uses-permission android:name=\"" + Global.v().getAppModel().permission + "\"/>\n";

            //TODO manifest文件解析获取activity的permission。

//                for ( ActivityModel ea : appModel.ops.getActivityMap().values()) {
//                    if (ea.getPermission() != null && ea.getPermission().length()>0) {
//                        content += "\t<uses-permission android:name=\"" + ea.getPermission() + "\"/>\n";
//                    }
//                }
//            }
            if (line.contains("android:versionName=\"1.0\">"))
                line += "<uses-sdk android:targetSdkVersion=\"23\" android:minSdkVersion=\"17\"/>";

            if (line.contains("</application>")) {
//                content = "<uses-sdk android:targetSdkVersion=\"23\" android:minSdkVersion=\"16\"/>\n" + content;
                for (int i = 1; i <= appId; i++) {
                    content += "\t\t<activity android:name=\"." + ConstantUtils.ACTIVITY_ + i + "\" android:exported=\"true\"/>\n";
                }
            }
            content += line;
        }
        IOUtils.write_to_file(manifest_path, content + "\n", true);
        return 0;
    }

    public void generateManifest() {
        String pro_name = Global.v().getAppModel().appName;
        String folder = ConstantUtils.RESULTFOLDER + ConstantUtils.TESTCASEFOLDER + Global.v().getAppModel().appName + File.separator;
        String projectPath = folder + ConstantUtils.GENERATEDAPP1 + pro_name;

        int flag = gen_manifest_file(projectPath + File.separator + ConstantUtils.MANIFEST);
        if (flag < 0) return;
    }

    private void handleICCMsg(Set<ICCMsg> ICCs, String actName) {
        for (ICCMsg msg : ICCs) {
            Set<String> ACDTStr = new HashSet<>();
            String str = "";

            //提取action属性
            if (msg.action != null && !msg.action.equals("") && !msg.action.equals("\"\""))
                str += msg.action + ";;";
            else str += "null;;";

            //提取category属性
            if (msg.category != null && msg.category.size() > 0 && !msg.category.toString().equals("[]")) {
                for (String c : msg.category) {
                    str += c;
                    break;
                }
            } else str += "null";
            str += ";;";

            //提取data属性,//data属性为空则提取path、port、schme、host属性
            if (msg.data != null && !msg.data.equals("") && !msg.data.equals("\"\""))
                str += msg.data;
            else if (msg.path != null || msg.port != null || msg.scheme != null || msg.host != null)
                str += "\"" + Utils.refineString(msg.scheme) + "://" + Utils.refineString(msg.host) + ":" +
                        Utils.refineString(msg.port) + "/" + Utils.refineString(msg.path) + "\"";
            else str += "null";
            str += ";;";

            //提取type属性
            if (msg.type != null && !msg.type.equals("") && !msg.type.equals("\"\""))
                str += msg.type + ";;";
            else str += "null;;";

            //将notEmpty改为“？”
            str = str.replace("notEmpty","?");

            //提取得到的基本属性加入ACDTStr中
            //到这一步，ACDTStr里只有一个字符串，分别表示acdt四种基本属性的值，中间用两个分号隔开
            ACDTStr.add(str);

            //提取extras，举例：extras="boolean-no_threading,byte[]-search_bytes"
            if (msg.extras != null) {
                Set<String> keyHistory = new HashSet<>();  //用来排掉一些变量名相同的额外属性
                for (String extra : msg.extras) {
                    if(extra.contains("-null"))
                        continue;  //避免activity接收的extras中有这样的：Serializable-null，否则java文件会出现MySerializable null = new MySerializable();
                    //bundle类型额外处理,extra = "Bundle-app_data->(String-com.fsck.k9.search_account,String-com.fsck.k9.search_folder)"
                    //处理后ACDTStr应该有这样的效果：null;;null;;null;;null;;Extras->ExtrasObj->ExtrasObj,(,String->com.ichi2.anki.LoadPronounciationActivity.extra.source->abcde,),
                    if(extra.contains("Bundle")){
                        String[] split = extra.split("->");
                        String bundleName =split[0].split("-")[1];
                        //基本属性传入两个ACDTStr中
                        Set<String> ACDTStr1 = new HashSet<String>(ACDTStr);
//                        Set<String> ACDTStr2 = new HashSet<String>(ACDTStr);
                        handleExtraAccordingToTypeNormal("Bundle",bundleName,ACDTStr1);
//                        handleExtraAccordingToTypeAbnormal("Bundle",bundleName,ACDTStr2);

                        ACDTStr.clear();
                        ACDTStr.addAll(ACDTStr1);
//                        ACDTStr.addAll(ACDTStr2);
                        //加左括号
                        Set<String> copy = new HashSet<>(ACDTStr);
                        for (String acdt : copy) {
                            ACDTStr.add(acdt +"(,");
                            ACDTStr.remove(acdt);
                        }

                        Set<String> ACDTStr3 = new HashSet<String>(ACDTStr);
                        Set<String> ACDTStr4 = new HashSet<String>(ACDTStr);
                        String[] kvs = split[1].split(",");
                        for(String kv : kvs){
                            kv = kv.replace("(","").replace(")","");
                            if(kv.contains("-")){
                                String[] k_v = kv.split("-");
                                handleExtraAccordingToTypeNormal(k_v[0],k_v[1],ACDTStr3);
//                                handleExtraAccordingToTypeAbnormal(k_v[0],k_v[1],ACDTStr4);
                            }
                        }
                        ACDTStr.clear();
                        ACDTStr.addAll(ACDTStr3);
                        ACDTStr.addAll(ACDTStr4);
                        Set<String> copy1 = new HashSet<String>(ACDTStr);
                        for (String acdt : copy1) {
                            ACDTStr.add(acdt +"),");
                            ACDTStr.remove(acdt);
                        }
                    }else if (!extra.equals("") && extra.contains("-")) {
                        String[] extra_pair = extra.split("-");
                        String extra_type = extra_pair[0];
                        if(keyHistory.contains(extra_pair[1])) continue;
                        String extra_key = extra_pair[1];
                        extra_key = extra_key.replace(")",""); //给一些带了左括号的去掉左括号

                        //基本属性传入两个ACDTStr中
                        Set<String> ACDTStr1 = new HashSet<String>(ACDTStr);
//                        Set<String> ACDTStr2 = new HashSet<String>(ACDTStr);

                        //根据类型正常与否处理额外参数并传入不同的Set<String>中
                        handleExtraAccordingToTypeNormal(extra_type, extra_key, ACDTStr1);
//                        handleExtraAccordingToTypeAbnormal(extra_type, extra_key, ACDTStr2);

                        ACDTStr.clear();
                        ACDTStr.addAll(ACDTStr1);
//                        ACDTStr.addAll(ACDTStr2);

                        keyHistory.add(extra_key);
                    }
                }
            }

            //对变量名去重
            //举例：String->date->abcde,Parcelable->target->ParcelableObj,int->action->Integer.MIN_VALUE,Serializable->routine_id->SerializableObj,Bundle->alarm_params->BundleObj,(,Parcelable->alarm_params->ParcelableObj,),
            Set<String> diffSet = new HashSet<>();
            Map<String,String> old2new = new HashMap<>();
            for (String acdt : ACDTStr) {
                String[] s = acdt.split(";;");
                if(s.length <= 4) continue;
                String[] extras = s[4].split(",");
                for (String extra : extras) {
                    if(extra.equals("(") || extra.equals(")")) continue;
                    String type = extra.split("->")[0];
                    String value = extra.split("->")[2];
                    String variable = extra.split("->")[1];
                    if(!diffSet.contains(variable)){
                        diffSet.add(variable);
                    }else {
                        variable = variable + 1;
                        String extraNew = type +"->"+ variable+"->"+value;
                        String acdtNew = acdt.replace(extra,extraNew);
                        old2new.put(acdt,acdtNew);
                    }
                }
                diffSet = new HashSet<>();
            }
            for (String old : old2new.keySet()) {
                ACDTStr.remove(old);
            }
            ACDTStr.addAll(old2new.values());

            //TODO 有时候从componentInfo解析得到的extras太多了会导致ACDT爆炸，取30个
            if (ACDTStr.size() > 30) {
                HashSet<String> newSet = new HashSet<String>();
                Object[] obj = ACDTStr.toArray();
                newSet.add((String) obj[30]);
                ACDTStr = newSet;
            }

            for (String s : ACDTStr) {

                generateJavaFile(s, actName);
            }

//            Iterator<String> it = ACDTStr.iterator();
//            if(it.hasNext()){
//                generateJavaFile(it.next(), actName);
//            }

            Global.v().getAppModel().countTC_use += appId;
        }
    }

    private void generateJavaFile(String acdt, String actName) {
        actName = actName.replace("$", "_dollar_");
//        String pro_name = getProjectName(appModel.appName);
        String pro_name = Global.v().getAppModel().appName;
        String projectPath = "Result_testGen\\testcases\\" + pro_name + File.separator + ConstantUtils.GENERATEDAPP1 + pro_name;

        gen_java_file(projectPath + File.separator + ConstantUtils.SRCFOLDER + File.separator + ConstantUtils.ACTIVITY_,
                null, actName, acdt);

    }

    //参数：
    //java_file_path = Result_testGen\testcases\K9Mail\generatedApp\K9Mail\src\fax\com\fsck\k9\\Activity_
    //一条icc
    //组件名
    //acdt，具体形式见.iccmsg文件里组件后面那一串，举例：160	com.fsck.k9.activity.Search	"android.intent.action.VIEW";;null;;"?";;null;;String->folder->abcde,
    public void gen_java_file(String java_file_path, ICCMsg icc, String clsname, String acdt) {
        HashSet<String> decSet = new HashSet<String>();

        String java_template_file_path = java_file_path + ".java";  //模板文件位置
        java_file_path = java_file_path + (++appId) + ".java";  //每个activity的位置
        Utils.copyFile(java_template_file_path, java_file_path); //复制一遍先

        //将每条icc的内容追加到testCase.iccmsg文件中
        IOUtils.write_to_file(apkTC, appId + "\t" + clsname + "\t" + acdt + "\n", true);

        ArrayList<String> lines = Utils.getList(java_file_path);  //保存下原文件的内容
        IOUtils.write_to_file(java_file_path, "", false); //清空文件
        String content = "";
        for (String line : lines) {
            if (line.contains("public class Activity_ extends Activity"))
                line = "public class Activity_" + appId + " extends Activity";

            IOUtils.write_to_file(java_file_path, line + "\n", true);
            //add after statement
            if (line.contains("import android.os.Bundle;")) {
                content = "import android.content.Intent;\n";
                content += "import java.util.List;\n";
                content += "import android.content.ComponentName;\n";
                content += "import android.os.Parcelable;\n";
                content += "import java.util.ArrayList;\n";
                content += "import android.net.Uri;\n";
                content += "import android.view.View;\n";
                content += "import android.view.View.OnClickListener;\n";
                content += "import android.widget.Button;\n";
                IOUtils.write_to_file(java_file_path, content, true);
            }

            //插入launch()方法，用来根据icc信息设置startActivity()方法
            if (line.equals("{")) {
                content = "\tpublic void launch(){\n";
                content += "\t\tIntent intent = new Intent();\n";
                content += "\t\tintent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);\n";
                content += "\t\tComponentName cn=new ComponentName(\"" + Global.v().getAppModel().pkgName + "\",\"" + clsname.replace("_dollar_", "$")
                        + "\");\n";
                content += "\t\tintent.setComponent(cn);\n";

                //基本属性赋值
                String[] acdtVals = acdt.split(";;");
                if (!acdtVals[0].equals("null")) {
                    if (acdtVals[0].contains("\\") && !acdtVals[0].contains("\\\\"))
                        acdtVals[0] = acdtVals[0].replace("\\", "");
                    content += "\t\tintent.setAction(" + strRefine(acdtVals[0]) + ");\n";
                }
                if (!acdtVals[1].equals("null"))
                    content += "\t\tintent.addCategory(" + strRefine(acdtVals[1]) + ");\n";
                if (!acdtVals[2].equals("null"))
                    content += "\t\tintent.setData(Uri.parse(" + strRefine(acdtVals[2]) + "));\n";
                if (!acdtVals[3].equals("null"))
                    content += "\t\tintent.setType(" + strRefine(acdtVals[3]) + ");\n";

                IOUtils.write_to_file(java_file_path, content, true);

                // new Bundle must show up before its use
                // generate extra data

                //额外属性赋值
                if (acdt.split(";;").length == 5) {
                    String extras = acdt.split(";;")[4];
                    generateExtrasInJava(decSet, extras, java_file_path, "Intent->intent");
                }
                content = "\t\tstartActivity(intent);\n";
                content += "\t\t//" + acdt + "\n";
                if (icc != null)
                    content += "\t\t//" + icc.extras + "\n";
                content += "\t}\n";
                IOUtils.write_to_file(java_file_path, content, true);
            }

            //在setContentView()方法后面插入button和点击监听事件以启动activity
            if (line.contains("setContentView(R.layout.main);")) {
                IOUtils.write_to_file(java_file_path, "\t\tlaunch();\n", true);

                content = "\t\tButton button1=(Button)findViewById(R.id.button1);\n";
                content += "\t\tbutton1.setOnClickListener(new OnClickListener() {\n";
                content += "\t\t\t@Override\n";
                content += "\t\t\tpublic void onClick(View v) {\n";
                content += "\t\t\t\tlaunch();\n";
                content += "\t\t}});\n";

                IOUtils.write_to_file(java_file_path, content, true);
            }
        }
    }

    private void generateExtrasInJava(HashSet<String> decSet, String extras, String java_file_path, String objPair) {
        if (objPair.equals("")) return;
        String objName = Utils.refineString(objPair.split("->")[1]);
        Stack<String> extraSt = new Stack<String>();
        String[] extra_pairs = extras.split(",");
        for (String extra_pair : extra_pairs) {
            if (extra_pair.equals(")")) {
                String todoExtras = "";
                String top = extraSt.pop();
                while (!top.equals("(")) {
                    todoExtras = top + "," + todoExtras;
                    top = extraSt.pop();
                }
                String newObjPair = "";
                for (int i = extraSt.size() - 1; i >= 0; i--) {
                    if (extraSt.get(i).contains("Bundle") || extraSt.get(i).contains("Extras")) {
                        String ss[] = extraSt.get(i).split("->");
                        if (ss.length > 1) {
                            newObjPair = extraSt.get(i); //Utils.refineString(ss[1]);
                            break;
                        }
                    }
                }
                generateExtrasInJava(decSet, todoExtras, java_file_path, newObjPair);
            } else {
                extraSt.push(extra_pair);
            }
        }
        while (!extraSt.empty()) {
            String topEd = extraSt.pop();
            //the container, e.g., Bundle b (int a);  Bundle b = new Bundle();
            objectDeclaration(decSet, java_file_path, objPair);
            //the current obj, e.g, Parceable p;
            if (!topEd.contains("Bundle") && !topEd.contains("Extras"))
                objectDeclaration(decSet, java_file_path, topEd);
            handleSingleExtraData(topEd, java_file_path, objName);
        }
    }

    private void objectDeclaration(HashSet<String> decSet, String java_file_path, String extra_pair) {
        if (!extra_pair.contains("->")) return;
        String[] ss = extra_pair.split("->");
        String extra_type = ss[0];
        // decSet
        String content = "";
        if (extra_type.equals("Extras")) {
            content = "\t\tBundle ExtrasObj = new Bundle();\n";
            if (!decSet.contains(content)) {
                decSet.add(content);
            } else {
                content = "\t\tExtrasObj = new Bundle();\n";
            }
            IOUtils.write_to_file(java_file_path, content, true);
        } else {
            String extra_key = Utils.refineString(ss[1]);
            if (extra_key.equals("intent")) extra_key = "intent1";
            if (extra_key.equals(""))
                return;
            extra_key = extra_key.replace(".", "_dot_");  //这三条处理用来模糊变量名，因为有些key是apk自带的常量
            extra_key = extra_key.replace("-", "_line_");
            extra_key = extra_key.replace(":", "_maohao_");
            if (extra_type.equals("Bundle")) {
                content = "\t\tBundle " + extra_key + " = new Bundle();\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new Bundle();\n";
                }
            } else if (extra_type.equals("Serializable")) {
                content = "\t\tMySerializable " + extra_key + " = new MySerializable();\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new MySerializable();\n";
                }
            } else if (extra_type.equals("Parcelable")) {
                content = "\t\tParcelable " + extra_key + " = new MyParcelable();\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new MyParcelable();\n";
                }

            } else if (extra_type.equals("ParcelableArray")) {
                content = "\t\tParcelable[] " + extra_key + " = new MyParcelable[1];\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new MyParcelable[1];\n";
                }
                content += "\t\t" + extra_key + "[0] = new MyParcelable();\n";
            } else if (extra_type.equals("ParcelableArrayList")) {
                content = "\t\tArrayList  " + extra_key + " = new ArrayList<MyParcelable>();\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new ArrayList<MyParcelable>();\n";
                }
                content += "\t\t" + extra_key + ".add(new MyParcelable());\n";
            } else if (extra_type.contains("ArrayList")) {
                String type = extra_type.replace("ArrayList", "");
                if(type.equals("")) type = "String";
                content = "\t\tArrayList<" + type + "> " + extra_key + " = new ArrayList<" + type
                        + ">();\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new ArrayList<" + type + ">();\n";
                }
            } else if (extra_type.contains("Array")) {
                String type = extra_type.replace("Array", "");
                content = "\t\t" + type + "[] " + extra_key + " = new " + type + "[1];\n";
                if (!decSet.contains(content)) {
                    decSet.add(content);
                } else {
                    content = "\t\t" + extra_key + " = new " + type + "[1];\n";
                }
            }
            IOUtils.write_to_file(java_file_path, content, true);
        }
    }

    public void handleSingleExtraData(String extra_pair, String java_file_path, String objName) {
        objName = objName.replace(".", "_dot_");
        objName = objName.replace("-", "_line_");
        objName = objName.replace(":", "_maohao_");
        if (!extra_pair.contains("->")) return;
        String[] ss = extra_pair.split("->");
        String extra_type = ss[0];
        String content = "";
        if (extra_type.equals("Extras")) {
            content += "\t\tgetIntent().putExtras(ExtrasObj);\n";
        } else {
            String extra_key = Utils.refineString(ss[1]);
            String extra_value = ss[2];
            // there is something wrong when param contains "."
            extra_key = extra_key.replace(".", "_dot_");
            extra_key = extra_key.replace("-", "_line_");
            extra_key = extra_key.replace(":", "_maohao_");
            // bundle api different with intent api
            String putAPI = getPutAPI(extra_type, objName);

            if (!extra_value.equals("null")) {
                if (extra_type.contains("String") || extra_type.contains("CharSequence") || extra_type.equals("Object"))
                    extra_value = "\"" + extra_value + "\"";
                else if (extra_type.contains("Char") || extra_type.contains("char"))
                    extra_value = "'" + extra_value + "'";

                if (!ConstantUtils.isStringType(extra_type)) {
                    extra_value = extra_key;
                } else {
                    if (extra_type.contains("ArrayList")) {
                        content += "\t\t" + extra_key + ".add(" + extra_value + ");\n";
                        extra_value = extra_key;
                    } else if (extra_type.contains("Array")) {
                        content += "\t\t" + extra_key + "[0] = " + extra_value + ";\n";
                        extra_value = extra_key;
                    }
                }
                //TODO 关于bundle处理，后面再改5.24，6.3处理完成
                if (extra_type.equals("Bundle"))
                    extra_value = "\"" + extra_value + "\"";
                content += "\t\t" + objName + "." + putAPI + "(\"" + extra_key.replace("_dot_", ".").replace("_maohao_", ":").replace("_line_", "-")
                        + "\", " + extra_value + ");\n";
            }
        }
        IOUtils.write_to_file(java_file_path, content, true);
    }

    public String getPutAPI(String extra_type, String objName) {
        String putAPI = null;
        if (ConstantUtils.isArrayListType(extra_type)) {
            String suffix = "";
            if (objName.equals("intent")) suffix = "Extra";
            if (extra_type.equals("IntegerArrayList"))
                putAPI = "putIntegerArrayList" + suffix;
            else if (extra_type.equals("ParcelableArrayList"))
                putAPI = "putParcelableArrayList" + suffix;
            else if (extra_type.equals("StringArrayList"))
                putAPI = "putStringArrayList" + suffix;
        } else {
            if (objName.equals("intent"))
                putAPI = "putExtra";
            else
                putAPI = "put" + extra_type.substring(0, 1).toUpperCase() + extra_type.substring(1);
        }

        return putAPI;
    }

    private String strRefine(String acdt) {
//        String refined = acdt.substring(1, acdt.length()-1);
//        refined = .replace("\"", "");

        return "\"" + acdt + "\"";
    }

    private void handleExtraAccordingToTypeNormal(String extra_type, String extra_key, Set<String> ACDTStr) {
        Set<String> copy = new HashSet<String>(ACDTStr);
        for (String acdt : copy) {
            Random r = new Random();
            int n = r.nextInt(2);
            if (extra_type.contains("Int") || extra_type.contains("int")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0 + ",");
            } else if (extra_type.contains("Float") || extra_type.contains("float")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0.0 + ",");
            } else if (extra_type.contains("Double") || extra_type.contains("double")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0.0 + ",");
            } else if (extra_type.contains("Short") || extra_type.contains("short")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0.0 + ",");
            } else if (extra_type.contains("Long") || extra_type.contains("long")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0 + ",");
            } else if (extra_type.contains("Byte") || extra_type.contains("byte")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + 0 + ",");
            } else if (extra_type.contains("String") || extra_type.contains("CharSequence")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "abcde" + ",");
            } else if (extra_type.contains("Char") || extra_type.contains("char")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "a" + ",");
            } else if (extra_type.contains("Boolean") || extra_type.contains("boolean")) {
                if (n == 1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "true" + ",");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "false" + ",");
            } else {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + extra_type + "Obj" + ",");
            }
            ACDTStr.remove(acdt);
            if (ACDTStr.size() > 500)
                return;
        }
    }

    public void handleExtraAccordingToTypeAbnormal(String extra_type, String extra_key, Set<String> ACDTStr) {
        Set<String> copy = new HashSet<String>(ACDTStr);
        Random r = new Random();
        int n = r.nextInt(2);
        for (String acdt : copy) {
            if (extra_type.contains("Int") || extra_type.contains("int")) {
                if (n == 0) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Integer.MAX_VALUE,");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Integer.MIN_VALUE,");
            } else if (extra_type.contains("Float") || extra_type.contains("float")) {
                if (n == 1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Float.MAX_VALUE,");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Float.MIN_VALUE,");
            } else if (extra_type.contains("Double") || extra_type.contains("double")) {
                if (n == 0) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Double.MAX_VALUE,");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Double.MIN_VALUE,");
            } else if (extra_type.contains("Short") || extra_type.contains("short")) {
                if (n == 1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Short.MAX_VALUE,");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Short.MIN_VALUE,");
            } else if (extra_type.contains("Long") || extra_type.contains("long")) {
                if (n == 0) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Long.MAX_VALUE,");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Long.MIN_VALUE,");
            } else if (extra_type.contains("Byte") || extra_type.contains("byte")) {
                if (n == 1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Byte.MAX_VALUE,");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->Byte.MIN_VALUE,");
            } else if (extra_type.contains("String") || extra_type.contains("CharSequence")) {
                if (n == 1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "!@#$%^ds:+_" + ",");
                else
                    ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "999999999999999999999999999999999999999999999999999" + ",");
            } else if (extra_type.contains("Char") || extra_type.contains("char")) {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "\\\\" + ",");
            } else if (extra_type.contains("Boolean") || extra_type.contains("boolean")) {
                if (n == 1) ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "true" + ",");
                else ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + "false" + ",");
            } else {
                ACDTStr.add(acdt + extra_type + "->" + extra_key + "->" + extra_type + "Obj" + ",");
            }
            ACDTStr.remove(acdt);
            if (ACDTStr.size() > 500)
                return;
        }
    }

    private void copySerFiles(String pro_path) {
        //Java文件所在位置 Result_testGen\testcase\K9Mail\generatedApp\K9Mail\src\qiu\com\fsck\k9\
        String java_file_path = pro_path + File.separator + ConstantUtils.SRCFOLDER;
        Utils.createFolder(java_file_path);

        //存template\MySerializable.java文件到
        //templateF = template\MySerializable.java
        String templateF = "template\\MySerializable.java";
        //desF = Result_testGen\testcase\K9Mail\generatedApp\K9Mail\src\fax\com\fsck\k9\MySerializable.java
        String desF = java_file_path + "MySerializable.java";

        //按行获取templateF路径的文件的内容
        ArrayList<String> lines = Utils.getList(templateF);
        IOUtils.write_to_file(desF, "package " + ConstantUtils.APKFLAG + Global.v().getAppModel().pkgName + ";\n", false);
        //将MySerializable.java的内容存入desF指定的路径中
        for (String line : lines)
            IOUtils.write_to_file(desF, line + "\n", true);


        //这一步存MyParcelable.java文件
        templateF = "template\\MyParcelable.java";
        desF = java_file_path + "MyParcelable.java";
        ArrayList<String> lines2 = Utils.getList(templateF);
        IOUtils.write_to_file(desF, "package " + ConstantUtils.APKFLAG + Global.v().getAppModel().pkgName + ";\n", false);
        for (String line : lines2)
            IOUtils.write_to_file(desF, line + "\n", true);


        //这一步将template\main.xml存到testcase\K9Mail\generatedApp\K9Mail\res\layout\main.xml
        String layout_path = pro_path + File.separator + "res\\layout\\";
        Utils.createFolder(layout_path);
        templateF = "template\\main.xml";
        desF = layout_path + "main.xml";

        ArrayList<String> lines3 = Utils.getList(templateF);
        IOUtils.write_to_file(desF, "", false);
        for (String line : lines3)
            IOUtils.write_to_file(desF, line + "\n", true);
    }

    public void createAndroidProject(String oldpkg, String pro_path, String pro_name) {


        File file = new File(pro_path);
        file.mkdirs();

        //android create project --name K9Mail --target android-23 --path Result_testGen\testcase\K9Mail\generatedApp\K9Mail --package qiu.com.fsck.k9 --activity Activity_
        Utils.exec("android create project --name " + pro_name + " --target " + ConstantUtils.ANDROIDTARGET
                + " --path " + pro_path + " --package " + ConstantUtils.APKFLAG + oldpkg + " --activity "
                + ConstantUtils.ACTIVITY_);
        System.out.println("android create project --name " + pro_name + " --target " + ConstantUtils.ANDROIDTARGET
                + " --path " + pro_path + " --package " + ConstantUtils.APKFLAG + oldpkg + " --activity "
                + ConstantUtils.ACTIVITY_);


    }

}
