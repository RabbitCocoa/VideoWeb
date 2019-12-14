package edu.fzu.sm.util;

public class StringUtil {
    /*
     *   将首字母转化为大写
     */
    public static String firstUpper(String str)
    {
        String result=str.toUpperCase().substring(0,1)+str.substring(1);
        return result;
    }
}
