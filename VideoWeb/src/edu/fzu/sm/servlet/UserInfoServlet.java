package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.PublicService;
import edu.fzu.sm.service.UserService;
import edu.fzu.sm.service.VideoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
    UserService userService=new UserService();
    VideoService videoService=new VideoService();
    PublicService publicService=new PublicService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 返回用户信息界面
         */
        /**
         * @Todo 修改值
         */
        User user= (User) req.getSession().getAttribute("user");
        /*视频观看量*/
       int videoflows=publicService.getTotalWatch(user.getName());
       int todayvideoflows=publicService.getTodayWatch(user.getName());
       req.setAttribute("videoflows",videoflows);
       req.setAttribute("todayvideoflows",todayvideoflows);

        /**
         * 已发布视频
         */
       int videonums=videoService.getTotalVideoByName(user.getName());
       int todayvideonums=videoService.getTotalVideoByNameToday(user.getName());
        req.setAttribute("videonums",videonums);
        req.setAttribute("todayvideonums",todayvideonums);
        /**
         * 视频收藏量
         */
       int videocollects=publicService.getTotalCollect(user.getName());
       int todayvideocollects=publicService.getTodayCollect(user.getName());
        req.setAttribute("videocollects",videocollects);
        req.setAttribute("todayvideocollects",todayvideocollects);
        /**
         * 赞
         */
       int zans=publicService.getTotalZan(user.getName());
       int todayzans=publicService.getTodayZan(user.getName());
        req.setAttribute("zans",zans);
        req.setAttribute("todayzans",todayzans);

        /**
         * 分区比例
         */
        Map<String,Double> map=videoService.getStateRate(user.getName());
        //设置double类型小数点后位数格式
        DecimalFormat df = new DecimalFormat( "0.0");

        double canimation=map==null?0:map.get(CONST.AREA_ANIMATION);
        double cmusic=map==null?0:map.get(CONST.AREA_MUSIC);
        double cgame=map==null?0:map.get(CONST.AREA_GAME);
        double ccartoon=map==null?0:map.get(CONST.AREA_CARTOON);
        double cmovie=map==null?0:map.get(CONST.AREA_MOVE);
        double cfood=map==null?0:map.get(CONST.AREA_FOOD);
        double cother=map==null?0:map.get(CONST.AREA_OHTER);

        req.setAttribute("canimation",df.format(canimation));
        req.setAttribute("cmusic",df.format(cmusic));
        req.setAttribute("cgame",df.format(cgame));
        req.setAttribute("ccartoon",df.format(ccartoon));
        req.setAttribute("cmovie",df.format(cmovie));
        req.setAttribute("cfood",df.format(cfood));
        req.setAttribute("cohter",df.format(cother));


        /**
         * 所有视频
         */
        List<Videos> videosList=videoService.queryAllByName(user.getName(),null,1,5);

        req.setAttribute("movelist",videosList);

        req.getRequestDispatcher("/jsp/users/index.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
