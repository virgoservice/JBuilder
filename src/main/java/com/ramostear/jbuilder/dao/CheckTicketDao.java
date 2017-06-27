package com.ramostear.jbuilder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.ramostear.jbuilder.entity.CheckTicket;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年6月22日 下午12:03:05 
* @email:361801580@qq.com
 */
public interface CheckTicketDao {
	
	public void save(CheckTicket checkTicket);
	
	public void update(CheckTicket checkTicket);
	
	public boolean delete(Long id);
	
	public Long size();
	
	public CheckTicket findById(Long id);
	
	public CheckTicket findByName(String name);
	
	public List<CheckTicket> findAll();
	
	public List<CheckTicket> findByOid(Long oid);
	//查询检票数量
	public Long findCheckCount(Long coid);
	
	public List<CheckTicket> findByPage(@Param("offset")int offset,@Param("size")int size,@Param("orderBy")String orderBy,@Param("order")boolean order,@Param("search")String search);

	
}
