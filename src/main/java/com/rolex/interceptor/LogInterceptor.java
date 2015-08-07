/*
 * @(#)LogInterceptor.java	1.0 2015/8/7
 *
 */
package com.rolex.interceptor;

import com.rolex.igeek.controller.CategoryController;
import com.rolex.igeek.controller.LoginController;
import com.rolex.igeek.dao.CategoryDao;
import com.rolex.igeek.dao.LogDao;
import com.rolex.igeek.po.Category;
import com.rolex.system.po.User;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.applet.AppletContext;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/8/7
 * version: 1.0
 */
public class LogInterceptor implements HandlerInterceptor{

    @Resource
    private LogDao logDao;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        String path = httpServletRequest.getServletPath();

        User user = (User)httpServletRequest.getSession().getAttribute("LOGIN_USER");
        String ip = httpServletRequest.getLocalAddr();
        Object obj = ((HandlerMethod)o).getBean();
        if(obj instanceof LoginController){
            logDao.log(user, ip, null, "login", null, "登录");
        }else if(path.contains("/view/")){
            String[] str = path.split("/");
            logDao.log(user, ip, str[1], str[2], Integer.parseInt(str[3]), "查看"+str[1]);
        }
    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
