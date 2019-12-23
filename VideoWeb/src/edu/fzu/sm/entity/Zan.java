package edu.fzu.sm.entity;

public class Zan {
    private Integer id;
    private String bzid;
    private String zid;
    private String time;
    private String vid;

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBzid() {
        return bzid;
    }

    public void setBzid(String bzid) {
        this.bzid = bzid;
    }

    public String getZid() {
        return zid;
    }

    public void setZid(String zid) {
        this.zid = zid;
    }
}
