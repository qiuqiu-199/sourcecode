package instrument;

import soot.*;
import soot.jimple.*;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.jimple.internal.JimpleLocal;
import utils.ConstantUtils;
import utils.Global;

import java.util.*;

/**
 * @ClassName: LogIns_Transformer
 * @Author: qiuzhiq
 * @Date: 2023/6/13 15:30
 * @Description:
 */

public class LogIns_Transformer extends BodyTransformer {

    public LogIns_Transformer(){}
    @Override
    protected void internalTransform(Body body, String s, Map<String, String> map) {
        if(Global.v().getAppModel().activityMap.containsKey(body.getMethod().getDeclaringClass().toString())){
            String cur_act_name = body.getMethod().getDeclaringClass().getName();

            //测试，获取每个activity的方法
            if(!ConstantUtils.map.containsKey(cur_act_name))
                ConstantUtils.map.put(cur_act_name,new HashSet<>());
//            else{
//                ConstantUtils.map.get(cur_act_name).add("当前方法签名"+ConstantUtils.map.get(body.getMethod().getDeclaringClass().toString()).size()+"：" + body.getMethod().getSignature());
//            }
            UnitPatchingChain units = body.getUnits();
            Iterator<Unit> unit_iterator = units.snapshotIterator();

//            插桩
            while (unit_iterator.hasNext()){
                Unit unit = unit_iterator.next();
                //对调用getAction的地方插桩，暂时注释
//                if(ConstantUtils.is_getBasicAttr_unit(unit)){
//                    ConstantUtils.map.get(cur_act_name).add(unit.toString());
//                    addLogStmt((Stmt)unit,body,"BasicAttr");
//                }

                //在getIntent()的地方插桩，输出intent
                if(ConstantUtils.is_getIntent_unit(unit)){
                    addLogExtraStmt(unit,body);
                }
            }
        }
    }

    private void addLogExtraStmt(Unit unit, Body body) {
        ArrayList<Unit> generated_unit = new ArrayList<>();
        List<ValueBox> defBoxes = unit.getDefBoxes();
        ValueBox valueBox = defBoxes.get(0);
        JimpleLocal intentLocal = (JimpleLocal) valueBox.getValue();


        Local extrasLocal = Jimple.v().newLocal("qiu_extra", RefType.v("android.os.Bundle"));
        Local sbLocal = Jimple.v().newLocal("sb",RefType.v("java.lang.StringBuilder"));
        body.getLocals().add(extrasLocal);
        body.getLocals().add(sbLocal);

//        qiu_extra = virtualinvoke $r2.<android.content.Intent: android.os.Bundle getExtras()>();
        AssignStmt assignStmt1 = Jimple.v().newAssignStmt(extrasLocal, Jimple.v().newVirtualInvokeExpr(intentLocal, Scene.v().getMethod("<android.content.Intent: android.os.Bundle getExtras()>").makeRef()));
        generated_unit.add(assignStmt1);

//        sb = new java.lang.StringBuilder;
        AssignStmt assignStmt2 = Jimple.v().newAssignStmt(sbLocal, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder")));
        generated_unit.add(assignStmt2);
//
//        specialinvoke sb.<java.lang.StringBuilder: void <init>()>();
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef())));

//        virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<当前activity名>");
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),StringConstant.v(body.getMethod().getDeclaringClass().getName()))));

//        sb_tostring = virtualinvoke sb.<java.lang.StringBuilder: java.lang.String toString()>();
        Local sb_tostringLocal = Jimple.v().newLocal("sb_tostring",RefType.v("java.lang.String"));
        body.getLocals().add(sb_tostringLocal);
        generated_unit.add(Jimple.v().newAssignStmt(sb_tostringLocal,Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef())));

//        staticinvoke <android.util.Log: int i(java.lang.String,java.lang.String)>("qiu-tag", sb_tostring);
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>").makeRef(),StringConstant.v("qiu-tag"),sb_tostringLocal)));


//        sb_tostring = virtualinvoke qiue_extra.<android.os.Bundle: java.lang.String toString()>;
        generated_unit.add(Jimple.v().newAssignStmt(sb_tostringLocal,Jimple.v().newVirtualInvokeExpr(extrasLocal,Scene.v().getMethod("<android.os.Bundle: java.lang.String toString()>").makeRef())));
//        staticinvoke <android.util.Log: int i(java.lang.String,java.lang.String)>("qiu-tag", sb_tostring);
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>").makeRef(),StringConstant.v("qiu-tag"),sb_tostringLocal)));

        body.getUnits().insertAfter(generated_unit,unit);
        body.validate();
    }

    private void addLogStmt(Stmt unit, Body body,String type) {
        if(type.equals("BasicAttr")){
            String cur_act_name = body.getMethod().getDeclaringClass().getName();
            List<Unit> genered_unit = new ArrayList<>();
            List<ValueBox> defBoxes = unit.getDefBoxes();
            ValueBox valueBox = defBoxes.get(0);
            JimpleLocal jl0 = (JimpleLocal) valueBox.getValue();

            SootMethod sm = Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>");
            StaticInvokeExpr invokeExpr = Jimple.v().newStaticInvokeExpr(sm.makeRef(), StringConstant.v("qiu-tag"), jl0);
            genered_unit.add(Jimple.v().newInvokeStmt(invokeExpr));
            body.getUnits().insertAfter(genered_unit,unit);
        }


    }
}
