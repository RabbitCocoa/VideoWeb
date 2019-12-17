package edu.fzu.sm.util;

import java.lang.reflect.Method;

public class ReflectionUtil {
    /**
     * 调用一个类的get方法
     */
    public static Object invokeGet(String fieldName,Object obj){
        try {
            Class clz = obj.getClass();
            Method m = clz.getDeclaredMethod("get" + StringUtil.firstUpper(fieldName), null);
            return m.invoke(obj, null);
        }catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }

    /*
     * 调用一个类的set方法
     *
     */
    public static void invokeSet(String fieldName,Object obj,Object value)
    {
        try {

            Class clz=obj.getClass();
            Method m=clz.getDeclaredMethod("set"+StringUtil.firstUpper(fieldName),value.getClass());
            m.invoke(obj, value);

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

        }
    }


}
