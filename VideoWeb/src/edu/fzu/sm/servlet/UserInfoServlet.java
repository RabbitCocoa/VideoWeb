package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
    UserService userService=new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 返回用户信息界面
         */
        /**
         * @Todo 修改值
         */
        /*视频观看量*/
       int videoflows=300;
       int todayvideoflows=30;
       req.setAttribute("videoflows",videoflows);
       req.setAttribute("todayvideoflows",todayvideoflows);

        /**
         * 已发布视频
         */
       int videonums=300;
       int todayvideonums=30;
        req.setAttribute("videonums",videonums);
        req.setAttribute("todayvideonums",todayvideonums);
        /**
         * 视频收藏量
         */
       int videocollects=300;
       int todayvideocollects=30;
        req.setAttribute("videocollects",videocollects);
        req.setAttribute("todayvideocollects",todayvideocollects);
        /**
         * 赞
         */
       int zans=300;
       int todayzans=30;
        req.setAttribute("zans",zans);
        req.setAttribute("todayzans",todayzans);

        /**
         * 分区比例
         */
        int canimation=10;
        int cmusic=10;
        int cgame=20;
        int ccartoon=20;
        int cmovie=30;
        int cfood=10;
        req.setAttribute("canimation",canimation);
        req.setAttribute("cmusic",cmusic);
        req.setAttribute("cgame",cgame);
        req.setAttribute("ccartoon",ccartoon);
        req.setAttribute("cmovie",cmovie);
        req.setAttribute("cfood",cfood);


        /**
         * 所有视频
         */
        List<Videos> videosList=new ArrayList<>();
        Videos videos=new Videos();
        videos.setTitle("测试");
        videos.setZan(300);
        videos.setCreatetime("2018年12月1日");
        videos.setDec("哈哈哈");
        videos.setPsrc("photos/admin.jpg");
        videos.setState("审核中");
        videosList.add(videos);

        req.setAttribute("movelist",videosList);

        req.getRequestDispatcher("/jsp/users/index.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
