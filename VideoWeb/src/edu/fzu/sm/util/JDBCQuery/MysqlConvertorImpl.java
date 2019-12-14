package edu.fzu.sm.util.JDBCQuery;



public class MysqlConvertorImpl implements  TypeConvertor {
    @Override
    public String dataToJava(String type) {
        switch(type)
         {
            case "VARCHAR":return "String";
            case "CHAR":return "String";
            case "INT":return "Integer";
            case "TINYINT":return "Integer";
            case "SMALLINT":return "Integer";
            case "INTEGER":return "Integer";
            case "BIGINT":return "Long";
            case "DOUBLE":return "Double";
            case "FLOAT":return "Float";
            case "CLOB" :return "String";
            case "BLOB" :return "byte[]";
            case "DATE" :return "java.sql.Date";
            case "TIMESTAMP" :return "java.sql.Timestamp";
            case "TEXT":return "String";
            case "BIT":return "Integer";
            case "MEDIUMBLOB": return "byte[]";

        }
        return null;
    }

    @Override
    public String JavaToData(String type) {
        return null;
    }


}
