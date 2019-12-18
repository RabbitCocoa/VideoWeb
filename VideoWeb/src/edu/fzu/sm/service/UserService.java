package edu.fzu.sm.service;

import com.mysql.jdbc.TimeUtil;
import com.sun.org.apache.xpath.internal.operations.Bool;
import edu.fzu.sm.CONST;
import edu.fzu.sm.dao.UserDao;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import java.util.List;
import java.util.Random;

public class UserService {
    private UserDao userDao=new UserDao();

    /**
     * 验证登陆
     */
    public int LoginTest(String name,String pwd)
    {
        User user = userDao.queryUserByName(name,new String[]{"Name,Pwd"});

        if(user!=null&&user.getPwd().equals(pwd))
        {

            /**
             * 如果登陆成功返回1
             */
           return 1;
        }
        else{
            //登陆失败返回0
            return 0;
        }
    }

    /**
     * 返回一个用户的全部信息
     */
    public User getAUser(String name)
    {
        return userDao.queryUserByName(name,null);
    }

    /**
     * 查询某个用户是否存在
     * 存在返回true
     */
    public boolean isExits(String name)
    {
        return userDao.queryUserByName(name,new String[]{"name"})!=null?true:false;
    }

    /**
     * 注册用户 自动填补信息
     */
    public int RegisterUser(User user)
    {
        /**
         * 是否存在该用户，是则返回same 提醒用户名相同
         */
        Random random=new Random();
        user.setCreatetime(PublicUtil.getCurrentTimeStr());
        user.setDes("留下点什么吧....");
        user.setNickname("旅客");
        //默认头像
        user.setPhoto(DBManager.getConf().getProjectName()+"/photos/Default"+(random.nextInt(2)+1)+".jpg");
        //用户账号状态正常
        user.setState(CONST.NORMAL);
        return userDao.insert(user);
    }

    /*返回普通用户列表*/
    public List<User> listAllUser()
    {
        return userDao.queryAll();
    }

    /**
     * 分页查询
     */
    public List<User> listAllUserByPage(int page)
    {
        return userDao.queryAllByPage(page);
    }

    /**
     * 获取今天注册的用户人数
     */
    public int getTodayLogins()
    {
        List<User> list= userDao.getLoginToday();
          return list==null?0:list.size();
    }
    /**
     * 封禁用户
     */
    public int banUser(String name,String state)
    {

        User user=new User();
        user.setName(name);
        if(state.equals(CONST.BAN))
        {
            user.setState(CONST.NORMAL);
        }
        else if(state.equals(CONST.NORMAL)){
            user.setState(CONST.BAN);
        }

        return userDao.update(user, new String[]{"state"});
    }

    /**
     * 根据内容模糊查询
     */
    public List<User> queryBySel(String nickname,int page) {
        String sql = null;

        sql = "select * from user where state!=? and ( nickname like ? or nickname like ? or nickname like ?)  ";

        return userDao.queryRowsPage(sql,
                new Object[]{CONST.ADMIN,
                        "%" + nickname,
                        nickname + "%",
                        "%" + nickname + "%",
                }, page, 20);

    }

    /**
     * 密码是否正确
     */
    public Boolean isRight(User user)
    {
        String sql="select count(1) from user where name=? and pwd=?";
       return userDao.queryNum(sql,new Object[]{user.getName(),user.getPwd()})==1?true:false;
    }
    /**
     * 更新密码
     */
    public int updatePwd(User user)
    {
        return userDao.update(user,new String[]{"Pwd"});
    }
    /**
     * 更改头像
     */
    public int updatePhoto(String name,String path)
    {
        User user=new User();
        user.setName(name);
        user.setPhoto(path);
        return userDao.update(user,new String[]{"Photo"});
    }
}
