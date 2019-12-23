package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.VideoService;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DelVideoServlet")
public class DelVideoServlet extends HttpServlet {
    VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String vid=req.getParameter("Vid");
        PrintWriter out=resp.getWriter();
        if(vid==null||vid.equals(""))
        {
            out.write("failed");
            return ;
        }
        String imgpath= DBManager.getConf().getCovPath();
        String vdopath=DBManager.getConf().getVdoPath();
        Videos videos=videoService.queryVideoById(vid);

        boolean result=true;

        /**
         * 保存该视频的封面和视频路径 如果删除成功 则删除文件
         */
        String img[]=videos.getPsrc().split("/");
        String vdo[]=videos.getVsrc().split("/");
        imgpath=imgpath+"/"+img[1];
        vdopath=vdopath+"/"+vdo[1];

        if(videoService.delVideoById(vid)==1)
        {
            File file=new File((imgpath));
            if(!file.delete()){
                result=false;
            }

            File file2=new File(vdopath);
            if(!file2.delete()){
                result=false;
            }
            if(!result)
            {
                /*删除失败就再插回去*/
                MysqlQuery.query.insert(videos);
            }

        }
        else {
            result=false;
        }
        if(result)
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
