package instrument;

import soot.*;
import soot.jimple.*;
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

            Local sbLocal = Jimple.v().newLocal("sb",RefType.v("java.lang.StringBuilder"));
            body.getLocals().add(sbLocal);
            Local sb_tostring_local = Jimple.v().newLocal("sb_tostring",RefType.v("java.lang.String"));
            body.getLocals().add(sb_tostring_local);

//            插桩
            while (unit_iterator.hasNext()){
                Unit unit = unit_iterator.next();
                //对调用get基本属性的地方插桩
                if(ConstantUtils.is_getBasicAttr_unit(unit)){
//                    ConstantUtils.map.get(cur_act_name).add(unit.toString());
                    String type = ConstantUtils.getActualBasicAttr(unit);
                    if(type != null) addLogStmt((Stmt)unit,body,type,sbLocal,sb_tostring_local);
                    else {
                        System.out.println(unit.toString());
                        System.err.println("调用get基本属性的地方的type异常！！！！！");
                        System.exit(0);
                    }
                }
                //对获取额外属性里基本数据类型的地方插桩
                if(ConstantUtils.is_get_extra_basic(unit)){
                    String type = ConstantUtils.get_actual_extra_type(unit);
                    if(type != null) addLogExtraBasicStmt((Stmt)unit,body,type,sbLocal,sb_tostring_local);
                    else {
                        System.out.println(unit.toString());
                        System.err.println("获取额外属性里基本数据类型的地方的type异常！！！！！");
                        System.exit(0);
                    }
                }
                //对获取额外属性里基本数据类型的数组的地方插桩
                if(ConstantUtils.is_get_extra_basicArray(unit)){
                    String type = ConstantUtils.get_actual_extra_type(unit);
                    if(type != null) addLogExtraBasicArrayStmt((Stmt)unit,body,type,sbLocal,sb_tostring_local);
                    else{
                        System.out.println(unit.toString());
                        System.err.println("获取额外属性里基本数据类型数组的地方的type异常！！！！！");
                        System.exit(0);
                    }
                }
                //对获取额外属性里基本数据类型的ArrayList的地方进行插桩
                if (ConstantUtils.is_get_extra_basicArrayList(unit)){
                    String type = ConstantUtils.get_actual_extra_type(unit);
                    if(type != null) addLogExtraBasicArrayListStmt((Stmt)unit,body,type,sbLocal,sb_tostring_local);
                    else{
                        System.out.println(unit.toString());
                        System.err.println("获取额外属性里基本数据类型ArrayList的地方的type异常！！！！！");
                        System.exit(0);
                    }
                }

                //弃
                //在getIntent()的地方插桩，输出intent
//                if(ConstantUtils.is_getIntent_unit(unit)){
//                    addLogExtraStmt(unit,body);
//                }
            }
            body.validate();
        }
    }



    //弃
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

    //对基本属性获取点进行插桩
    private void addLogStmt(Stmt unit, Body body,String type,Local sbLocal, Local sb_tostring_local) {
        List<Unit> generated_unit = new ArrayList<>();

//      sb = new java.lang.StringBuilder;
        generated_unit.add(Jimple.v().newAssignStmt(sbLocal, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder"))));
//      specialinvoke sb.<java.lang.StringBuilder: void <init>()>();
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef())));
//      virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<当前activity名>:<当前基本属性名>=");
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),StringConstant.v(body.getMethod().getDeclaringClass().getName() + ":basic_" + type + "="))));

        //针对category和Uri进行不同的处理
        if (type.equals("category")){
//          sb_tostring = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();
            generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newVirtualInvokeExpr((JimpleLocal)unit.getDefBoxes().get(0).getValue(),Scene.v().getMethod("<java.lang.Object: java.lang.String toString()>").makeRef())));
//          virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");
            generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),sb_tostring_local)));

        }else if(type.equals("data_uri")){
//            System.out.println(unit.toString());
//          sb_tostring = virtualinvoke $r4.<android.net.Uri: java.lang.String toString()>();
//            System.out.println("unit.getDefBoxes().get(0).getValue().getType().toString() = " + unit.getDefBoxes().get(0).getValue().getType().toString());
            if(unit.getDefBoxes().get(0).getValue().getType().toString().equals("android.net.Uri")){

                AssignStmt assignStmt = Jimple.v().newAssignStmt(sb_tostring_local, Jimple.v().newVirtualInvokeExpr((JimpleLocal) unit.getDefBoxes().get(0).getValue(), Scene.v().getMethod("<android.net.Uri: java.lang.String toString()>").makeRef()));
                InvokeStmt invokeStmt = Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(), sb_tostring_local));
                generated_unit.add(Jimple.v().newIfStmt(Jimple.v().newNeExpr(unit.getDefBoxes().get(0).getValue(),NullConstant.v()),assignStmt));
                generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,StringConstant.v("null_value")));
                generated_unit.add(Jimple.v().newGotoStmt(invokeStmt));
                generated_unit.add(assignStmt);
                generated_unit.add(Jimple.v().newGotoStmt(invokeStmt));

//          virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");
                generated_unit.add(invokeStmt);
            }else{  //TODO 这里对某些地方的getData无法处理，例如INaturalist的<org.inaturalist.android.ProfileEditor: void onActivityResult(int,int,android.content.Intent)>:$r9 = virtualinvoke $r1.<android.content.Intent: android.net.Uri getData()>()
                System.out.println(body.getMethod().getSignature() +":"+unit.toString());
//                Local uri_tmp_local = Jimple.v().newLocal("uri_tmp",RefType.v("android.net.Uri"));
//                body.getLocals().add(uri_tmp_local);
//                generated_unit.add(Jimple.v().newAssignStmt(uri_tmp_local,unit.getUseBoxes().get(0).getValue()));
//                generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newVirtualInvokeExpr(uri_tmp_local,Scene.v().getMethod("<android.net.Uri: java.lang.String toString()>").makeRef())));
//
//                generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>").makeRef(),unit.getDefBoxes().get(0).getValue())));
            }
        }else{  //action、data_string、type
//      virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Strng)>(属性值);
            generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),unit.getDefBoxes().get(0).getValue())));
        }

