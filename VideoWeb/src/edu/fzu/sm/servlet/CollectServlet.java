package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.Collect;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.VideoService;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CollectServlet")
public class CollectServlet extends HttpServlet {
    private VideoService service=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String vid=req.getParameter("vid");
        User user= (User) req.getSession().getAttribute("user");
        Videos videos=service.queryVideoById(vid);
        Collect collect=new Collect();
        collect.setGname("默认");
        collect.setVid(vid);
        collect.setUid(user.getName());
        collect.setBuid(videos.getAutor());
        String sql="select gid  from groups where uid=?";
        String gid= (String) MysqlQuery.query.queryValue(sql,new Object[]{user.getName()});

        collect.setGid(gid);
        collect.setTime(PublicUtil.getCurrentTimeStr());

        MysqlQuery.query.insert(collect);
    
        req.getRequestDispatcher("/ToShowVideoServlet").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
