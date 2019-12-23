package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.entity.Zan;
import edu.fzu.sm.service.VideoService;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ZanServlet")
public class ZanServlet extends HttpServlet {
    private VideoService service=new VideoService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String zans=req.getParameter("zans");
        String vid=req.getParameter("vid");
        PrintWriter writer=resp.getWriter();
        User user= (User) req.getSession().getAttribute("user");
        Videos videos=null;
        if(vid!=null) {
            videos = service.queryVideoById(vid);
        }
        if(zans==null||videos==null)
        {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/404.jsp");
        }
        if(zans.equals(CONST.ZAN_YES) )
        {
            req.setAttribute("zans",CONST.ZAN_NO);
            //删除点赞记录
            Zan zan= (Zan) MysqlQuery.query.queryRows("select * from zan where vid=? and zid=?",Zan.class,new Object[]{vid,user.getName()}).get(0);
            if(MysqlQuery.query.delete(zan)==1){
                req.getRequestDispatcher("/ToShowVideoServlet").forward(req,resp);
            }
            else{
                req.getRequestDispatcher("/ToShowVideoServlet").forward(req,resp);
            }
        }
        else{
            req.setAttribute("zans",CONST.ZAN_YES);
            //增加点赞记录
            Zan zan=new Zan();
            zan.setZid(user.getName());
            zan.setBzid(videos.getAutor());
            zan.setTime(PublicUtil.getCurrentTimeStr());
            zan.setVid(videos.getVid());

            if(MysqlQuery.query.insert(zan)==1)
            {
                req.getRequestDispatcher("/ToShowVideoServlet").forward(req,resp);
            }
            else{
                resp.sendRedirect(DBManager.getConf().getProjectName()+"/404.jsp");

            }
        }
    }
}
