package edu.fzu.sm.servlet;

import com.sun.xml.internal.bind.v2.TODO;
import edu.fzu.sm.dao.UserDao;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.util.JDBCQuery.Query;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/ManagerInfoServlet")
public class ManagerInfoServlet extends HttpServlet {
    UserService userService=new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 返回管理员信息界面
         */
        /**
         * @Todo 修改值
         */
        int flows=3000;
        int videonums=5000;
        int usernums=userService.listAllUser().size();

          int todayflows=300;
          int todayvideos=300;
          int todayusers= userService.getTodayLogins();
        //int

        req.setAttribute("flows",flows);
        req.setAttribute("videonums",videonums);
        req.setAttribute("usernums",usernums);


        req.setAttribute("todayusers",todayusers);
        req.setAttribute("todayflows",todayflows);
        req.setAttribute("todayvideos",todayvideos);

        req.getRequestDispatcher("/jsp/backs/index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
