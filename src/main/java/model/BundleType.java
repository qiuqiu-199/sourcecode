package model;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Serializable;
import java.util.*;
import java.util.Map.Entry;

public class BundleType implements Serializable, Cloneable {
    private static final long serialVersionUID = 4L;
    public Map<String, List<ExtraData>> bundle;
    public Set<String> contentSet;
    public String type;

    public BundleType() {
        bundle = new HashMap<>();
        contentSet = new HashSet<>();
        type = "";
    }

    public BundleType(Map<String, List<ExtraData>> bundle2,
                      Set<String> contentSet2, String type2) {
        bundle = new HashMap<>(bundle2);
        contentSet = new HashSet<>(contentSet2);
        type = type2;
    }


    @Override
    public String toString() {
        String res = "";
        for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
            for (ExtraData ed : en.getValue()) {
                if (!res.contains(ed.toString()))
                    res += ed.toString();
            }
        }
        return res;
    }

//    public void dump(BufferedWriter bw) {
//        for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
//            for (ExtraData ed : en.getValue()) {
//                try {
//                    bw.write("key: " + ed.name + " ");
//                    if (ed.type instanceof String)
//                        bw.write("type: " + ed.type + System.getProperty("line.separator"));
//                    else {
//                        bw.write("type: bundle, key: " + ed.type + System.getProperty("line.separator"));
//                        ((BundleType) ed.type).dump(bw);
//                    }
//                } catch (IOException e1) {
//                    e1.printStackTrace();
//                }
//            }
//        }
//    }

//    public void put(String u, List<ExtraData> eds) {
//        bundle.put(u, eds);
//        for (ExtraData ed : eds)
//            if (ed.type instanceof String)
//                contentSet.add(ed.type + ed.name);
//            else
//                contentSet.add("Bundle" + ed.name);
//    }
    // public ExtraData get(String u) {
    // return bundle.get(u);
    // }

    //具体用于文件输出，见fax
//    public void write_param_file(BufferedWriter bw) {
//        Set<String> set = new HashSet<String>();
//        for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
//            for (ExtraData ed : en.getValue()) {
//                try {
//                    if (ed.type instanceof String) {
//                        String info = ed.toString();
//                        if (!set.contains(info)) {
//                            bw.write(info + System.getProperty("line.separator"));
//                            set.add(info);
//                        }
//                    } else {
//                        String info = ed.toString();
//                        if (!set.contains(info)) {
//                            bw.write("Bundle " + ed.name + " " + ((BundleType) ed.type).bundle.size()
//                                    + System.getProperty("line.separator"));
//                            ((BundleType) ed.type).write_param_file(bw);
//                            set.add(info);
//                        }
//                    }
//                } catch (IOException e1) {
//                    e1.printStackTrace();
//                }
//            }
//        }
//    }


//    @Override
//    public BundleType clone() throws CloneNotSupportedException {
//        BundleType bt = new BundleType(bundle, contentSet, type);
//        return bt;
//    }

    public Map<String, List<ExtraData>> obtainBundle() {
        return bundle;
    }
}
