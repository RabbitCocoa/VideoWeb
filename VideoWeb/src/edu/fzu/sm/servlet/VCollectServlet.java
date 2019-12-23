package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.Groups;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.VideoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/VCollectServlet")
public class VCollectServlet extends HttpServlet {
    private VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
/**
 * 查询所有的组
 */
        User user= (User) req.getSession().getAttribute("user");
        List<Groups> groups=videoService.getCollect(user.getName());

        /*
         * 封装组中所有的视频
         */
        Map<String,List<Videos>> listMap=videoService.getCollect(groups);

        req.setAttribute("groups",groups);
        req.setAttribute("videomap",listMap);
        req.getRequestDispatcher("/jsp/users/collect.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
