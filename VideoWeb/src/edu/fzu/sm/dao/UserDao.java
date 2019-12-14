package edu.fzu.sm.dao;

import edu.fzu.sm.entity.User;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;

import java.util.List;

public class UserDao {

    /**
     * 查询所有用户
     */
    public List<User> queryAll()
    {
        String sql="select * from user order by CreateTime";
        return (List<User>)MysqlQuery.query.queryRows(sql,User.class,new Object[]{});
    }
    /**
     * 插入一条数据，自动填补时间、状态、昵称、头像
     */

}
