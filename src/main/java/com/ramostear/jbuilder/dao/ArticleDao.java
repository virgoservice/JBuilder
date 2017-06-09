package com.ramostear.jbuilder.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.ramostear.jbuilder.entity.Article;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月9日 下午3:07:35 
* @email:361801580@qq.com
 */
public interface ArticleDao {
	
	public void save(Article article);
	
	public void update(Article article);
	
	public boolean delete(Long id);
	
	public Long size();
	
	/**
	 * 按类型查询文章数量
	 * @return
	 */
	public List<Map<String, String>> getStatusCount();
	
	public Article findById(Long id);
	
	public Article findByName(String name);
	
	public List<Article> findAll();
	
	public List<Article> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);

}
