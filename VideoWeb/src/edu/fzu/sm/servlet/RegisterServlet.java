package edu.fzu.sm.servlet;


import edu.fzu.sm.entity.Groups;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private UserService service=new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user= (User) PublicUtil.getUserFromForm(User.class,req,new String[]{"Name","Pwd","Email"});


        //服务端以输出流的方式将信息返回给客户端
        PrintWriter out=resp.getWriter();

        if(user!=null)
        {
            /*查询该用户是否存在*/
            if(service.isExits(user.getName()))
            {
                out.write("same");
                return;
            }
        int result=service.RegisterUser(user);
        if(result==1)
        {
            /**
             * 如果注册成功 添加一个默认的视频组
             */
            Groups group=new Groups();
            group.setGname("默认");
            group.setUid(user.getName());
            group.setGid(PublicUtil.getU20());

           if(MysqlQuery.query.insert(group)==1) {
               out.write("success");
           }
           else{
               MysqlQuery.query.delete(user);
               out.write("failed");
           }
        }
        }
        else{
            out.write("failed");
        }
       // req.getRequestDispatcher("/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
