package com.dao;

import com.entity.JiangxuejinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiangxuejinxinxiVO;
import com.entity.view.JiangxuejinxinxiView;


/**
 * 奖学金信息
 * 
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
public interface JiangxuejinxinxiDao extends BaseMapper<JiangxuejinxinxiEntity> {
	
	List<JiangxuejinxinxiVO> selectListVO(@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);
	
	JiangxuejinxinxiVO selectVO(@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);
	
	List<JiangxuejinxinxiView> selectListView(@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);

	List<JiangxuejinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);
	
	JiangxuejinxinxiView selectView(@Param("ew") Wrapper<JiangxuejinxinxiEntity> wrapper);
	
}
