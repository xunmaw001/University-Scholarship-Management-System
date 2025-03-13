package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiangxuejinleixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiangxuejinleixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiangxuejinleixingView;


/**
 * 奖学金类型
 *
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
public interface JiangxuejinleixingService extends IService<JiangxuejinleixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiangxuejinleixingVO> selectListVO(Wrapper<JiangxuejinleixingEntity> wrapper);
   	
   	JiangxuejinleixingVO selectVO(@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);
   	
   	List<JiangxuejinleixingView> selectListView(Wrapper<JiangxuejinleixingEntity> wrapper);
   	
   	JiangxuejinleixingView selectView(@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiangxuejinleixingEntity> wrapper);
   	
}

