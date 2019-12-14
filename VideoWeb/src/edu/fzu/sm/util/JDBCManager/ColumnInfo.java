package edu.fzu.sm.util.JDBCManager;

/*封装数据库表中一个字段的信息*/
public class ColumnInfo {
    private String name;//字段名
    private String type;//字段类型 varchar int
    private int keyType;//0-普通 1-主键 2-外键

    public ColumnInfo() {
    }

    public ColumnInfo(String name, String type, int keyType) {
        this.name = name;
        this.type = type;
        this.keyType = keyType;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public int getKeyType() {
        return keyType;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setKeyType(int keyType) {
        this.keyType = keyType;
    }
}
