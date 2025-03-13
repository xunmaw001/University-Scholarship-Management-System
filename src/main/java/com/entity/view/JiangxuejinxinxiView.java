package com.entity.view;

import com.entity.JiangxuejinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 奖学金信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
@TableName("jiangxuejinxinxi")
public class JiangxuejinxinxiView  extends JiangxuejinxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiangxuejinxinxiView(){
	}
 
 	public JiangxuejinxinxiView(JiangxuejinxinxiEntity jiangxuejinxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, jiangxuejinxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
