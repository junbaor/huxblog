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

    private ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap<>();

    public void add(String key, Object value) {
        cache.put(key, value);
    }

    public Object get(String key) {
        return cache.get(key);
    }

    public void clear() {
        cache.clear();
    }

    public void remove(String key) {
        cache.remove(key);
    }


}
