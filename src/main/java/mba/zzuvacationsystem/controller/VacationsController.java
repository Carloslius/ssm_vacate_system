package mba.zzuvacationsystem.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mba.zzuvacationsystem.pojo.Vacations;
import mba.zzuvacationsystem.service.VacationsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/vacationsController")
public class VacationsController {

    @Autowired
    @Qualifier("vacationsService")
    VacationsService vacationsService;

    @RequestMapping("/showMyVacations")
    public ModelAndView showMyVacations(String vsno, Integer pageNum){
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 8);
        List<Vacations> vacations = vacationsService.queryVacationsByVsno(vsno);
        PageInfo<Vacations> pageInfo = new PageInfo<Vacations>(vacations);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("vacations/myVacations");
        return modelAndView;
    }

    @RequestMapping("/addVacation")
    public String addVacation(Vacations vacation) {
        vacationsService.addVacation(vacation);
        return "redirect:/vacationsController/showMyVacations?vsno=" + vacation.getVsno() + "&pageNum=1";
    }

    @RequestMapping("/showMyDnoVacations")
    public ModelAndView showMyDnoVacations(String mdno, Integer pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 8);
        List<Vacations> vacations = vacationsService.queryVacationsByMdno(mdno);
        PageInfo<Vacations> pageInfo = new PageInfo<>(vacations);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("managers/vacations_manage");
        return modelAndView;
    }

    @RequestMapping("/showMyDnoVacationsStatus")
    public ModelAndView showMyDnoVacationsStatus(String mdno, Integer pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 8);
        List<Vacations> vacations = vacationsService.queryVacationsByMdnoAndStatus(mdno);
        PageInfo<Vacations> pageInfo = new PageInfo<>(vacations);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("managers/vacations_manage");
        return modelAndView;
    }

    @RequestMapping("deleteVacationByVno")
    public String deleteVacationByVno(String vno, String vdno) {
        vacationsService.deleteVacationByVno(vno);
        return "redirect:/vacationsController/showMyDnoVacations?mdno=" + vdno + "&pageNum=1";
    }

    @RequestMapping("/confirmVacationByVno")
    public String confirmVacationByVno(String vno, String vdno, String vmno) {
        vacationsService.updateVacationByVno(vno, vmno, "已批准");
        return "redirect:/vacationsController/showMyDnoVacations?mdno=" + vdno + "&pageNum=1";
    }

    @RequestMapping("/rejectVacationByVno")
    public String rejectVacationByVno(String vno, String vdno, String vmno) {
        vacationsService.updateVacationByVno(vno, vmno, "已驳回");
        return "redirect:/vacationsController/showMyDnoVacations?mdno=" + vdno + "&pageNum=1";
    }
}
