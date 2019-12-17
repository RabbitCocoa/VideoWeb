package edu.fzu.sm.entity;

public class User {
    private String name;
    private String pwd;
    private String nickname;
    private String email;
    private String des;
    private String photo;
    private String createtime;
    private String state;




    @Override
    public String toString() {
        return "user{" +
                "Name='" + name + '\'' +
                ", Pwd='" + pwd + '\'' +
                ", Nickname='" + nickname + '\'' +
                ", Email='" + email + '\'' +
                ", Des='" + des + '\'' +
                ", Photo='" + photo + '\'' +
                ", Createtime=" + createtime +
                ", state=" + state +
                '}';
    }



    public String getName() {
        return name;
    }

    public String getState() {
        return state;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setState(String state) {
        this.state = state;

    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createTime) {
        this.createtime = createTime;
    }




}
