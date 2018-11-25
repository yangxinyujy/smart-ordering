package com.whale.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: ssm
 * @description: 静态页面测试控制
 * @author: yangxinyu
 * @create: 2018-07-17 11:33
 **/
@Controller
@RequestMapping("/admin")
public class AdminLoginController {
    @RequestMapping(value = "/login")
    public String test(){
        return "/admin/login/login";
    }
}