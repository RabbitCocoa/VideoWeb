package edu.fzu.sm.servlet;

import edu.fzu.sm.CONST;
import edu.fzu.sm.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/BanUserServlet")
public class BanUserServlet extends HttpServlet {
    private UserService userService=new UserService();



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("Name");
        String state=req.getParameter("State");
        PrintWriter writer=resp.getWriter();
        if(name!=null&&!name.equals(""))
        {

            /*封禁用户 并且重新返回查询结果*/
            int result=userService.banUser(name,state);
            if(result==1)
            {
                writer.write("success");

            }
            else{
                writer.write("failed");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
