package com.junbaor.huxblog.common;

import java.util.UUID;

/**
 * Created by junbaor on 2016/5/5.
 */
public class AppUtils {
    public static boolean isBlank(String str) {
        if (str == null) return true;
        if (str.length() == 0) return true;
        return false;
    }

    public static boolean isNotBlank(String str) {
        return !isBlank(str);
    }

    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }
}
