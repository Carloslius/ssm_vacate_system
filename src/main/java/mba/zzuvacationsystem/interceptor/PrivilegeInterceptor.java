package mba.zzuvacationsystem.interceptor;

import mba.zzuvacationsystem.pojo.Managers;
import mba.zzuvacationsystem.pojo.Students;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrivilegeInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Students loginStudent = (Students) request.getSession().getAttribute("student");
        Managers loginManager = (Managers) request.getSession().getAttribute("manager");
        if (loginStudent == null && loginManager == null){
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return false;
        }else {
            return true;
        }
    }
}
