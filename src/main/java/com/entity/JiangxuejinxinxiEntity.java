package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 奖学金信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-01-28 10:57:06
 */
@TableName("jiangxuejinxinxi")
public class JiangxuejinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiangxuejinxinxiEntity() {
		
	}
	
	public JiangxuejinxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
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
	 * 开始时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date kaishishijian;
	
	/**
	 * 结束时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jieshushijian;
	
	/**
	 * 申请表
	 */
					
	private String shenqingbiao;
	
	/**
	 * 申请条件
	 */
					
	private String shenqingtiaojian;
	
	/**
	 * 发布时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date fabushijian;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
	 * 设置：开始时间
	 */
	public void setKaishishijian(Date kaishishijian) {
		this.kaishishijian = kaishishijian;
	}
	/**
	 * 获取：开始时间
	 */
	public Date getKaishishijian() {
		return kaishishijian;
	}
	/**
	 * 设置：结束时间
	 */
	public void setJieshushijian(Date jieshushijian) {
		this.jieshushijian = jieshushijian;
	}
	/**
	 * 获取：结束时间
	 */
	public Date getJieshushijian() {
		return jieshushijian;
	}
	/**
	 * 设置：申请表
	 */
	public void setShenqingbiao(String shenqingbiao) {
		this.shenqingbiao = shenqingbiao;
	}
	/**
	 * 获取：申请表
	 */
	public String getShenqingbiao() {
		return shenqingbiao;
	}
	/**
	 * 设置：申请条件
	 */
	public void setShenqingtiaojian(String shenqingtiaojian) {
		this.shenqingtiaojian = shenqingtiaojian;
	}
	/**
	 * 获取：申请条件
	 */
	public String getShenqingtiaojian() {
		return shenqingtiaojian;
	}
	/**
	 * 设置：发布时间
	 */
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}

}
