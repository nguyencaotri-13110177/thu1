package com.example.flight.controller;

import com.example.flight.entity.SearchResult2;
import com.example.flight.entity.SearchTicket;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchTicketController {
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
    
    @RequestMapping(value = "/huongdan", method = RequestMethod.GET)
    public String huongdan() {
        return "huongdan";
    }
            
    @RequestMapping(value = "/thanhtoan", method = RequestMethod.GET)
    public String thanhtoan(ModelMap mm) {
        
        mm.addAttribute("id", SearchResult2.id);
        mm.addAttribute("TongTien", SearchResult2.TongGiaTien);
        
        return "thanhtoan";
    }
    
    @RequestMapping(value = "/chuyenkhoan", method = RequestMethod.GET)
    public String chuyenkhoan(ModelMap mm) {
        mm.addAttribute("id", SearchResult2.id);
        mm.addAttribute("TongTien", SearchResult2.TongGiaTien);
        return "chuyenkhoan";
    }
     
    
    @RequestMapping(value = "/momo", method = RequestMethod.GET)
    public String momo(ModelMap mm) {
        mm.addAttribute("id", SearchResult2.id);
        mm.addAttribute("TongTien", SearchResult2.TongGiaTien);
        return "momo";
    }
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contact() {
        return "contact";
    }

    
}
