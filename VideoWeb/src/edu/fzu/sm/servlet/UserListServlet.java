package edu.fzu.sm.servlet;

import edu.fzu.sm.dao.UserDao;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/UserListServlet")
public class UserListServlet  extends HttpServlet {

    private UserService service=new UserService();
    /**
    * 从数据库获取普通用户列表，并返回给页面
    **/
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 获取页数
         */
        String page=req.getParameter("page");
        int cPage;
        if(page==null||page.equals(""))
        {
            cPage=1;
        }
        else{
            cPage=Integer.parseInt(page);
        }


        List<User> list=service.listAllUserByPage(cPage);
        req.setAttribute("userlist",list);
        req.setAttribute("page",cPage);

        req.getRequestDispatcher("/jsp/backs/Userlist.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
