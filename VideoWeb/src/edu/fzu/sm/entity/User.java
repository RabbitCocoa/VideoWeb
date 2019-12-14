package edu.fzu.sm.entity;

import java.sql.Timestamp;

public class User {
    private String  Name;
    private String Pwd;
    private String Nickname;
    private String Email;
    private String Des;
    private String Photo;
    private String Createtime;
    private Integer state;

    @Override
    public String toString() {
        return "user{" +
                "Name='" + Name + '\'' +
                ", Pwd='" + Pwd + '\'' +
                ", Nickname='" + Nickname + '\'' +
                ", Email='" + Email + '\'' +
                ", Des='" + Des + '\'' +
                ", Photo='" + Photo + '\'' +
                ", Createtime=" + Createtime +
                ", state=" + ToState() +
                '}';
    }

    /*状态转化为对应的字符串*/
    public String ToState()
    {
        switch(state)
        {
            case 0:
                return "封禁";
            case 1:
                return "正常";
            default:
                return "异常";
        }
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getPwd() {
        return Pwd;
    }

    public void setPwd(String pwd) {
        Pwd = pwd;
    }

    public String getNickname() {
        return Nickname;
    }

    public void setNickname(String nickname) {
        Nickname = nickname;
    }

    public String getEmail() {
        return Email;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getDes() {
        return Des;
    }

    public void setDes(String des) {
        Des = des;
    }

    public String getPhoto() {
        return Photo;
    }

    public void setPhoto(String photo) {
        Photo = photo;
    }

    public String getCreatetime() {
        return Createtime;
    }

    public void setCreatetime(String createTime) {
        Createtime = createTime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
