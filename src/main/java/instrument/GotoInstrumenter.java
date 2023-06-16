package instrument;

import soot.*;
import soot.jimple.*;
import soot.util.Chain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: GotoInstrumenter
 * @Author: qiuzhiq
 * @Date: 2023/6/15 21:01
 * @Description:
 */

public class GotoInstrumenter extends BodyTransformer {
    //单例化
    private static GotoInstrumenter instance = new GotoInstrumenter();

    private GotoInstrumenter() {
    }

    public static GotoInstrumenter v() {
        return instance;
    }


    private boolean addedFieldToMainClassAndLoadedPrintStream = false;
    private SootClass javaIoPrintStream;

    @Override
    protected void internalTransform(Body body, String s, Map<String, String> map) {
        SootField gotoCounter = null;
        boolean addedLocals = false;
        Local tmpRf = null, tmpLong = null;

        //如果用来统计goto语句出现次数的静态变量gotoCount不存在于类中，就创建一个类的静态变量放进去，否则直接获取。
        if (addedFieldToMainClassAndLoadedPrintStream) {
            gotoCounter = Scene.v().getMainClass().getFieldByName("gotoCount");
        } else {
            gotoCounter = new SootField("gotoCount", LongType.v(), Modifier.STATIC);
            Scene.v().getMainClass().addField(gotoCounter);
            javaIoPrintStream = Scene.v().getSootClass("java.io.PrintStream");
            addedFieldToMainClassAndLoadedPrintStream = true;
        }

        boolean isMainMethod = body.getMethod().getSignature().equals("void main(java.lang.String[])");

        //方法体内创建一个临时变量，用来累加gotoCounter
        Local tmpLocal = Jimple.v().newLocal("tmp", LongType.v());
        body.getLocals().add(tmpLocal);

        Iterator unitsIt = body.getUnits().iterator();
        while (unitsIt.hasNext()) {
            Stmt stmt = (Stmt) unitsIt.next();
            //遇到goto语句就对静态变量+1
            if (stmt instanceof GotoStmt) {
                List<Unit> genered_unit = new ArrayList<>();
                //插入"tmpLocal = gotoCounter;"
                AssignStmt toAdd1 = Jimple.v().newAssignStmt(tmpLocal, Jimple.v().newStaticFieldRef(gotoCounter.makeRef()));
                genered_unit.add(toAdd1);
//                units.insertBefore(toAdd1,stmt);
                //插入"tmpLocal = tmpLocal + 1L;"
                AssignStmt toAdd2 = Jimple.v().newAssignStmt(tmpLocal, Jimple.v().newAddExpr(tmpLocal, LongConstant.v(1L)));
                genered_unit.add(toAdd2);
//                units.insertBefore(toAdd2,stmt);
                //插入 "gotoCounter = tmpLocal;"
                AssignStmt toAdd3 = Jimple.v().newAssignStmt(Jimple.v().newStaticFieldRef(gotoCounter.makeRef()), tmpLocal);
                genered_unit.add(toAdd3);
//                units.insertBefore(toAdd3,stmt);
                body.getUnits().insertBefore(genered_unit, stmt);

                //如果是调用exit()语句，就输出gotocounter
            } else if (stmt instanceof InvokeStmt && stmt.getInvokeExpr() instanceof StaticInvokeExpr) {
                SootMethod the_call_method = stmt.getInvokeExpr().getMethod();
                if (the_call_method.getSignature().equals("<java.lang.System: void exit(int)>")) {
                    if (!addedLocals) {
                        tmpRf = addtmpRef(body);
                        tmpLong = addtmpLong(body);
                        addedLocals = true;
                    }
                    addStmtToBefore(body.getUnits(), stmt, gotoCounter, tmpRf, tmpLong);
                }
                ////如果是当前方法是主方法并且方法体即将执行结束语句，也输出gotocounter
            } else if (isMainMethod && (stmt instanceof ReturnStmt || stmt instanceof ReturnVoidStmt)) {
                if (!addedLocals) {
                    tmpRf = addtmpRef(body);
                    tmpLong = addtmpLong(body);
                    addedLocals = true;
                }
                addStmtToBefore(body.getUnits(), stmt, gotoCounter, tmpRf, tmpLong);
            }
        }

    }

    //给方法里增加一个局部变量tmpRf，类型是 java.lang.System.out。注意这里没写错。2023.6.15
    private Local addtmpRef(Body body) {
        Local tmpRf = Jimple.v().newLocal("tmpRf", RefType.v("java.io.PrintStream"));
        body.getLocals().add(tmpRf);
        return tmpRf;
    }

    //给方法里增加一个Long类型的变量，变量名为tmpLong。2023.6.15
    private Local addtmpLong(Body body) {
        Local tmpLong = Jimple.v().newLocal("tmpLong", LongType.v());
        body.getLocals().add(tmpLong);
        return tmpLong;
    }

    //插入输出语句
    private void addStmtToBefore(Chain units, Stmt s, SootField gotoCounter, Local tmpRf, Local tmpLong) {
        //插入语句："tmpRef = java.lang.System.out;"
        units.insertBefore(Jimple.v().newAssignStmt(tmpRf, Jimple.v().newStaticFieldRef(Scene.v().getField("<java.lang.System: java.io.PrintStream out>").makeRef())), s);
        //插入语句："tmpLong = gotoCounter;"
        units.insertBefore(Jimple.v().newAssignStmt(tmpLong, Jimple.v().newStaticFieldRef(gotoCounter.makeRef())), s);

        //插入语句："tmpRef.println(tmpLong);"
        SootMethod method_to_call = javaIoPrintStream.getMethod("void println(long)");
        units.insertBefore(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(tmpRf, method_to_call.makeRef(), tmpLong)), s);
    }
}
