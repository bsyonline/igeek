/*
 * @(#)LoginController.java	1.0 2015/5/19
 *
 */
package com.rolex.igeek.controller;

import com.rolex.system.dao.UserDao;
import com.rolex.system.po.Menu;
import com.rolex.system.po.User;
import com.rolex.util.MD5;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: rolex
 * Date: 2015/5/19
 * version: 1.0
 */
@Controller
public class RegController {

    @Resource
    private UserDao userDao;
    @Resource
    private JavaMailSender mailSender;

    @RequestMapping("/signIn")
    public ModelAndView signIn(User user){
        user.setPassword(MD5.encrypt(user.getPassword()));
        userDao.save(user);
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true);
            helper.setTo(user.getEmail());
            helper.setFrom("151251771@qq.com");
            helper.setSubject("igeek");
            helper.setText("<html><head></head><body>Dear "+user.getUsername()+",<br>Thank for register igeek,please click <a href='#'>here</a> to activate.<br>igeek.</body></html>",true);
            mailSender.send(mimeMessage);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return new ModelAndView("forward:/jsp/activate.jsp");
    }

    @RequestMapping("/reg")
    public ModelAndView reg(){
        return new ModelAndView("forward:/jsp/reg.jsp");
    }

    @RequestMapping("/activate")
    public ModelAndView activate(){
        return new ModelAndView("forward:/jsp/login.jsp");
    }
}
