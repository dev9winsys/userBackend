package com.groupware.userbackend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserBackendController {

    //案内ページへの移動
    @RequestMapping(value = {"", "/", "/intro","/index"})
    public String intro(){
        return "intro";
    }

    //テスト用のサンプル、JSON発信ページへの移動
    @RequestMapping("/sample")
    public String request(){
        return "sample";
    }

    //idから始まる場合は各idページへリクエストを割り振る
    @RequestMapping("/id*")
    public String idConv(HttpServletRequest request){
        return request.getServletPath();
    }
}
