package com.ramostear.jbuilder.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.FriendlinkDao;
import com.ramostear.jbuilder.entity.Friendlink;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.FriendlinkService;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月5日 上午10:22:57 
* @email:361801580@qq.com
 */
@Service("friendlinkService")
public class FriendlinkServiceImpl implements FriendlinkService {

	@Autowired
	private FriendlinkDao linkdao;
	
	@Override
	public Friendlink add(Friendlink link) {
		linkdao.save(link);
		return link;
	}

	@Override
	public Friendlink update(Friendlink link) {
		linkdao.update(link);
		return link;
	}

	@Override
	public boolean delete(Long id) {
		return linkdao.delete(id);
	}

	@Override
	public Friendlink findByName(String name) {
		return linkdao.findByName(name);
	}

	@Override
	public PageDto<Friendlink> findByPage(int offset, int size, String orderBy,boolean order,String search) {
		List<Friendlink> list = linkdao.findByPage((offset-1)*size, size, orderBy, order,search);
		Long totalSize = linkdao.size();
		return new PageDto<Friendlink>(totalSize,offset,size,list);
	}

}
