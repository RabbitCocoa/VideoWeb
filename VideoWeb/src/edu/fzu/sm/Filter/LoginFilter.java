package edu.fzu.sm.Filter;

import edu.fzu.sm.CONST;
import edu.fzu.sm.entity.User;
import edu.fzu.sm.util.JDBCManager.DBManager;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req=(HttpServletRequest)servletRequest;
        HttpServletResponse resp=(HttpServletResponse)servletResponse;

      if(!req.getRequestURI().contains(".jsp"))
          {
            filterChain.doFilter(servletRequest,servletResponse);
            return ;
        }

        User user= (User) req.getSession().getAttribute("user");
        if(user==null)
        {
            resp.sendRedirect(DBManager.getConf().getProjectName()+"/login.jsp");
            filterChain.doFilter(servletRequest,servletResponse);
            return ;
        }
        else{
            if(user.getState().equals(CONST.ADMIN))
            {
                resp.sendRedirect(DBManager.getConf().getProjectName()+"/ManagerInfoServlet");
                filterChain.doFilter(servletRequest,servletResponse);
                return ;
            }
            else{
                if(req.getRequestURI().contains("index.jsp")) {
                    resp.sendRedirect(DBManager.getConf().getProjectName() + "/UserInfoServlet");
                }}
        }
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
