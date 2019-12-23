package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.VideoService;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ExamineServlet")
public class ExamineServlet  extends HttpServlet {
    private VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String vid=req.getParameter("vid");
        PrintWriter out=resp.getWriter();

        Videos videos=videoService.queryVideoById(vid);
        videos.setState(CONST.VIDEO_SUCCESS);
        if(MysqlQuery.query.update(videos,new String[]{"state"})==1)
        {
            out.write("success");
        }else{
            out.write("failed");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
