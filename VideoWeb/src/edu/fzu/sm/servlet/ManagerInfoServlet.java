package edu.fzu.sm.servlet;

import com.sun.xml.internal.bind.v2.TODO;
import edu.fzu.sm.dao.UserDao;
import edu.fzu.sm.service.PublicService;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.service.VideoService;
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
    PublicService publicService=new PublicService();
    VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 返回管理员信息界面
         */

        int flows=publicService.getTotalFlow();
        int todayflows=publicService.getTodayFlow();


        int usernums=userService.listAllUser().size();
        int todayusers= userService.getTodayLogins();

        int videonums=videoService.getTotalVideo()==null?0:videoService.getTotalVideo().size();
        int todayvideos=videoService.getTodayVideo()==null?0:videoService.getTodayVideo().size();

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
