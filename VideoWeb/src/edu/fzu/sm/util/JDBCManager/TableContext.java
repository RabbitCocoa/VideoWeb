package edu.fzu.sm.util.JDBCManager;



import edu.fzu.sm.util.JDBCQuery.MysqlConvertorImpl;
import edu.fzu.sm.util.StringUtil;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * 负责获取管理数据库所有表和类结构关系，并可以根基表结构生成类结构
 */

public class TableContext {
    /**
     * user 和 user表对应
      */

    public static Map<String, TableInfo> tables = new HashMap<String, TableInfo>();
    /**
     * User类 和 user表对应
     */
    public static Map<Class, TableInfo> poClassTableMap = new HashMap<Class, TableInfo>();
    public static void Tableinit(){
        TableContext table= new TableContext();
    }

    private TableContext() {
    }

    static {
        try {
            //初始化获得表的信息
            Connection con = DBManager.getConnection();
            DatabaseMetaData dbmd = con.getMetaData();
            ResultSet tableRet = dbmd.getTables(DBManager.getConf().getDbName(), "%", "%", new String[]{"TABLE"});
            while (tableRet.next()) {
                String tablename = (String) tableRet.getObject("TABLE_NAME");
                TableInfo ti = new TableInfo(tablename, new HashMap<String, ColumnInfo>(), new ArrayList<ColumnInfo>());
                tables.put(tablename, ti);
                //查询表中所有字段
                ResultSet set = dbmd.getColumns(null, "%", tablename, "%");
                while (set.next()) {
                    ColumnInfo ci = new ColumnInfo(set.getString("COLUMN_NAME"), set.getString("TYPE_NAME"), 0);
                    ti.getColumns().put(set.getString("COLUMN_NAME"), ci);
                }
                //查询表中所有的主键
                ResultSet set2 = dbmd.getPrimaryKeys(null, "%", tablename);
                while (set2.next()) {
                    ColumnInfo ci2 = ti.getColumns().get(set2.getObject("COLUMN_NAME"));
                    ci2.setKeyType(1);
                    ti.getPriKeys().add(ci2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
//        updateJavaPoFile();
        for(TableInfo t:tables.values()) {
            Class clz=null;
            try {
                clz = Class.forName(DBManager.getConf().getPoPackage()+"."+ StringUtil.firstUpper(t.getTname()));
                poClassTableMap.put(clz, t);
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                System.out.println("更新po包时加载类失败");
                e.printStackTrace();
            }
        }
    }

   /* *//**
     * 根据表结构 更新配置po包下面的java类
     *//*
    public static void updateJavaPoFile(){
        for(TableInfo t:tables.values()) {
            JavaFileUtil.createJavaFile(t,new MysqlConvertorImpl());
            Class clz=null;
            try {
                clz = Class.forName(DBManager.getConf().getPoPackage()+"."+ StringUtil.firstUpper(t.getTname()));
                poClassTableMap.put(clz, t);
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                System.out.println("更新po包时加载类失败");
                e.printStackTrace();
            }
        }
    }*/

  /*  public static void main(String[] args) {
        updateJavaPoFile();
    }*/

}
