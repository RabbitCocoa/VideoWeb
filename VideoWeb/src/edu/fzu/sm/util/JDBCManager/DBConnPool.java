package edu.fzu.sm.util.JDBCManager;
/**
    连接池类，不需要操作，自动初始化连接池，自动取出自动关闭
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBConnPool {
    private static List<Connection> pool;
    /**
     * 最大连接数
     */
    private static final int  POOL_MAX_SIZE=100;
    /**
     * 最小连接数
     */
    private static final int  POOl_MIN_SIZE=10;
    /**
        创造一个连接对象
     */
    private Connection CreateConnection()
    {
        try {
            Configuration conf = DBManager.getConf();
            Class.forName(conf.getDriver());
            return DriverManager.getConnection(conf.getUrl(), conf.getUser(), conf.getPassword());
        }
        catch (Exception e) {
        // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 初始化连接池
     */
    public void initPool()
    {
        if(pool==null)
        {
            pool=new ArrayList<Connection>();
        }
        while(pool.size()<POOl_MIN_SIZE)
        {
            pool.add(CreateConnection());
        }

    }


    /**
     * 构造器构造的同时初始化
     */
    public DBConnPool()
    {
        initPool();
    }

    /**
     * 从连接池中取出连接
     * @return
     */
    public synchronized Connection getConnection()
    {
        if(pool.size()<=0)
        {
            pool.add(CreateConnection());
        }
        int last_index=pool.size()-1;
        Connection conn=pool.get(last_index);
        pool.remove(last_index);

        return conn;
    }
    /**
     * “关闭”操作
     * 从连接池中放入一个连接
     * 如果达到最大值则直接关闭
     */
    public synchronized void Close(Connection conn)
    {
        if(pool.size()>POOL_MAX_SIZE)
        {
            try {
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
        }
        else
        {
            pool.add(conn);
        }
    }

}
