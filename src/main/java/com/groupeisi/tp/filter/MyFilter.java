package com.groupeisi.tp.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class MyFilter implements Filter {
    public MyFilter(){}

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        String username = (String)session.getAttribute("username"); // get username session
        String path = req.getServletPath();
        String methode = req.getMethod();
        if (username != null || path.equals("/") || path.equals("/login") || path.startsWith("/") && methode.equals("POST"))
            chain.doFilter(request, response);
        else
            res.sendRedirect(req.getContextPath());
    }
}
