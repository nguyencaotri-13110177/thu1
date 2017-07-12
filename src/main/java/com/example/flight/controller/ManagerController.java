package com.example.flight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ManagerController {
    @RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
    public String dangnhap() {
        return "dangnhap";
    }
    
    @RequestMapping(value = "/quenmatkhau", method = RequestMethod.GET)
    public String quenmatkhau() {
        return "quenmatkhau";
    }
    
    @RequestMapping(value = "/quanly", method = RequestMethod.GET)
    public String quanly() {
        return "quanly";
    }
}
