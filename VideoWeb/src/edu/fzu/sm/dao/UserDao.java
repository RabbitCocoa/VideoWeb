package edu.fzu.sm.dao;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import java.util.List;

public class UserDao {

    /**
     * 根据用户名查询用户
     * @param fieldnames  指定查询的列名，为null则查询所有数据
     */
    public User queryUserByName(String name,String[] fieldnames)
    {
        StringBuilder stringBuilder=new StringBuilder();
       if(fieldnames!=null)
       {

           stringBuilder.append("select ");
           for (String fieldname : fieldnames) {
               stringBuilder.append(fieldname+",");
           }
           stringBuilder.deleteCharAt(stringBuilder.length()-1);
           stringBuilder.append(" from User where name=?");
       }
       else{
           stringBuilder.append("select * from User where name=?");
       }
        List<User> user= (List<User>) MysqlQuery.query.queryRows(stringBuilder.toString(),User.class,new Object[]{name});

        return user==null?null:user.get(0);
    }

    /**
     * 查询所有用户
     */
    public List<User> queryAll()
    {
        String sql="select * from user where state!=? order by CreateTime ";
        return (List<User>)MysqlQuery.query.queryRows(sql,User.class,new Object[]{CONST.NORMAL});
    }

    /**
     * 分页查询用户
     */
    public List<User> queryAllByPage(int page)
    {
        String sql="select * from user where state!=? order by CreateTime ";
        return (List<User>)MysqlQuery.query.queryPagenate(sql,User.class,new Object[]{CONST.ADMIN},page,20);
    }
    /**
     * 插入一条数据
     * 自动填补时间、状态、昵称、头像 (已改为在服务层填补,此处仅插入数据)
     */
    public int insert(User user)
    {
        return  MysqlQuery.query.insert(user);
    }

    /**
     * 更新用户信息
     * @param user 用户
     * @return int 影响行数
     */
    public int update(User user)
    {
        return MysqlQuery.query.update(user);
    }

    /**
     * 更新用户指定列的信息
     */
    public int update(User user,String[] fieldNames)
    {
        return MysqlQuery.query.update(user,fieldNames);
    }

    /**
     * 根据用户名删除用户信息
     */
    public int del(String name)
    {
        return MysqlQuery.query.delete(User.class,new Object[]{name});
    }

    /**
     * 根据一个用户对象删除用户信息
     */
    public int del(User user)
    {
        return MysqlQuery.query.delete(user);
    }

    /**
     * 查询今天注册的用户
     */
    public List<User> getLoginToday()
    {
        String sql="select * from user where state!=? and createtime=? order by CreateTime ";
        return (List<User>)MysqlQuery.query.queryRows(sql,User.class,new Object[]{CONST.NORMAL, PublicUtil.getCurrentTimeStr()});
    }



}
