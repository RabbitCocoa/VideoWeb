package edu.fzu.sm.util.JDBCManager;

import java.util.List;
import java.util.Map;

/*
    封装一个表信息
 */
public class TableInfo {
    public TableInfo() {
    }

    public TableInfo(String tname, Map<String, ColumnInfo> columns, List<ColumnInfo> priKeys) {
        this.tname = tname;
        this.columns = columns;
        this.priKeys = priKeys;
    }

    private String tname;//表名
    /**
     * 所有字段的信息 如 uname 和表中的 uname对应
     */
    private Map<String,ColumnInfo> columns;
    /*
     * 主键信息
     */
    private List<ColumnInfo> priKeys;

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Map<String, ColumnInfo> getColumns() {
        return columns;
    }

    public void setColumns(Map<String, ColumnInfo> columns) {
        this.columns = columns;
    }

    public List<ColumnInfo> getPriKeys() {
        return priKeys;
    }

    public void setPriKeys(List<ColumnInfo> priKeys) {
        this.priKeys = priKeys;
    }
}
