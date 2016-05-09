package com.junbaor.huxblog.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by junbaor on 2016/5/5.
 */
@Component
public class CacheManager {

    private static final Logger logger = LoggerFactory.getLogger(CacheManager.class);

    public static final String CACHE_TAG = "cache_tag";
    public static final String CACHE_ARTICLE = "cache_article";

    private static ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap<>();

    public static void add(String key, Object value) {
        cache.put(key, value);
    }

    public static Object get(String key) {
        return cache.get(key);
    }

    public static void clear() {
        cache.clear();
    }

    public static void remove(String key) {
        cache.remove(key);
    }


}
