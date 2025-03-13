package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JiangxuejinleixingDao;
import com.entity.JiangxuejinleixingEntity;
import com.service.JiangxuejinleixingService;
import com.entity.vo.JiangxuejinleixingVO;
import com.entity.view.JiangxuejinleixingView;

@Service("jiangxuejinleixingService")
public class JiangxuejinleixingServiceImpl extends ServiceImpl<JiangxuejinleixingDao, JiangxuejinleixingEntity> implements JiangxuejinleixingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiangxuejinleixingEntity> page = this.selectPage(
                new Query<JiangxuejinleixingEntity>(params).getPage(),
                new EntityWrapper<JiangxuejinleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiangxuejinleixingEntity> wrapper) {
		  Page<JiangxuejinleixingView> page =new Query<JiangxuejinleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiangxuejinleixingVO> selectListVO(Wrapper<JiangxuejinleixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiangxuejinleixingVO selectVO(Wrapper<JiangxuejinleixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiangxuejinleixingView> selectListView(Wrapper<JiangxuejinleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiangxuejinleixingView selectView(Wrapper<JiangxuejinleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
