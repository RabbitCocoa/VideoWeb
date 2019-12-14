package edu.fzu.sm.util.JDBCQuery;

/*
  实现java类型与数据库类型的互转
 */
public interface TypeConvertor {
    public String dataToJava(String type);
    public String JavaToData(String type);
}
