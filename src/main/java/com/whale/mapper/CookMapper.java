package com.whale.mapper;

import com.whale.model.Cook;
import com.whale.model.CookExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CookMapper {
    long countByExample(CookExample example);

    int deleteByExample(CookExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cook record);

    int insertSelective(Cook record);

    List<Cook> selectByExample(CookExample example);

    Cook selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Cook record, @Param("example") CookExample example);

    int updateByExample(@Param("record") Cook record, @Param("example") CookExample example);

    int updateByPrimaryKeySelective(Cook record);

    int updateByPrimaryKey(Cook record);
}