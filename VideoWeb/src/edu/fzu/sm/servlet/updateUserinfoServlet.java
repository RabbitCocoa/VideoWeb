package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.User;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateUserinfoServlet")
public class updateUserinfoServlet extends HttpServlet {

    private UserService service=new UserService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user= (User) PublicUtil.getUserFromForm(User.class,req,new String[]{"Name","Nickname","Email","Des"});
        MysqlQuery.query.update(user,new String[]{"Nickname","Email","Des"});
        user=service.getAUser(user.getName());
        req.getSession().setAttribute("user",user);
        resp.sendRedirect(DBManager.getConf().getProjectName()+"/UserInfoServlet");
    }
}
