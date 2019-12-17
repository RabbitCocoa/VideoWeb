package edu.fzu.sm.util.JDBCManager;

/**
 * 配置信息管理类 ，保存读取的配置信息
 */
public class Configuration {
    private String Driver; //驱动类
    private String Url; //JDBC URL
    private String User;//数据库用户名
    private String Password;//数据库密码
    private String UsingDb;//使用的数据库 mysql
    private String DbName;//数据库名
    private String PoPackage;//实体类路径
    private String ImgPath;//保存的头像路径
    private String VdoPath;//保存的视频路径
    private String CovPath;//保存的封面路径
    private String ProjectName;//项目名

    public String getProjectName() {
        return ProjectName;
    }

    public void setProjectName(String projectName) {
        ProjectName = projectName;
    }

    public String getCovPath() {
        return CovPath;
    }

    public void setCovPath(String covPath) {
        CovPath = covPath;
    }

    public String getImgPath() {
        return ImgPath;
    }

    public void setImgPath(String imgPath) {
        ImgPath = imgPath;
    }

    public String getVdoPath() {
        return VdoPath;
    }

    public void setVdoPath(String vdoPath) {
        VdoPath = vdoPath;
    }

    public String getPoPackage() {
        return PoPackage;
    }

    public void setPoPackage(String poPackage) {
        PoPackage = poPackage;
    }

    public String getDbName() {
        return DbName;
    }

    public void setDbName(String dbName) {
        DbName = dbName;
    }

    public Configuration(String driver, String url, String user, String password, String usingDb, String srcPath, String poPackage, String DbName) {
        Driver = driver;
        Url = url;
        User = user;
        Password = password;
        UsingDb = usingDb;
        this.DbName = DbName;

    }

    public Configuration() {
    }

    public String getDriver() {
        return Driver;
    }

    public void setDriver(String driver) {
        Driver = driver;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String url) {
        Url = url;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String user) {
        User = user;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getUsingDb() {
        return UsingDb;
    }

    public void setUsingDb(String usingDb) {
        UsingDb = usingDb;
    }

}
