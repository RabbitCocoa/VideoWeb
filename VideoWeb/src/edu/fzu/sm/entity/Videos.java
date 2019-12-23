package edu.fzu.sm.entity;

public class Videos {
    private String vid;
    private String title;
    private String vsrc;
    private String psrc;
    private String area;
    private String dection;

    @Override
    public String toString() {
        return "Videos{" +
                "vid='" + vid + '\'' +
                ", title='" + title + '\'' +
                ", vsrc='" + vsrc + '\'' +
                ", psrc='" + psrc + '\'' +
                ", area='" + area + '\'' +
                ", dection='" + dection + '\'' +
                ", autor='" + autor + '\'' +
                ", createtime='" + createtime + '\'' +
                ", state='" + state + '\'' +
                ", zan=" + zan +
                ", bcollect=" + bcollect +
                ", totalplay=" + totalplay +
                '}';
    }

    private String autor;
    private String createtime;
    private String state;
    private Integer zan;
    private Integer bcollect;
    private Integer totalplay;

    public Integer getBcollect() {
        return bcollect;
    }

    public void setBcollect(Integer bcollect) {
        this.bcollect = bcollect;
    }

    public Integer getTotalplay() {
        return totalplay;
    }

    public void setTotalplay(Integer totalplay) {
        this.totalplay = totalplay;
    }

    public Integer getZan() {
        return zan;
    }

    public void setZan(Integer zan) {
        this.zan = zan;
    }

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getVsrc() {
        return vsrc;
    }

    public void setVsrc(String vsrc) {
        this.vsrc = vsrc;
    }

    public String getPsrc() {
        return psrc;
    }

    public void setPsrc(String psrc) {
        this.psrc = psrc;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getDection() {
        return dection;
    }

    public void setDection(String dection) {
        this.dection = dection;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
