package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
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

@WebServlet("/VideosListServlet")
public class VideosListServlet  extends HttpServlet {
    private VideoService videoService=new VideoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String page=req.getParameter("page");
        String area=req.getParameter("Area");
        String title=req.getParameter("Title");

        int nPage;
        if(page==null||page.equals("")||Integer.parseInt(page)<1)
        {
            nPage=1;
        }
        else{
            nPage=Integer.parseInt(page);
        }



        if(title==null)
        {
            title="";
        }
        if(area==null)
        {
            area= CONST.AREA_ALL;
        }
        List<Videos> videos;
        if(area.equals(CONST.AREA_ALL)) {
            videos = videoService.queryAllByAdmin(title, nPage, 5);
        }
        else{
            videos = videoService.queryAllByAdmin(title,area,nPage,5);
        }
        if(videos==null||videos.size()<=0)
        {
            /**
             * 如果没有数据，返回上一页
             */
            if(nPage>1)
            {
                nPage-=1;
            }
            if(area.equals(CONST.AREA_ALL)) {
                videos = videoService.queryAllByAdmin(title, nPage, 5);
            }
            else{
                videos = videoService.queryAllByAdmin(title,area,nPage,5);
            }

        }

        req.setAttribute("page",nPage);
        req.setAttribute("videolist",videos);

        req.getRequestDispatcher("/jsp/backs/Examine.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
