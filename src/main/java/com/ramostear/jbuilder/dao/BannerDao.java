package com.ramostear.jbuilder.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Banner;

/**
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月5日 下午5:28:54 
* @email:361801580@qq.com
 */
public interface BannerDao {
	
	public void save(Banner banner);
	
	public void update(Banner banner);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public Banner findById(Long id);
	
	public Banner findByName(String name);
	
	public List<Banner> findAll();
	
	public List<Banner> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);
	
	public List<Banner> findByMany(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")Map search);
}
