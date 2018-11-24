package com.whale.service;

import com.whale.mapper.CookMapper;
import com.whale.model.Cook;
import com.whale.model.CookExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CookServiceImpl implements CookService {
    @Autowired
    CookMapper cookMapper;

    @Override
    public List<Cook> selectAll() {
        CookExample example = new CookExample();
        return cookMapper.selectByExample(example);
    }
}
