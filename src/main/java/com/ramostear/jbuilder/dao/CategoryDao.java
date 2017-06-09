package com.ramostear.jbuilder.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Category;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月9日 上午10:06:35 
* @email:361801580@qq.com
 */
public interface CategoryDao {
	
	public void save(Category category);
	
	public void update(Category category);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public Category findById(Long id);
	
	public Category findByName(String name);
	
	public List<Category> findAll();
	
	public List<Map<String, String>> findParent();
	
	public List<Category> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);

}
