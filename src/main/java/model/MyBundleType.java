package model;

import java.util.HashSet;
import java.util.Set;

/**
 * @ClassName: MyBundleType
 * @Author: qiuzhiq
 * @Date: 2023/6/3 15:39
 * @Description: Bundle-app_data,(,String-com.fsck.k9.search_folder,String-com.fsck.k9.search_account),
 */

public class MyBundleType {
    public String bundleName;
    public Set<String> kvs = new HashSet<>();

    public MyBundleType(){

    }

    @Override
    public String toString() {
        StringBuilder content = new StringBuilder("Bundle-"+bundleName + "->(");
        for (String kv : kvs) {
            content.append(kv).append(",");
        }
        content.append(")");
        return content.toString().replace(",)",")");
    }
}
