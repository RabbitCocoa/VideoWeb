package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.VideoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/VideoBrowserServlet")
public class VideoBrowserServlet extends HttpServlet {
    private VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*接收分区信息和页数*/
        String area=req.getParameter("area");
        String page=req.getParameter("page");
        String title=req.getParameter("title");
        if(title==null)
        {
            title="";
        }

        if(page==null)
        {
            page="1";
        }
        if(area.equals(CONST.AREA_ALL))
        {
            area=null;
            req.setAttribute("area",CONST.AREA_ALL);
        }
        else{
            req.setAttribute("area",area);
        }

        int npage=Integer.parseInt(page);
        /*查询总页数*/
        int totalpage=videoService.getTotalPageByArea(title,area,16);
        if(npage>totalpage)
        {
            npage=totalpage;
        }
        req.setAttribute("totalpage",totalpage);

        /*查询视频*/


        /*封装为行*/
        Map<Integer,List<Videos>> browMap=new HashMap<>();
        for(int i=0;i<4;i++)
        {
            List<Videos> browVideo=videoService.getNewsVideoByArea(title,area,npage+i,4);
            if(browVideo==null)
            {
               break;
            }
            videoService.setAutors(browVideo);
            browMap.put(i,browVideo);
        }

        req.setAttribute("browMap",browMap);

        /*查询top*/
        List<Videos> toplist=videoService.getTopNewByTime(area,3);
        List<Videos>  newlist=videoService.getTopWatch(area,1,3);
        videoService.setAutors(toplist);
        videoService.setAutors(newlist);
        req.setAttribute("toplist",toplist);
        req.setAttribute("newlist",newlist);

        req.getRequestDispatcher("/jsp/video/browser.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
