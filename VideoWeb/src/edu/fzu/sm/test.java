package edu.fzu.sm;

import edu.fzu.sm.entity.User;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;

import java.sql.Timestamp;

public class test {
    public static void main(String[] args) {
        User user=new User();
        user.setName("xg108575");

        MysqlQuery.query.delete(user);
    }
}
