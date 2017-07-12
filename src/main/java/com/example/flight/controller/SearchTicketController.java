package com.example.flight.controller;

import com.example.flight.entity.SearchResult2;
import com.example.flight.entity.SearchTicket;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class SearchTicketController {

    private static final String API_KEY_GIUCHO = "12wsdfr4sad"; //API key giữ chỗ có giá trị đến hết ngày 2018-06-11 00:00:00.000

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

        //Giu Ve
        String uri = "http://www.datvemaybay.somee.com/api/Booking?key=" + API_KEY_GIUCHO + "&hang=" + SearchResult2.Hang + "&madatcho=" + SearchResult2.id + "";

        RestTemplate restTemplate = new RestTemplate();
        boolean f = false;
        f = restTemplate.getForObject(uri, boolean.class);

        if (f == false) {  //vé đã bị thanh toán trước, vui lòng chọn vé lại
            return "chonvelai";
        } else {
            mm.addAttribute("id", SearchResult2.id);
            mm.addAttribute("TongTien", SearchResult2.TongGiaTien);

            Calendar date = Calendar.getInstance();
            long t = date.getTimeInMillis();
            Date afterAddingMins = new Date(t + (60 * 60000));

            mm.addAttribute("ThanhToanTruoc", afterAddingMins);

            return "thanhtoan";
        }

    }

    @RequestMapping(value = "/chonvelai", method = RequestMethod.GET)
    public String chonvelai() {

        return "chonvelai";
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
