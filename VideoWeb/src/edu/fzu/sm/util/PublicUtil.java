package edu.fzu.sm.util;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class PublicUtil {
    /**
     * 自动读取Request中的数据，并且封装为一个对象
     * 约定: 表单的name与该对象中对应的属性一致并且首字母大写，
      @param  clz 需要获取的类型
      @param  request 直接使用Servlet中的request
      @param  columns 需要获取的属性名
      @autor Rabbitcocoa
      *使用案例: 从前台表单中获取一个User对象，并且该对象拥有账号和密码
      *User user=(User)getUserFromForm(User.class,request,new String[]{"Name","Pwd"};
     */
    public static Object getUserFromForm(Class clz, HttpServletRequest request, String[] columns){
        try{
        Object obj=null;

        for (String column : columns) {
            String attribute = request.getParameter(column);
            if (attribute != null&&!attribute.equals("")) {
                if(obj==null)
                {
                    obj=clz.newInstance();
                }
                Method method;
                if (column != "State") {
                    method = clz.getDeclaredMethod("set"+column, String.class);
                } else {
                    method = clz.getDeclaredMethod("set"+column, Integer.class);
                }
                method.invoke(obj, attribute);
            }
            else {
                return null;
            }
        }
            return obj;
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }

    }

    /**
     * 返回当前时间返回字符串
     */
    public static String getCurrentTimeStr()
    {
        //获取当前时间
        Date date= new Date(System.currentTimeMillis());

        //日期转换工具
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy年MM月dd日");
        //返回字符串
        return simpleDateFormat.format(date);
    }

    /**
     * 根据字符串返回一个日期
     * @param strDate 日期字符串 格式 yyyy年MM月dd日
     * @autor Rabbitcocoa
     */
    public static Date StringToDate(String strDate)   {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy年MM月dd日");
        try {
            return (Date) simpleDateFormat.parse(strDate);
        }
        catch (ParseException e)
        {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 模板条件查询
     */

}
