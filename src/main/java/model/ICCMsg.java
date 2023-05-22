package model;

import utils.PrintUtils;

import java.util.HashSet;
import java.util.Set;

/**
 * @ClassName: model.IccModel
 * @Author: qiuzhiq
 * @Date: 2023/5/10 16:31
 * @Description:
 */

public class ICCMsg {
//     String source;
//     String destination;
    public String action;
    public Set<String> category = new HashSet<String>();
    public String data;
    public String scheme;
    public String host;
    public String path;
    public String port;
    public String type;
    public Set<String> extras = new HashSet<String>();
//     String flag; TODO flag待处理

//     String sendOrReceive;

    public ICCMsg(){}

    public ICCMsg(String action2, Set<String> category2, String data2, String scheme2, String host2, String path2, String port2,
                  String type2, Set<String> extra2) {
        action = action2;
        category = category2;
        data = data2;
        scheme = scheme2;
        host = host2;
        path = path2;
        port = port2;
        type = type2;
        extras = new HashSet<String>(extra2);
    }


    @Override
    public String toString() {
        String res = "";
//        if (source != null && !source.equals(""))
//            res += " ##source:" + source;
//        res += " ##sendOrReceive:" + sendOrReceive;
//        if (destination != null && !destination.equals(""))
//            res += " ##destination:" + destination;
        if (action != null && !action.equals(""))
            res += " ##action:" + action;
        if (category != null && category.size() > 0)
            res += " ##category:" ;
        if (!PrintUtils.printSet(category,", ").equals(""))
            res += PrintUtils.printSet(category,", ");
        if (data != null && !data.equals(""))
            res += " ##data:" + data;
        if (scheme != null && !scheme.equals(""))
            res += " ##scheme:" + scheme;
        if (host != null && !host.equals(""))
            res += " ##host:" + host;
        if (path != null && !path.equals(""))
            res += " ##path:" + path;
        if (port != null && !port.equals(""))
            res += " ##port:" + port;
        if (type != null && !type.equals(""))
            res += " ##type:" + type;
        if (extras != null && extras.size() > 0)
            res += " ##extras:";
        if (!PrintUtils.printSet(extras," ").equals(""))
            res += PrintUtils.printSet(extras," ");
//        if(flag != null && !flag.equals(""))
//            res+= "## flag:" + flag;
        if (res.equals(""))
            return res;
        return res;
    }

    @Override
    public ICCMsg clone() throws CloneNotSupportedException {
        ICCMsg icc = new ICCMsg(action, category, data, scheme, host, path, port,type , extras);
        return icc;
    }
}
