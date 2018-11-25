package com.whale.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: ssm
 * @description: 后台首页
 * @author: yangxinyu
 * @create: 2018-07-23 09:46
 **/
@Controller
@RequestMapping("/admin")
public class AdminHomeController {
    @RequestMapping(value = {"/home",""})
    public String home() {
        return "/admin/home";
    }
}
