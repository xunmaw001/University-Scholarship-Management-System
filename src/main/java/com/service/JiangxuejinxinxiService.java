package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiangxuejinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiangxuejinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiangxuejinxinxiView;


/**
 * 奖学金信息
 *
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
public interface JiangxuejinxinxiService extends IService<JiangxuejinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiangxuejinxinxiVO> selectListVO(Wrapper<JiangxuejinxinxiEntity> wrapper);
   	
   	JiangxuejinxinxiVO selectVO(@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);
   	
   	List<JiangxuejinxinxiView> selectListView(Wrapper<JiangxuejinxinxiEntity> wrapper);
   	
   	JiangxuejinxinxiView selectView(@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiangxuejinxinxiEntity> wrapper);
   	
}

