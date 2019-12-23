package edu.fzu.sm.servlet;

import edu.fzu.sm.entity.Groups;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.util.JDBCManager.DBManager;
import edu.fzu.sm.util.JDBCQuery.MysqlQuery;
import edu.fzu.sm.util.PublicUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addCollectGroupServlet")
public class addCollectGroupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String gname=req.getParameter("gname");
        User user= (User) req.getSession().getAttribute("user");
        /*查询是否重名 */
        if(MysqlQuery.query.queryRows("select * from Groups where gname=? and uid=?",
                Groups.class,new Object[]{gname,user.getName()})!=null)
        {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/VCollectServlet");
            return ;
        }


        Groups group=new Groups();
        group.setGname(gname);
        group.setUid(user.getName());
        group.setGid(PublicUtil.getU20());
        if(MysqlQuery.query.insert(group)==1) {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/VCollectServlet");
        }
        else{
           resp.sendRedirect(DBManager.getConf().getProjectName()+"/404.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
