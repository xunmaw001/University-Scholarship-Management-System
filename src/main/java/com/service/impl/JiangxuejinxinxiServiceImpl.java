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


import com.dao.JiangxuejinxinxiDao;
import com.entity.JiangxuejinxinxiEntity;
import com.service.JiangxuejinxinxiService;
import com.entity.vo.JiangxuejinxinxiVO;
import com.entity.view.JiangxuejinxinxiView;

@Service("jiangxuejinxinxiService")
public class JiangxuejinxinxiServiceImpl extends ServiceImpl<JiangxuejinxinxiDao, JiangxuejinxinxiEntity> implements JiangxuejinxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiangxuejinxinxiEntity> page = this.selectPage(
                new Query<JiangxuejinxinxiEntity>(params).getPage(),
                new EntityWrapper<JiangxuejinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiangxuejinxinxiEntity> wrapper) {
		  Page<JiangxuejinxinxiView> page =new Query<JiangxuejinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiangxuejinxinxiVO> selectListVO(Wrapper<JiangxuejinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiangxuejinxinxiVO selectVO(Wrapper<JiangxuejinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiangxuejinxinxiView> selectListView(Wrapper<JiangxuejinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiangxuejinxinxiView selectView(Wrapper<JiangxuejinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
