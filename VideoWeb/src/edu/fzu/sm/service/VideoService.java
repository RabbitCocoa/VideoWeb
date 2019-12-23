package edu.fzu.sm.service;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.Collect;
import edu.fzu.sm.entity.Groups;
import edu.fzu.sm.entity.Videos;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VideoService {

    /**
     * 根据id查询某个视频的全部信息
     */
    public Videos queryVideoById(String vid) {
        String sql = "select * from videos where vid=?";
        return (Videos) (MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{vid}).get(0));

    }

    /**
     * 根据id删除用户
     */
    public int delVideoById(String hid) {
        return MysqlQuery.query.delete(Videos.class, new Object[]{hid});
    }

    /**
     * 查询某个用户上传的全部视频
     * 参数可选
     */
    public List<Videos> queryAllByName(String name, String title) {
        String sql = "select * from Videos where autor=?";
        if (title != null) {
            sql += " and (title like ? or title like ? or title like ?)";
            return MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{name, title + "%", "%" + title
                    , "%" + title + "%"});
        }

        return MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{name});
    }

    /**
     * 分页查询某个用户上传的视频
     * 参数可选
     */
    public List<Videos> queryAllByName(String name, String title, int page, int size) {
        String sql = "select * from Videos where autor=?";
        if (title != null) {
            sql += " and (title like ? or title like ? or title like ?)";
            return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{name, title + "%", "%" + title
                    , "%" + title + "%"}, page, size);
        }

        return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{name}, page, size);
    }

    /**
     * 分页查询全部视频
     */
    public List<Videos> queryAllByAdmin( String title, int page, int size) {
        String sql = "select * from Videos where state=? ";
        if (title != null) {
            sql += " and (title like ? or title like ? or title like ?)";
            return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{CONST.VIDEO_EXAMINE,title + "%", "%" + title
                    , "%" + title + "%"}, page, size);
        }

        return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{CONST.VIDEO_EXAMINE}, page, size);
    }

    /**
     * 分页查询某个分区全部视频
     */
    public List<Videos> queryAllByAdmin(String title, String area, int page, int size) {
        String sql = "select * from Videos where  area=? and state=? ";
        if (title != null) {
            sql += " and (title like ? or title like ? or title like ?)";
            return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{ area,CONST.VIDEO_EXAMINE, title + "%", "%" + title
                    , "%" + title + "%"}, page, size);
        }

        return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{ area,CONST.VIDEO_EXAMINE}, page, size);
    }




    /**
     * 查询某个分区的投稿视频
     */
    public List<Videos> querayAllByArea(String name, String title, String area) {

        String sql = "select * from Videos where autor=? and area=?";
        if (title != null) {
            sql += " and (title like ? or title like ? or title like ?)";
            return MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{name, title + "%", "%" + title
                    , "%" + title + "%"});
        }
        return MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{name, area});
    }

    /**
     * 查询某个分区的投稿视频
     */
    public List<Videos> querayAllByArea(String name, String title, String area, int page, int size) {
        String sql = "select * from Videos where autor=? and area=?";
        if (title != null) {
            sql += " and (title like ? or title like ? or title like ?)";
            return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{name, area, title + "%", "%" + title
                    , "%" + title + "%"}, page, size);
        }

        return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{name, area}, page, size);
    }

    /**
     * 获取该用户各个投稿分区的比例
     */
    public Map<String, Double> getStateRate(String name) {
        Map<String, Double> stringMap = new HashMap<>();
        double total = 0;
        /**
         * 查询出总数和各个分区的数量
         */
        for (String area : CONST.AREAS) {
            double num = querayAllByArea(name, null, area) == null ? 0 : querayAllByArea(name, null, area).size();
            total += num;
            stringMap.put(area, num);
        }
        if (total == 0) {
            return null;
        }

        Map<String, Double> result = new HashMap<>();
        for (String area : CONST.AREAS) {
            result.put(area, stringMap.get(area) / total * 100);
        }
        return result;
    }

    /**
     * 查询某个用户发布的视频总量
     */
    public int getTotalVideoByName(String name) {
        String sql = "select count(1) from Videos where autor=?";
        return MysqlQuery.query.queryNumber(sql, new Object[]{name}).intValue();
    }

    /**
     * 查询某用户当天发布的视频量
     */
    public int getTotalVideoByNameToday(String name) {
        String sql = "select count(1) from Videos where autor=? and createtime=? ";
        return MysqlQuery.query.queryNumber(sql, new Object[]{name, PublicUtil.getCurrentTimeStr()}).intValue();
    }

    /**
     * 获取总的视频列表
     */
    public List<Videos> getTotalVideo() {
        String sql = "select * from videos order by createtime";
        return MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{});
    }

    /**
     * 获取某一页的视频列表
     */
    public List<Videos> getTotalVideo(int page, int size) {
        String sql = "select * from videos order by createtime";
        return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{}, page, size);
    }
    /**
     * 获得当天的视频列表
     */
    public List<Videos> getTodayVideo()
    {
        String sql = "select * from videos  where createtime=? order by createtime";
        return MysqlQuery.query.queryRows(sql, Videos.class, new Object[]{PublicUtil.getCurrentTimeStr()});
    }
    public List<Videos> getTodayVideo(int page,int size)
    {
        String sql = "select * from videos  where createtime=? order by createtime";
        return MysqlQuery.query.queryPagenate(sql, Videos.class, new Object[]{PublicUtil.getCurrentTimeStr()},page,size);
    }
    /**
     * 获得播放量最高的
     */
    public List<Videos> getTopWatch(String area,int page,int n){
        String sql;
        if(area==null) {
            sql = "select * from Videos where state=? order by totalplay desc";
            return MysqlQuery.query.queryPagenate(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS},page,n);
        }
        else{
            sql="select * from videos where state=? and area=? order by totalplay desc";
            return MysqlQuery.query.queryPagenate(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS,area},page,n);
        }

    }



    /**
     * 获得某个分区最新的n个视频 如果为null就范围为全部
     */
    public List<Videos> getNewsVideoByArea(String area,int page,int n)
    {
        String sql;
        if(area==null)
        {
            sql="select * from videos where state=? order by createtime desc";
            return MysqlQuery.query.queryPagenate(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS},page,n);
        }
        else{
            sql="select * from videos where state=? and area=? order by createtime desc";
            return MysqlQuery.query.queryPagenate(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS,area},page,n);
        }
    }

    public List<Videos> getNewsVideoByArea(String title,String area,int page,int n)
    {
        String sql;
        if(area==null)
        {
            sql="select * from videos where state=? and  (title like ? or title like ? or title like ?)  order by createtime desc";
            return MysqlQuery.query.queryPagenate(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS,title + "%", "%" + title
                    , "%" + title + "%"},page,n);
        }
        else{
            sql="select * from videos where state=? and area=? and  (title like ? or title like ? or title like ?) order by createtime desc";
            return MysqlQuery.query.queryPagenate(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS,area,title + "%", "%" + title
                    , "%" + title + "%"},page,n);
        }
    }


    /**
     * 先获取最高人气 在根据时间排序
     */
    public List<Videos> getTopNewByTime(String area,int n)
    {
        if(area==null)
        {
            String sql="select *  from (select * from videos where state=?  order by createtime desc limit 0,?) as b order by totalplay desc ";
            return MysqlQuery.query.queryRows(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS,n});
        }
        else{
            String sql="select *  from (select * from videos where area=? and state=? order by createtime desc limit 0,?) as b order by totalplay desc";
            return MysqlQuery.query.queryRows(sql,Videos.class,new Object[]{area,CONST.VIDEO_SUCCESS,n});

        }
    }
    /**
     * 获得相关推荐
     */
    public List<Videos> getAboutVideo(Videos v,int n)
    {
        String sql="SELECT * FROM videos where vid!=? and state=?  ORDER BY RAND() LIMIT ?;";
        return MysqlQuery.query.queryRows(sql,Videos.class,new Object[]{v.getVid(),CONST.VIDEO_SUCCESS,n});
    }

    /**
     * 获得所有收藏夹
     */
    public List<Groups> getCollect(String name)
    {
        String sql="select * from groups where uid=?";
        return MysqlQuery.query.queryRows(sql,Groups.class,new Object[]{name});
    }
    /**
     * 根据收藏夹获得视频列表
     */
    public Map<String,List<Videos>> getCollect(List<Groups> groups)
    {
        Map<String,List<Videos>> map=new HashMap<>();
        for (Groups group : groups) {
            List<Collect> collects=MysqlQuery.query.queryRows("select * from collect where gid=?",Collect.class,new Object[]{group.getGid()});

            if(collects==null)
            {
                map.put(group.getGid(),new ArrayList<>());
                continue;
            }

            List<Videos> videos=new ArrayList<>();
            for (Collect collect : collects) {
                String sql="select * from videos where vid =?";
                Videos videos1= (Videos) MysqlQuery.query.queryRows(sql,Videos.class,new Object[]{collect.getVid()}).get(0);

                sql="select nickname from user where name=?";
                String nickname= (String) MysqlQuery.query.queryValue(sql,new Object[]{videos1.getAutor()});
                if(nickname!=null)
                {
                    videos1.setAutor(nickname);
                }

                videos.add(videos1);
            }
            map.put(group.getGid(),videos);
        }
        return map;
    }
    /**
     *
     * 把列表中作者的name改为nickname
     */
    public void setAutors(List<Videos> videosList)
    {

        if(videosList!=null) {
            String sql = "select nickname from user where name=?";
            for (Videos videos : videosList) {

                String nickname = (String) MysqlQuery.query.queryValue(sql, new Object[]{videos.getAutor()});
                if (nickname != null) {
                    videos.setAutor(nickname);
                }
            }
        }
    }

    /**
     * 获取某个分区的总页数 (每一页有n个)
     */
   public  int getTotalPageByArea(String title,String area,int n)
    {


        String sql="select count(1) from videos where area=? and state=? and (title like ? or title like ? or title like ?)";
        if(area==null)
        {
            sql="select count(1) from videos where state=? and (title like ? or title like ? or title like ?)";
            int total=MysqlQuery.query.queryNumber(sql,new Object[]{CONST.VIDEO_SUCCESS, title + "%", "%" + title
                    , "%" + title + "%"}).intValue();
            return total%n==0?total/n:total/n+1;
        }
        int total=MysqlQuery.query.queryNumber(sql,new Object[]{area,CONST.VIDEO_SUCCESS, title + "%", "%" + title
                , "%" + title + "%"}).intValue();
        return total%n==0?total/n:total/n+1;
    }
    /**
     * 获取全部过审的视频
     */
    public List<Videos> getTotalVideoSuccess()
    {
        String sql="select * from videos where state=?";
        return MysqlQuery.query.queryRows(sql,Videos.class,new Object[]{CONST.VIDEO_SUCCESS});
    }
}

