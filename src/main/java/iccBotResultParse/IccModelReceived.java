package iccBotResultParse;

/**
 * @ClassName: IccReceived
 * @Author: qiuzhiq
 * @Date: 2023/5/12 15:03
 * @Description:
 */

public class IccModelReceived {
    private static final long serialVersionUID = 5L;
    public String componentName;
    public String action;
    public String category;
    public String data;
    //TODO 后续改进data
//    public String scheme;
//    public String host;
//    public String path;
//    public String port;
    public String type;
    public String extras;
    //	public BundleType extraBT = new BundleType();


    @Override
    public String toString() {
        String s = "component:" + componentName + "\n";


        if(action != null && !action.equals("")) s += "action:" + action + ";\n";
        if(category != null && !category.equals("")) s += "category:" + category + ";\n";
        if(data != null && !data.equals("")) s += "data:" + data + ";\n";
        if(type != null && !type.equals("")) s += "type:" + type + ";\n";
        if(extras != null && !extras.equals("")) s += "extras:" + extras + ";\n";

        return s;
    }
}
