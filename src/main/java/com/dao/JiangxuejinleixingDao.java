package com.dao;

import com.entity.JiangxuejinleixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiangxuejinleixingVO;
import com.entity.view.JiangxuejinleixingView;


/**
 * 奖学金类型
 * 
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
public interface JiangxuejinleixingDao extends BaseMapper<JiangxuejinleixingEntity> {
	
	List<JiangxuejinleixingVO> selectListVO(@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);
	
	JiangxuejinleixingVO selectVO(@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);
	
	List<JiangxuejinleixingView> selectListView(@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);

	List<JiangxuejinleixingView> selectListView(Pagination page,@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);
	
	JiangxuejinleixingView selectView(@Param("ew") Wrapper<JiangxuejinleixingEntity> wrapper);
	
}
