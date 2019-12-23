package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.User;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/UpdatePwdServlet")
public class UpdatePwdServlet  extends HttpServlet {
    UserService userService=new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //新密码
        String pwd0=req.getParameter("Pwd0");
        //旧密码
        String pwd1=req.getParameter("Pwd");
        PrintWriter out=resp.getWriter();
        if(pwd0==null||pwd1==null||pwd0.equals("")||pwd1.equals(""))
        {
            out.write("failed");
        }
        else{
            /*确认用户是否存在*/
            User user= (User) PublicUtil.getUserFromForm(User.class,req,new String[]{"Name","Pwd"});
            if(user!=null&&userService.isRight(user))
            {
                user.setPwd(pwd0);
              if(userService.updatePwd(user)==1)
              {
                  out.write("success");
              }
            }
            else{
                out.write("failed");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }


}
