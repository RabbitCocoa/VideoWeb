package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.Collect;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.entity.Watch;
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

@WebServlet("/ToShowVideoServlet")
public class ToShowVideoServlet extends HttpServlet {

    private PublicService publicService=new PublicService();
    private VideoService videoService=new VideoService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String vid=req.getParameter("vid");
        Videos videos=videoService.queryVideoById(vid);
        if(videos==null)
        {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/404.jsp");
            return ;
        }
        /*
         *记录播放量
         */
        User user= (User) req.getSession().getAttribute("user");
        if(user==null)
        {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/login.jsp");
            return ;
        }
        //如果不是本人观看
        if(!user.getName().equals(videos.getAutor()))
        {
            //播放表++
            Watch watch=new Watch();
            watch.setTime(PublicUtil.getCurrentTimeStr());
            watch.setUid(user.getName());
            watch.setVid(vid);
            watch.setBuid(videos.getAutor());
            MysqlQuery.query.insert(watch);

            //统计播放表
            int totalplay=MysqlQuery.query.queryNumber("select count(1) from watch where vid=?",new Object[]{vid}).intValue();
            videos.setTotalplay(totalplay);
            MysqlQuery.query.update(videos,new String[]{"totalplay"});
        }

        /**
         * 点赞按钮是否可用
         */
        if(MysqlQuery.query.queryNumber("select count(1) from zan where zid=? and vid=?",new Object[]{user.getName(),vid}).intValue()==0)
        {
            req.setAttribute("zans",CONST.ZAN_NO);
        }
        else{
            req.setAttribute("zans",CONST.ZAN_YES);
        }
        videos.setZan(publicService.getVideoZan(vid));
        MysqlQuery.query.update(videos,new String[]{"zan"});
        /**
         * 收藏按钮是否可用
         */
        if(MysqlQuery.query.queryNumber("select count(1) from collect where uid=? and vid=?",new Object[]{
                user.getName(),vid
        }).intValue()==0)
        {
            req.setAttribute("collects",CONST.COLLECT_NO);
        }
        else{
            req.setAttribute("collects",CONST.COLLECT_YES);
        }
        videos.setBcollect(publicService.getVideoCollect(vid));
        MysqlQuery.query.update(videos,new String[]{"bcollect"});






        String sql1="select nickname from user where name=?";
        String nickname1= (String) MysqlQuery.query.queryValue(sql1,new Object[]{videos.getAutor()});
        if(nickname1!=null)
        {
            videos.setAutor(nickname1);
        }

        if(videos.getState().equals(CONST.VIDEO_EXAMINE)) {
            req.setAttribute("vdosrc", videos.getVsrc());
            req.setAttribute("Title", videos.getTitle());
            req.getRequestDispatcher("/jsp/video/showdetail.jsp").forward(req, resp);
        }
        else{
            /**
             * 获得该区域相关的list
             */
            String area=videos.getArea();
            List<Videos> newlists=videoService.getTopNewByTime(area,3);
            /*
             把作者的id改成别称
             */
            for (Videos newlist : newlists) {
                String sql="select nickname from user where name=?";
                String nickname= (String) MysqlQuery.query.queryValue(sql,new Object[]{newlist.getAutor()});
                if(nickname!=null)
                {
                    newlist.setAutor(nickname);
                }
            }

            List<Videos> toplists=videoService.getTopWatch(area,1,3);
              /*
             把作者的id改成别称
             */
            for (Videos newlist : toplists) {
                String sql="select nickname from user where name=?";
                String nickname= (String) MysqlQuery.query.queryValue(sql,new Object[]{newlist.getAutor()});
                if(nickname!=null)
                {
                    newlist.setAutor(nickname);
                }
            }

            List<Videos> aboutlists=videoService.getAboutVideo(videos,5);
      /*
             把作者的id改成别称
             */
            for (Videos newlist : aboutlists) {
                String sql="select nickname from user where name=?";
                String nickname= (String) MysqlQuery.query.queryValue(sql,new Object[]{newlist.getAutor()});
                if(nickname!=null)
                {
                    newlist.setAutor(nickname);
                }
            }

            System.out.println(newlists.toString());
            System.out.println(toplists.toString());
            System.out.println(aboutlists.toString());

            req.setAttribute("video",videos);
            req.setAttribute("newlists",newlists);
            req.setAttribute("toplists",toplists);
            req.setAttribute("aboutlists",aboutlists);

            req.getRequestDispatcher("/jsp/video/video.jsp").forward(req,resp);

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
