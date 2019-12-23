package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.VideoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/BrowserVideoServlet")
public class BrowserVideoServlet extends HttpServlet {
    private VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Videos> videosList=videoService.getTotalVideoSuccess();
        videoService.setAutors(videosList);

        req.setAttribute("videolist",videosList);
        req.getRequestDispatcher("/jsp/backs/Browser.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
