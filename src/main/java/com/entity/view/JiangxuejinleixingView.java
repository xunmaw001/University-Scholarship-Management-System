package com.entity.view;

import com.entity.JiangxuejinleixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 奖学金类型
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
@TableName("jiangxuejinleixing")
public class JiangxuejinleixingView  extends JiangxuejinleixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiangxuejinleixingView(){
	}
 
 	public JiangxuejinleixingView(JiangxuejinleixingEntity jiangxuejinleixingEntity){
 	try {
			BeanUtils.copyProperties(this, jiangxuejinleixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
