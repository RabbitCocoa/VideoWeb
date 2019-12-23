package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.Flow;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.service.PublicService;
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
import java.util.List;

@WebServlet("/VideoIndexServlet")
public class VideoIndexServlet extends HttpServlet {
    private PublicService publicService=new PublicService();
    private VideoService videoService=new VideoService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user= (User) req.getSession().getAttribute("user");
        if(user==null)
        {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/login.jsp");
        }

        /*流量+1*/
        Flow flow=new Flow();
        flow.setTime(PublicUtil.getCurrentTimeStr());
        MysqlQuery.query.insert(flow);

        /*最新主题*/
        List<Videos> newvideolist=videoService.getNewsVideoByArea(null,1,5);
        videoService.setAutors(newvideolist);
        req.setAttribute("newvideolist",newvideolist);



        /*动画分区*/
        List<Videos> anvideolist=videoService.getNewsVideoByArea(CONST.AREA_ANIMATION,1,8);
        videoService.setAutors(anvideolist);
        req.setAttribute("anvideolist",anvideolist);

        /*番剧分区*/
        List<Videos> cavideolist=videoService.getNewsVideoByArea(CONST.AREA_CARTOON,1,8);
        videoService.setAutors(cavideolist);
        req.setAttribute("cavideolist",cavideolist);

        /*美食分区*/
        List<Videos> fovideolist=videoService.getNewsVideoByArea(CONST.AREA_FOOD,1,8);
        videoService.setAutors(fovideolist);
        req.setAttribute("fovideolist",fovideolist);

        /*游戏分区*/
        List<Videos> gavideolist=videoService.getNewsVideoByArea(CONST.AREA_GAME,1,8);
        videoService.setAutors(gavideolist);
        req.setAttribute("gavideolist",gavideolist);

        /*
        音乐分区
         */
        List<Videos> muvideolist=videoService.getNewsVideoByArea(CONST.AREA_MUSIC,1,8);
        videoService.setAutors(muvideolist);
        req.setAttribute("muvideolist",muvideolist);

        /*影视分区*/
        List<Videos> movideolist=videoService.getNewsVideoByArea(CONST.AREA_MOVE,1,8);
        videoService.setAutors(movideolist);
        req.setAttribute("movideolist",movideolist);

        /*其他分区*/
        List<Videos> otvideolist=videoService.getNewsVideoByArea(CONST.AREA_OHTER,1,8);
        videoService.setAutors(otvideolist);
        req.setAttribute("otvideolist",otvideolist);

        /*新人榜 */
        List<Videos> topnewlist=videoService.getTopNewByTime(null,3);
        videoService.setAutors(topnewlist);
        req.setAttribute("topnewlist",topnewlist);
        /*TOP榜*/
        List<Videos> topVideosList=videoService.getTopWatch(null,1,3);
        videoService.setAutors(topVideosList);
        req.setAttribute("toVideosList",topVideosList);

        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }
}
