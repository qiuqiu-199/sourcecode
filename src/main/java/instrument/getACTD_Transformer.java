package instrument;

import soot.*;
import soot.jimple.*;
import soot.jimple.internal.JVirtualInvokeExpr;
import soot.jimple.internal.JimpleLocal;
import utils.ConstantUtils;
import utils.Global;

import java.util.*;

/**
 * @ClassName: getACTD_Transformer
 * @Author: qiuzhiq
 * @Date: 2023/6/13 15:30
 * @Description:
 */

public class getACTD_Transformer extends BodyTransformer {

    public getACTD_Transformer(){}
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

            while (unit_iterator.hasNext()){
                Unit unit = unit_iterator.next();
                if(ConstantUtils.is_getBasicAttr_unit(unit)){
                    ConstantUtils.map.get(cur_act_name).add(unit.toString());
                    addLogStmt((Stmt)unit,body,"BasicAttr");
                }
            }
        }
    }

    private void addLogStmt(Stmt unit, Body body,String type) {
        if(type.equals("BasicAttr")){
            String cur_act_name = body.getMethod().getDeclaringClass().getName();
            List<Unit> genered_unit = new ArrayList<>();
            List<ValueBox> defBoxes = unit.getDefBoxes();
            ValueBox valueBox = defBoxes.get(0);
            JimpleLocal jl0 = (JimpleLocal) valueBox.getValue();
//            Jimple.v().newLocal()


            SootMethod sm = Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>");
            StaticInvokeExpr invokeExpr = Jimple.v().newStaticInvokeExpr(sm.makeRef(), StringConstant.v("qiu-tag"), jl0);
            genered_unit.add(Jimple.v().newInvokeStmt(invokeExpr));
            body.getUnits().insertAfter(genered_unit,unit);
        }


    }






}
