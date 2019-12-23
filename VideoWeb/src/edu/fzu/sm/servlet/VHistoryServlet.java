package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.PublicService;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/VHistoryServlet")
public class VHistoryServlet extends HttpServlet {
    private PublicService publicService=new PublicService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * videolist
         */
        User user= (User) req.getSession().getAttribute("user");
        List<Videos> videolist= publicService.getHistoryByName(user.getName());

        if(videolist!=null) {
            String sql = "select nickname from user where name=?";
            for (Videos videos : videolist) {

                String nickname = (String) MysqlQuery.query.queryValue(sql, new Object[]{videos.getAutor()});
                if (nickname != null) {
                    videos.setAutor(nickname);
                }
            }
        }

        req.setAttribute("videolist",videolist);
        req.getRequestDispatcher("/jsp/users/VHistory.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
