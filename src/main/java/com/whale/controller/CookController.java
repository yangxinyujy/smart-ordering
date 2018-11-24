package com.whale.controller;

import com.whale.model.Cook;
import com.whale.service.CookService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: smart-ordering
 * @description:
 * @author: yangxinyu
 * @create: 2018-11-24
 **/

@Api(description = "菜肴")
@RestController
@RequestMapping("/cook")
public class CookController {
    @Autowired
    CookService cookService;

    @ApiOperation(value = "返回菜单")
    @GetMapping("/menu")
    public Map<String, Object> menu(){
        Map<String, Object> res = new HashMap<>();
        List<Cook> cooks = cookService.selectAll();
        res.put("data", cooks);
        return res;
    }
}
