package mba.zzuvacationsystem.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import mba.zzuvacationsystem.pojo.Records;
import mba.zzuvacationsystem.service.RecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/recordsController")
public class RecordsController {

    @Autowired
    @Qualifier("recordsService")
    RecordsService recordsService;

    @RequestMapping("/showMyRecords")
    public ModelAndView showMyRecords(String rsno, Integer pageNum) {
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 8);
        List<Records> records = recordsService.queryRecordByRsno(rsno);
        PageInfo<Records> pageInfo = new PageInfo<Records>(records);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("records/myRecords");
        return modelAndView;
    }

    @RequestMapping("/addRecord")
    public String addRecord(Records record){
        recordsService.addRecord(record);
        return "redirect:/recordsController/showMyRecords?rsno=" + record.getRsno() + "&pageNum=1";
    }

    @RequestMapping("/showMyDnoRecords")
    public ModelAndView showMyDnoRecords(String mdno, Integer pageNum){
        ModelAndView modelAndView = new ModelAndView();
        PageHelper.startPage(pageNum, 8);
        List<Records> records = recordsService.queryRecordsByMdno(mdno);
        PageInfo<Records> pageInfo = new PageInfo<Records>(records);
        modelAndView.addObject("pageInfo", pageInfo);
        modelAndView.setViewName("managers/records_manage");
        return modelAndView;
    }

    @RequestMapping("/deleteRecordByRno")
    public String deleteRecordByRno(String rno, String rdno) {
        recordsService.deleteRecordByRno(rno);
        return "redirect:/recordsController/showMyDnoRecords?mdno=" + rdno + "&pageNum=1";
    }
}
