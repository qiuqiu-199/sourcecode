package test;

/**
 * @ClassName: BranchInstrument
 * @Author: qiuzhiq
 * @Date: 2023/8/30 22:06
 * @Description:
 */
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import soot.Body;
import soot.BodyTransformer;
import soot.PackManager;
import soot.PatchingChain;
import soot.PhaseOptions;
import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Transform;
import soot.Unit;
import soot.jimple.IfStmt;
import soot.jimple.IntConstant;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.LookupSwitchStmt;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;
import soot.options.Options;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.UnitGraph;

//args[0]: the apk file path,".../xxx.apk"
//args[1]: android platform path,".../Sdk/platforms"
public class BranchInstrument {
    public static void main(String[] args) {
        args = new String[2];
        args[0] = "apk/SteamGifts.apk";
        args[1] = "C:\\Users\\ql\\AppData\\Local\\Android\\Sdk\\platforms";
//        assert args.length >= 2;
        File file = new File(args[0]);
        String apkPath = file.getAbsolutePath();	// such as apkPath = "/home/jie/AnkiDroid.apk"
        String androidPlatforms = args[1];	// such as androidPlatforms = "/home/jie/Android/Sdk/platforms";

        String[] sootArgs = {
                "-android-jars", androidPlatforms,
                "-process-dir", apkPath
        };
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_dex);
        Options.v().process_multiple_dex();
        Options.v().set_whole_program(true);
        Options.v().set_keep_line_number(true);
        Scene.v().addBasicClass("android.util.Log", SootClass.SIGNATURES);

        PackManager.v().getPack("jtp").add(new Transform("jtp.myInstrumenter", new MyInstrumenter()));
        soot.Main.main(sootArgs);
    }
}

class MyInstrumenter extends BodyTransformer {
    @Override
    protected void internalTransform(Body body, String phase, Map<String, String> options) {
        boolean methodInsFlag = false;
        SootMethod method = body.getMethod();
        String className = method.getDeclaringClass().getName();
        if(className.startsWith("android.")||className.startsWith("androidx.")||className.startsWith("kotlin.")||className.startsWith("com.google.")||className.startsWith("soot.")||className.startsWith("java.")||className.startsWith("javax.")||className.startsWith("org.apache.")||className.startsWith("org.springframework.")) {
            return;
        }
        if (!method.hasActiveBody()) {
            return;
        }
        String signature=method.getSignature();
        PatchingChain<Unit> units = body.getUnits();
        Iterator<Unit> stmtIt = units.snapshotIterator();

        File dir = new File("./sootOutput");
        if (!dir.exists()) {
            dir.mkdir();
        }
        String filePath = "./sootOutput/branchInsInfo.txt";
        String filePath1 = "./sootOutput/ins_info.txt";
        BufferedWriter writer = null;
        BufferedWriter writer1 = null;
        try {
            writer = new BufferedWriter(new FileWriter(filePath,true));
            writer1 = new BufferedWriter(new FileWriter(filePath1,true));
            while (stmtIt.hasNext()) {
                Unit stmt = stmtIt.next();

                if(methodInsFlag == false) {
                    if(stmt instanceof InvokeStmt) {
                        String info = "L" + className.replace(".", "/") + ";--->" + method.getSubSignature();
                        writer1.write(info + "\n");
                        StaticInvokeExpr outExpr = Jimple.v().newStaticInvokeExpr(
                                Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(),
                                StringConstant.v("M_InsDal"), StringConstant.v(info));
                        InvokeStmt outStmt = Jimple.v().newInvokeStmt(outExpr);
                        units.insertAfter(outStmt, stmt);
                        methodInsFlag = true;
                    }
                }

                if (stmt instanceof IfStmt) {
                    // 在分支语句前插入打印语句
                    String msg = signature + "-->" + stmt.toString();
                    writer.write(msg + "\n");
                    StaticInvokeExpr printExpr = Jimple.v().newStaticInvokeExpr(
                            Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(),
                            StringConstant.v("M_BranchIns"), StringConstant.v(msg));
                    InvokeStmt printStmt = Jimple.v().newInvokeStmt(printExpr);
                    units.insertBefore(printStmt, stmt);

                    // 在分支语句后插入打印语句
                    String msg1 = "if_true"+"-->" + signature + "-->" + stmt.toString();
                    writer.write(msg1 + "\n");
                    StaticInvokeExpr printExpr1 = Jimple.v().newStaticInvokeExpr(
                            Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(),
                            StringConstant.v("M_BranchIns"), StringConstant.v(msg1));
                    InvokeStmt printStmt1 = Jimple.v().newInvokeStmt(printExpr1);
                    //units.insertAfter(printStmt1, stmt);

                    IfStmt ifStmt = (IfStmt) stmt;
                    Stmt targetStmt = ifStmt.getTarget();
                    units.insertAfter(printStmt1, targetStmt);

//	                UnitGraph unitGraph = new BriefUnitGraph(body);
//	                List<Unit> successors = unitGraph.getSuccsOf(stmt);
//	                if (successors.size() == 1) {
//	                	units.insertAfter(printStmt1, successors.get(0));
//	                }
//	                else if(successors.size() == 2) {
//	                	units.insertAfter(printStmt1, successors.get(0));
//
//	                	String msg2 = "if_false"+"-->" + signature + "-->" + stmt.toString();
//		                writer.write(msg2 + "\n");
//	                	StaticInvokeExpr printExpr2 = Jimple.v().newStaticInvokeExpr(
//	    	                    Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(),
//	    	                    StringConstant.v("M_BranchIns"), StringConstant.v(msg2));
//	    	            InvokeStmt printStmt2 = Jimple.v().newInvokeStmt(printExpr2);
//	    	            units.insertAfter(printStmt2, successors.get(1));
//	                }

                }

                if (stmt instanceof LookupSwitchStmt) {
                    // 在switch语句前插入打印语句
                    String msg = signature + "-->" + stmt.toString();
                    writer.write(msg + "\n");
                    StaticInvokeExpr printExpr = Jimple.v().newStaticInvokeExpr(
                            Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(),
                            StringConstant.v("M_BranchIns"), StringConstant.v(msg));
                    InvokeStmt printStmt = Jimple.v().newInvokeStmt(printExpr);
                    units.insertBefore(printStmt, stmt);

                    // 在case后插入打印语句
                    LookupSwitchStmt lookupSwitch = (LookupSwitchStmt) stmt;
                    List<IntConstant> lookupValues = lookupSwitch.getLookupValues();
                    for (int i = 0; i < lookupValues.size(); i++) {
                        IntConstant lookupValue = lookupValues.get(i);
                        Unit target = lookupSwitch.getTarget(i);
                        String msg1 = "case_"+lookupValue.value+"/"+lookupValues.size()+"-->"+signature+"-->"+target;
                        writer.write(msg1 + "\n");
                        StaticInvokeExpr printStmt1 = Jimple.v().newStaticInvokeExpr(
                                Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>").makeRef(),
                                StringConstant.v("M_BranchIns"), StringConstant.v(msg1));
                        units.insertAfter(Jimple.v().newInvokeStmt(printStmt1), target);
                    }
                }
            }

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(writer1 != null) {
                try {
                    writer1.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }
}
