package edu.fzu.sm.service;

import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.entity.Watch;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class PublicService {
    /**
     *获得某用户的总视频观看量
     */
    public int getTotalWatch(String name)
    {
        String sql="select sum(totalplay) from videos where autor =?";
        return MysqlQuery.query.queryNumber(sql,new Object[]{name}).intValue();
    }
    /**
     *当日观看量
     */
    public int getTodayWatch(String name)
    {
        String sql="select count(1) from watch where buid=? and time=?";
        return MysqlQuery.query.queryNumber(sql,new Object[]{name,PublicUtil.getCurrentTimeStr()}).intValue();
    }
    /**
     * 某用户的视频收藏量
     */
    public int getTotalCollect(String name)
    {
        String sql="select count(1) from collect as a left join videos as b on a.vid=b.vid where b.autor=? ";
        return MysqlQuery.query.queryNumber(sql, new Object[]{name}).intValue();
    }

    /**
     * 当日收藏
     */
    public int getTodayCollect(String name)
    {
        String sql="select count(1) from collect as a left join videos as b on a.vid=b.vid where b.autor=? and " +
                "a.time=? ";
        return MysqlQuery.query.queryNumber(sql, new Object[]{name, PublicUtil.getCurrentTimeStr()}).intValue();
    }

    /**
     * 点赞
     */
    public int getTotalZan(String name)
    {
        String sql="select count(1) from zan where bzid=?";
        return MysqlQuery.query.queryNumber(sql,new Object[]{name}).intValue();
    }

    public int getVideoZan(String vid)
    {
        String sql="select count(1) from zan where vid=?";
        return MysqlQuery.query.queryNumber(sql,new Object[]{vid}).intValue();

    }

    public int getVideoCollect(String vid)
    {
        String sql="select count(1) from collect where vid =?";
        return MysqlQuery.query.queryNumber(sql,new Object[]{vid}).intValue();

    }

    public int getTodayZan(String name)
    {
        String sql="select count(1) from zan where bzid=? and time=?";
        return MysqlQuery.query.queryNumber(sql, new Object[]{name, PublicUtil.getCurrentTimeStr()}).intValue();

    }

    /**
     * 判断用户是否已点赞
     */
    public boolean isZan(String zid,String vid)
    {
        String sql="select count(1) from zan where zid=? and vid=?";
        if(MysqlQuery.query.queryNumber(sql,new Object[]{zid,vid}).intValue()==1)
        {
            return true;
        }
        else{
            return false;
        }
    }

    /**
     * 获取网站流量
     */
    public  int getTotalFlow()
    {
        String sql="select count(1) from flow";
        return MysqlQuery.query.queryNumber(sql,new Object[]{}).intValue();
    }
    /**
     * 获取网站流量（当日
     */
    public int  getTodayFlow()
    {
        String sql="select count(1) from flow where time=?";
        return MysqlQuery.query.queryNumber(sql,new Object[]{PublicUtil.getCurrentTimeStr()}).intValue();
    }
    /**
     * 查询某个用户的观看记录，并将视频信息封装为List
     */
    public  List<Videos> getHistoryByName(String name)
    {

        //先查所有的vid
        List<Videos> videosList=new ArrayList<>();
        String sql="select vid from watch where uid=? order by time desc";
        List<Watch> watches=MysqlQuery.query.queryPagenate(sql,Watch.class,new Object[]{name},1,20);
        if(watches==null||watches.size()<=0)
        {
            return null;
        }
        else{
            StringBuilder stringBuilder=new StringBuilder();
            StringBuilder params=new StringBuilder();
            stringBuilder.append("select * from videos where vid=? ");
            params.append(watches.get(0).getVid());
            for (Watch watch : watches) {
                /**
                 * 跳过第一次
                 */
                if(watch==watches.get(0))
                {
                    continue;
                }
                stringBuilder.append(" or vid=?");
                params.append("&"+watch.getVid());
            }
            return  MysqlQuery.query.queryRows(stringBuilder.toString(),Videos.class,params.toString().split("&"));
        }
    }


}
