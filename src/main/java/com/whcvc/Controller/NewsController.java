package com.whcvc.Controller;

import com.whcvc.domain.News;
import com.whcvc.domain.PageForm;
import com.whcvc.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class NewsController {
    @Autowired
    private NewsService newsService;

    private int PageNum = 5;

    private Date date;

    @RequestMapping("/")
    public ModelAndView getIndex(String nowPage){
        ModelAndView mv = new ModelAndView();
        PageForm pf=new PageForm();
        pf.setShowNum(PageNum);
        int count = newsService.findNewsCount(),pages;
        if (nowPage != null) {
            pf.setStartNews(Integer.parseInt(nowPage) * PageNum);
        } else {
            pf.setStartNews(0);
            nowPage="0";
        }
        if (count%PageNum == 0) {
            pages = count / PageNum;
        } else {
            pages = count / PageNum + 1;
        }
        List<News> list = newsService.findPartNews(pf);
        mv.addObject("list",list);
        mv.addObject("Pages",pages);
        mv.addObject("nowPage",nowPage);
        mv.setViewName("/index");
        return mv;
    }

    @RequestMapping("/insertAction")
    public String insert(News news){
        date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        news.setCreateTime(format.format(date));
        newsService.insert(news);
        return "redirect:/";
    }

    @RequestMapping("/delAction")
    public String del(int id){
        newsService.delete(id);
        return "redirect:/";
    }
    @RequestMapping("update")
    public String update(Model model,int id){
        News n  = newsService.findById(id);
        model.addAttribute("news",n);
        return "/update";
    }

    @RequestMapping("newspage")
    public String newsPage(Model model,int id){
        News news = newsService.findById(id);
        model.addAttribute("news",news);
        return "newsPage";
    }
    @RequestMapping("updateAction")
    public String updateAction(News news){
        newsService.update(news);
        return "redirect:/";
    }




}
