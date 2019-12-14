package edu.fzu.sm.util.JDBCManager;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

/**
    JDBC驱动管理类
    主要方法: getConnection()获得一个连接对象
 */
public class DBManager {
    //配置信息 唯一单例
    private static Configuration conf;
    public static Configuration getConf(){return conf;}
    private static  DBConnPool pool;

    //静态代码块 加载配置文件 写入conf
    static{
        try {
            Properties pros=new Properties();
            pros.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties"));
            if(pros!=null)
            {
                conf=new Configuration();
                conf.setDriver(pros.getProperty("Driver"));
                conf.setUrl(pros.getProperty("Url"));
                conf.setUser(pros.getProperty("User"));
                conf.setPassword(pros.getProperty("Password"));
                conf.setUsingDb(pros.getProperty("UsingDB"));
                conf.setDbName((pros.getProperty("DbName")));
                conf.setPoPackage((pros.getProperty("PoPackage")));
            }
            else{
                System.out.println("加载配置信息失败");
                System.exit(0);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /* 从连接池获得连接
		 * @return
     */
    public static Connection getConnection()
    {
        if(pool==null)
        {
            pool=new DBConnPool();
        }
        return pool.getConnection();

    }
    public static void Close(Connection con)
    {
        pool.Close(con);
    }
    public static void Close(PreparedStatement ps)
    {
        try {
            if(ps!=null)
                ps.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    public static void Close(ResultSet rs)
    {
        try {
            if(rs!=null)
                rs.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    public static void Close(Connection con,PreparedStatement ps)
    {
        Close(con);
        Close(ps);
    }
    public static void Close(Connection con,ResultSet rs)
    {
        Close(con);
        Close(rs);
    }
    public static void Close(PreparedStatement ps,ResultSet rs)
    {
        Close(ps);
        Close(rs);
    }

    public static void Close(ResultSet rs, PreparedStatement ps, Connection con)
    {
        Close(rs);
        Close(ps);
        Close(con);
    }
}
