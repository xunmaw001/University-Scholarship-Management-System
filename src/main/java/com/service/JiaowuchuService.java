package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaowuchuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaowuchuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaowuchuView;


/**
 * 教务处
 *
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
public interface JiaowuchuService extends IService<JiaowuchuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaowuchuVO> selectListVO(Wrapper<JiaowuchuEntity> wrapper);
   	
   	JiaowuchuVO selectVO(@Param("ew") Wrapper<JiaowuchuEntity> wrapper);
   	
   	List<JiaowuchuView> selectListView(Wrapper<JiaowuchuEntity> wrapper);
   	
   	JiaowuchuView selectView(@Param("ew") Wrapper<JiaowuchuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaowuchuEntity> wrapper);
   	
}

