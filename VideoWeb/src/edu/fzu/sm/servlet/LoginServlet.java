package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.PublicUtil;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) PublicUtil.getUserFromForm(User.class, req, new String[]{"Name", "Pwd"});

        PrintWriter out=resp.getWriter();

        if (user != null) {
            int result = userService.LoginTest(user.getName(), user.getPwd());
            if (result != 0) {
                //获取用户的全部信息
                user = userService.getAUser(user.getName());
                //放入session中
                req.getSession().setAttribute("user", user);
                //返回对应的页面
                if (user.getState() .equals(CONST.ADMIN)) {
                 //   resp.sendRedirect("/VideoWeb/jsp/back/back_index.jsp");
                    out.write("admin");
                    return;
                } else {
                  //  resp.sendRedirect("/VideoWeb/jsp/user/userInfo.jsp");
                    if(user.getState().equals(CONST.NORMAL))
                    {
                        out.write("user");
                    }
                    else{
                        out.write("ban");
                    }
                    return;
                }
            }

        }
        out.write("failed");
       // resp.sendRedirect("/VideoWeb/login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
