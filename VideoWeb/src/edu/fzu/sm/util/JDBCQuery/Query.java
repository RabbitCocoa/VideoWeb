package edu.fzu.sm.util.JDBCQuery;



import edu.fzu.sm.util.JDBCManager.ColumnInfo;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCManager.TableContext;
import edu.fzu.sm.util.JDBCManager.TableInfo;
import edu.fzu.sm.util.JDBCUtil;
import edu.fzu.sm.util.ReflectionUtil;

import java.lang.reflect.Field;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/*
    通用的增删改查方法
 */
public abstract  class Query {
    //执行一条更新类语句 返回影响的行数
    public int executeDML(String sql, Object[] params) {
        int count = 0;
        Connection con = DBManager.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            /**
             * 给ps传参
             */
            JDBCUtil.handleParams(ps, params);
            count = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return -1;
        } finally {
            DBManager.Close(rs, ps, con);
        }
        return count;
    }

    /**
     * 将一个对象存储到数据库中
     * 将对象中不为null的语句向数据库中存储，如果数字为null则放0
     */
    public int insert(Object obj) {
        // TODO Auto-generated method stub
        Class c = obj.getClass();
        TableInfo ti = TableContext.poClassTableMap.get(c);
        StringBuilder sql1 = new StringBuilder("insert into " + ti.getTname() + " (");
        StringBuilder sql2 = new StringBuilder(" values(");
        List<Object> params = new ArrayList<Object>();
        //反射获得属性
        Field[] fs = c.getDeclaredFields();
        for (Field f : fs) {
            String fieldName = f.getName();
            Object fieldValue = ReflectionUtil.invokeGet(f.getName(), obj);
            if (fieldValue != null) {
                sql1.append(fieldName + ",");
                sql2.append("?,");
                params.add(fieldValue);
            }
        }
        sql1.setCharAt(sql1.length() - 1, ')');
        sql2.setCharAt(sql2.length() - 1, ')');
        String sql = sql1.toString() + sql2.toString();
        int count = executeDML(sql, params.toArray());
        return count;
    }

    /**
     * 删除clz对应表中的数据
     *
     * @param clz
     * @param id
     */
    public int delete(Class clz, Object[] id) {
        // TODO Auto-generated method stub

        TableInfo ti = TableContext.poClassTableMap.get(clz);
        List<ColumnInfo> prikeys = ti.getPriKeys();
        StringBuilder str = new StringBuilder();
        for (ColumnInfo prikey : prikeys) {
            str.append(prikey.getName()).append("=? and ");
        }
        String result = str.toString();
        result = result.substring(0, result.length() - 4);
        String sql = "delete from " + ti.getTname() + " where " + result;
        int count = executeDML(sql, id);
        return count;
    }

    //删除一个对象
    public int delete(Object obj) {
        // TODO Auto-generated method stub
        Class clz = obj.getClass();
        TableInfo ti = TableContext.poClassTableMap.get(clz);
        List<ColumnInfo> ci = ti.getPriKeys();
        List<Object> ob = new ArrayList<>();
        for (ColumnInfo columnInfo : ci) {
            ob.add(ReflectionUtil.invokeGet(columnInfo.getName(), obj));
        }
        return delete(clz, ob.toArray());
    }

    //更新一个对象中的指定属性
    public int update(Object obj, String[] fieldNames) {
        // update 表名 set 列名=?,=? where id =？
        Class c = obj.getClass();
        TableInfo ti = TableContext.poClassTableMap.get(c);
        List<ColumnInfo> id = ti.getPriKeys();
        StringBuilder sql = new StringBuilder("update " + ti.getTname() + " set ");
        List<Object> params = new ArrayList<Object>();
        for (String name : fieldNames) {
            Object value = ReflectionUtil.invokeGet(name, obj);
            sql.append(name + "=?,");
            params.add(value);
        }
        sql.setCharAt(sql.length() - 1, ' ');
        sql.append("where ");

        //给主键传参
        for (ColumnInfo prikey : id) {
            sql.append(prikey.getName()).append("=? and");
            Object key = ReflectionUtil.invokeGet(prikey.getName(), obj);
            params.add(key);
        }
        String result = sql.toString();
        result = result.substring(0, result.length() - 4);

        int count = executeDML(result, params.toArray());

        // TODO Auto-generated method stub
        return count;
    }

    public int update(Object obj) {
        Class c = obj.getClass();
        TableInfo ti = TableContext.poClassTableMap.get(c);
        List<String> fieldnames = new ArrayList<String>();

        for (String s : ti.getColumns().keySet()) {
            Object value = ReflectionUtil.invokeGet(s, obj);
            if (value != null) {
                fieldnames.add(s);
            }
        }
        String[] result = new String[fieldnames.size()];
        for (int i = 0; i < result.length; i++) {
            result[i] = fieldnames.get(i);
        }
        return update(obj, result);
    }

    /**
     * 查询语句模板 返回一个结果集
     */
    public static ResultSet executeQueryTemplate(String sql, Object[] params) {
        Connection con = DBManager.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            /**
             * 给ps传参
             */
            JDBCUtil.handleParams(ps, params);
            rs = ps.executeQuery();
            return rs;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
        finally {
            DBManager.Close(con);
        }
    }

    /**
     * 查询多行多列 并将记录封装Clazz中
     */
    public List queryRows(String sql, Class clazz, Object[] params) {
        List result = null;
        ResultSet rs;
        rs = executeQueryTemplate(sql, params);
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            while (rs.next()) {
                if (result == null)
                {
                    result = new ArrayList<Object>();
                }
                Object rowObj = clazz.newInstance();
                //存储多列
                for (int i = 0; i < rsmd.getColumnCount(); i++) {
                    String name = rsmd.getColumnLabel(i + 1);
                    Object value = rs.getObject(i + 1);
                    //反射调用set方法
                    if (value != null)
                    {
                        ReflectionUtil.invokeSet(name,rowObj,value);
                    }
                }
                result.add(rowObj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            DBManager.Close(rs);
        }
        return result;
    }

    /*
     *
     * 返回一个信息
     */
    public Object queryValue(String sql, Object[] params) {
        Object result = null; //查询结果
        ResultSet rs = executeQueryTemplate(sql, params);
        try {
            while (rs.next()) {
                //select count(*) from user
                result = rs.getObject(1);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            DBManager.Close(rs);
        }
        return result;
    }

    /*
     * 返回一个数
     */
    public Number queryNumber(String sql, Object[] params) {
        // TODO Auto-generated method stub
        if(queryValue(sql, params)==null)
        {
            return 0;
        }
        return (Number)queryValue(sql, params);
    }

    /**
     * 分页查询
     */
    public abstract List<Object> queryPagenate(String sql, Class clazz,Object[] params,int pagenum,int size);


}