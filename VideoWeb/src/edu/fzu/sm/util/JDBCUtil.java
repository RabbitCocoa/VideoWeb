package edu.fzu.sm.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
    /**
     * 传参处理
     */
    public static void handleParams(PreparedStatement ps,Object[] params)
    {

        try {
            if(params!=null)
            {
                for(int i=1;i<=params.length;i++)
                {
                    ps.setObject(i, params[i-1]);
                }
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
