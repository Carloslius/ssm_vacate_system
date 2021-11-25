package mba.zzuvacationsystem.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mba.zzuvacationsystem.pojo.Students;
import mba.zzuvacationsystem.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

@Controller
@RequestMapping("/studentsController")
public class StudentsController {
    @Autowired
    @Qualifier("studentsService")
    private StudentsService studentsService;

    @RequestMapping("/login")
    public ModelAndView login(String sno, String spassword, HttpSession session, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        Students loginStudent = studentsService.login(sno, spassword);

        if (loginStudent == null) {
            modelAndView.addObject("msg", "用户名或密码错误！");
            modelAndView.addObject("sno", sno);
            modelAndView.setViewName("students/login");
        } else {
            Cookie cookie = new Cookie("sno", sno);
            cookie.setMaxAge(60 * 60 * 24 * 3);
            response.addCookie(cookie);
            session.setAttribute("student", loginStudent);
            modelAndView.setViewName("students/login_success");
        }
        return modelAndView;
    }

    @RequestMapping("/logOut")
    public String logOut(HttpSession session){
        session.invalidate();
        return "students/login";
    }

    @RequestMapping("/register")
    public ModelAndView register(Students student, String code, HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        String token = (String) session.getAttribute(KAPTCHA_SESSION_KEY);
        session.removeAttribute(KAPTCHA_SESSION_KEY);
        if (token != null && token.equalsIgnoreCase(code)) {
            if (studentsService.isExistSno(student.getSno())) {
                modelAndView.addObject("msg", "学号" + student.getSno() + "已存在！");
                modelAndView.addObject("sno", student.getSno());
                modelAndView.addObject("sname", student.getSname());
                modelAndView.addObject("sbirthday", student.getSbirthday());
                modelAndView.addObject("sphone", student.getSphone());
                modelAndView.setViewName("students/register");
            } else {
                studentsService.saveStudent(student);
                session.setAttribute("student", student);
                modelAndView.setViewName("students/register_success");
            }
        } else {
            modelAndView.addObject("msg", "学号" + student.getSno() + "已存在！");
            modelAndView.addObject("sno", student.getSno());
            modelAndView.addObject("sname", student.getSname());
            modelAndView.addObject("sbirthday", student.getSbirthday());
            modelAndView.addObject("sphone", student.getSphone());
            modelAndView.setViewName("students/register");
        }
        return modelAndView;
    }

    @RequestMapping("/showStudents")
    public ModelAndView showStudents(Integer pageNum){
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 8);
        List<Students> students = studentsService.queryStudents();
        PageInfo<Students> pageInfo = new PageInfo<Students>(students);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("managers/students_manager");
        return modelAndView;
    }

    @RequestMapping("/showStudentFromSno")
    public ModelAndView showStudentFromSno(String sno){
        ModelAndView modelAndView = new ModelAndView();
        Students studentItem = studentsService.queryStudentFromSno(sno);
        modelAndView.addObject("studentItem", studentItem);
        modelAndView.setViewName("managers/student_edit");
        return modelAndView;
    }
}
