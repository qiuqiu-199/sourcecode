package instrument;

import soot.*;
import soot.options.Options;
import utils.ConstantUtils;
import utils.Global;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/**
 * @ClassName: instrument.Instrumentor
 * @Author: qiuzhiq
 * @Date: 2023/6/13 15:08
 * @Description:
 */

public class Instrumentor {

    public Instrumentor() {
    }

    public void instrument() {
        //初始化
        sootSetting();

        //加入插桩模块
//        Transform t0 = new Transform("jtp.bt", new BodyTransformer() {
//            @Override
//            protected void internalTransform(Body body, String s, Map<String, String> map) {
//                if (Global.v().getAppModel().activityMap.containsKey(body.getMethod().getDeclaringClass().toString())){
//                    body.getMethod().setActiveBody(body);
//                }
//            }
//        });
//        PackManager.v().getPack("jtp").add(t0);

        getACTD_Transformer getACTD_transformer = new getACTD_Transformer();
        Transform t1 = new Transform("jtp.qIns", getACTD_transformer);
        PackManager.v().getPack("jtp").add(t1);


        //运行
        PackManager.v().runPacks();
        PackManager.v().writeOutput();

        //测试，获取每个activity的方法
        for (String act_name : ConstantUtils.map.keySet()) {
            System.out.println("act_name = " + act_name);
            Set<String> strings = ConstantUtils.map.get(act_name);
            for (String string : strings) {
                System.out.println("\t\t" + string);
            }
        }
//        System.out.println("总共的activity数：" + ConstantUtils.map.keySet().size());


    }

    private static void sootSetting() {
        soot.G.reset();
        String androidJar = "C:\\Users\\ql\\AppData\\Local\\Android\\Sdk\\platforms";
        Options.v().set_android_jars(androidJar);
        Options.v().set_soot_classpath(androidJar);
        Options.v().set_process_dir(Collections.singletonList("apk\\app-release_nolog_nosign.apk")); //设置目标apk
        Options.v().set_prepend_classpath(true);  //必选
        Options.v().set_process_multiple_dex(true);  //必选
        Options.v().set_output_format(Options.output_format_dex);  //设置输出格式
        Options.v().set_output_dir("sootOutput");  //输出目录
        Options.v().set_src_prec(Options.src_prec_apk);  //必选
        Options.v().set_allow_phantom_refs(true); //允许虚引用
        Options.v().set_validate(true);  //验证
        //对排除掉的依赖类不生成jimplebody
        setExcludePackage();
        Options.v().set_no_bodies_for_excluded(true);

        Scene.v().loadNecessaryClasses();  //加载必须类和基础类
        Scene.v().loadBasicClasses();
//        Scene.v().addBasicClass("java.util.List", SootClass.SIGNATURES);  //不明，可能是处理的时候需要用到，所以放进Scene里面
    }

    private static void setExcludePackage() {
        ArrayList<String> excludeList = new ArrayList<String>();
        excludeList.add("android.*");
        excludeList.add("androidx.*");
        excludeList.add("kotlin.*");
        excludeList.add("com.google.*");
        excludeList.add("soot.*");
        Options.v().set_exclude(excludeList);
    }
}
