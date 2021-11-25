package mba.zzuvacationsystem.controller;

import mba.zzuvacationsystem.pojo.Managers;
import mba.zzuvacationsystem.pojo.Students;
import mba.zzuvacationsystem.service.ManagersService;
import mba.zzuvacationsystem.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

@Controller
@RequestMapping("/managersController")
public class ManagersController {

    @Autowired
    @Qualifier("managersService")
    ManagersService managersService;
    @Autowired
    @Qualifier("studentsService")
    StudentsService studentsService;

    @RequestMapping("/login")
    public ModelAndView login(String mno, String mpassword, HttpSession session, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        Managers loginManager = managersService.login(mno, mpassword);
        if (loginManager != null) {
            Cookie cookie = new Cookie("mno", mno);
            cookie.setMaxAge(60 * 60 * 24 * 7);
            response.addCookie(cookie);
            session.setAttribute("manager", loginManager);
            modelAndView.setViewName("managers/login_success");
        } else {
            modelAndView.addObject("msg", "账号或密码错误！");
            modelAndView.addObject("mno", mno);
            modelAndView.setViewName("managers/login");
        }
        return modelAndView;
    }

    @RequestMapping("/logOut")
    public String logOut(HttpSession session) throws ServletException, IOException {
        session.invalidate();
        return  "managers/login";
    }

    @RequestMapping("/register")
    public ModelAndView register(Managers manager, String code, HttpSession session, HttpServletResponse response) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        String token = (String) session.getAttribute(KAPTCHA_SESSION_KEY);
        session.removeAttribute(KAPTCHA_SESSION_KEY);
        if (token != null && token.equalsIgnoreCase(code)) {
            if (managersService.isExistMno(manager.getMno())) {
                modelAndView.addObject("msg", "账号" + manager.getMno() + "已存在");
                modelAndView.addObject("mno", manager.getMno());
                modelAndView.addObject("mname", manager.getMname());
                modelAndView.setViewName("managers/register");
            } else {
                managersService.register(manager);
                session.setAttribute("manager", manager);
                modelAndView.setViewName("managers/register_success");
            }
        } else {
            modelAndView.addObject("msg", "账号" + manager.getMno() + "已存在");
            modelAndView.addObject("mno", manager.getMno());
            modelAndView.addObject("mname", manager.getMname());
            modelAndView.setViewName("managers/register");
        }
        return modelAndView;
    }

    @RequestMapping("/updateStudentsBySno")
    public String updateStudentsBySno(Students student, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        studentsService.updateStudent(student);
        return "redirect:/studentsController/showStudents?pageNum=1";
    }
}