//      sb_tostring = virtualinvoke sb.<java.lang.StringBuilder: java.lang.String toString()>;
        generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef())));
//      staticinvoke <android.util.Log: int i(java.lang.String,java.lang.String)>("qiu-tag",sb_tostring);
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>").makeRef(), StringConstant.v("qiu-tag"), sb_tostring_local)));

        body.getUnits().insertAfter(generated_unit,unit);

        body.validate();
    }
    //额外属性中，基本数据类型的值的获取
    private void addLogExtraBasicStmt(Stmt unit, Body body, String type, Local sbLocal, Local sb_tostring_local) {
        List<Unit> generated_unit = new ArrayList<>();

//      sb = new java.lang.StringBuilder;
        generated_unit.add(Jimple.v().newAssignStmt(sbLocal, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder"))));
//      specialinvoke sb.<java.lang.StringBuilder: void <init>()>();
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef())));
        AssignStmt assignStmt = (AssignStmt) unit;
        Value arg = assignStmt.getInvokeExpr().getArg(0);
        String name = arg.toString().replace("\"","");
//      virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<当前activity名>:<当前基本属性名>=");
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),StringConstant.v(body.getMethod().getDeclaringClass().getName() + ":extra_" + type + "_"+ name +"="))));

//      virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);
        switch (type) {
            case "int":
            case "short":
            case "byte":
                generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(int)>").makeRef(), unit.getDefBoxes().get(0).getValue())));
                break;
            case "String":
                generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(), unit.getDefBoxes().get(0).getValue())));
                break;
            case "charSequence":
                generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>").makeRef(), unit.getDefBoxes().get(0).getValue())));
                break;
            default:
                generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal, Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(" + type + ")>").makeRef(), unit.getDefBoxes().get(0).getValue())));
                break;
        }
//      sb_tostring = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();
        generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef())));
//      staticinvoke <android.util.Log: int i(java.lang.String,java.lang.String)>("qiu-tag", $r23);
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>").makeRef(), StringConstant.v("qiu-tag"), sb_tostring_local)));

        body.getUnits().insertAfter(generated_unit,unit);
        body.validate();
    }
    //额外属性中，基本属性类型数组的值的获取
    private void addLogExtraBasicArrayStmt(Stmt unit, Body body, String type, Local sbLocal, Local sb_tostring_local) {
        List<Unit> generated_unit = new ArrayList<>();

//      sb = new java.lang.StringBuilder;
        generated_unit.add(Jimple.v().newAssignStmt(sbLocal, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder"))));
//      specialinvoke sb.<java.lang.StringBuilder: void <init>()>();
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef())));
        AssignStmt assignStmt = (AssignStmt) unit;
        Value arg = assignStmt.getInvokeExpr().getArg(0);
        String name = arg.toString().replace("\"","");
//      virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<当前activity名>:<当前基本属性名>=");
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),StringConstant.v(body.getMethod().getDeclaringClass().getName() + ":extra_" + type + "[]_"+ name +"="))));

        if(type.equals("String") || type.equals("charSequence")){
            generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<java.util.Arrays: java.lang.String toString(java.lang.Object[])>").makeRef(),unit.getDefBoxes().get(0).getValue())));
        }else{
            generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<java.util.Arrays: java.lang.String toString("+type+"[])>").makeRef(),unit.getDefBoxes().get(0).getValue())));
        }

        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),sb_tostring_local)));
        generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef())));
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>").makeRef(), StringConstant.v("qiu-tag"), sb_tostring_local)));
        body.getUnits().insertAfter(generated_unit,unit);
        body.validate();
    }
    //额外属性中，基本属性类型ArrayList的值的获取
    private void addLogExtraBasicArrayListStmt(Stmt unit, Body body, String type, Local sbLocal, Local sb_tostring_local) {
        List<Unit> generated_unit = new ArrayList<>();

//      sb = new java.lang.StringBuilder;
        generated_unit.add(Jimple.v().newAssignStmt(sbLocal, Jimple.v().newNewExpr(RefType.v("java.lang.StringBuilder"))));
//      specialinvoke sb.<java.lang.StringBuilder: void <init>()>();
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: void <init>()>").makeRef())));
        AssignStmt assignStmt = (AssignStmt) unit;
        Value arg = assignStmt.getInvokeExpr().getArg(0);
        String name = arg.toString().replace("\"","");
//      virtualinvoke sb.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<当前activity名>:<当前基本属性名>=");
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>").makeRef(),StringConstant.v(body.getMethod().getDeclaringClass().getName() + ":extra_" + type + "ArrayList_"+ name +"="))));

        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>").makeRef(),unit.getDefBoxes().get(0).getValue())));

        generated_unit.add(Jimple.v().newAssignStmt(sb_tostring_local,Jimple.v().newVirtualInvokeExpr(sbLocal,Scene.v().getMethod("<java.lang.StringBuilder: java.lang.String toString()>").makeRef())));
        generated_unit.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(Scene.v().getMethod("<android.util.Log: int i(java.lang.String,java.lang.String)>").makeRef(), StringConstant.v("qiu-tag"), sb_tostring_local)));
        body.getUnits().insertAfter(generated_unit,unit);
        body.validate();
    }
}
