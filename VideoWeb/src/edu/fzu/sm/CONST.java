package edu.fzu.sm;

import java.util.List;

/**
 * 保留一些常量
 */
public class CONST {
    /**
     * 用户属性常量
     */
    public  static String ADMIN="管理员";
    public  static String NORMAL="正常";
    public  static String BAN="封禁";

    /**
     * 视频类型常量
     */
    public static String AREA_ANIMATION="动画";
    public static String AREA_GAME="游戏";
    public static String AREA_FOOD="美食";
    public static String AREA_MUSIC="音乐";
    public static String AREA_CARTOON="番剧";
    public static String AREA_MOVE="影视";
    public static String AREA_OHTER="其他";
    public static String AREA_ALL="全部";

    public static String[] AREAS={
           AREA_ANIMATION,AREA_CARTOON,AREA_MUSIC, AREA_GAME,AREA_MOVE,AREA_FOOD,AREA_OHTER
    };

    /**
     * 视频状态常量
     */
    public static String VIDEO_SUCCESS="已发布";
    public static String VIDEO_EXAMINE="审核中";
    public static String VIDEO_FAILED="未过审";

    /**
     * 点赞与收藏按钮状态
     */
    public  static String ZAN_YES="已点赞";
    public  static String ZAN_NO="未点赞";

    public static String COLLECT_YES="已收藏";
    public static String COLLECT_NO="未收藏";

}
