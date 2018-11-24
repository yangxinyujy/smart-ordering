package com.whale.service;

import com.whale.model.Cook;

import java.util.List;

/**
 * @program: smart-ordering
 * @description:
 * @author: yangxinyu
 * @create: 2018-11-24
 **/
public interface CookService {
    List<Cook> selectAll();
}
