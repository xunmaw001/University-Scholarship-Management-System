package com.entity.model;

import com.entity.GonggaoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 公告信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
public class GonggaoxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 奖学金名称
	 */
	
	private String jiangxuejinmingcheng;
		
	/**
	 * 奖学金类型
	 */
	
	private String jiangxuejinleixing;
		
	/**
	 * 奖金
	 */
	
	private String jiangjin;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：奖学金名称
	 */
	 
	public void setJiangxuejinmingcheng(String jiangxuejinmingcheng) {
		this.jiangxuejinmingcheng = jiangxuejinmingcheng;
	}
	
	/**
	 * 获取：奖学金名称
	 */
	public String getJiangxuejinmingcheng() {
		return jiangxuejinmingcheng;
	}
				
	
	/**
	 * 设置：奖学金类型
	 */
	 
	public void setJiangxuejinleixing(String jiangxuejinleixing) {
		this.jiangxuejinleixing = jiangxuejinleixing;
	}
	
	/**
	 * 获取：奖学金类型
	 */
	public String getJiangxuejinleixing() {
		return jiangxuejinleixing;
	}
				
	
	/**
	 * 设置：奖金
	 */
	 
	public void setJiangjin(String jiangjin) {
		this.jiangjin = jiangjin;
	}
	
	/**
	 * 获取：奖金
	 */
	public String getJiangjin() {
		return jiangjin;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
				
	
	/**
	 * 设置：登记时间
	 */
	 
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}
			
}
