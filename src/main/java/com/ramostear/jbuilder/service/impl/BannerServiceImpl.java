package com.ramostear.jbuilder.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ramostear.jbuilder.dao.BannerDao;
import com.ramostear.jbuilder.entity.Banner;
import com.ramostear.jbuilder.kit.PageDto;
import com.ramostear.jbuilder.service.BannerService;

/**
 * 
* @Desc: () 
* @author: 赖生龙 
* @date: 2017年5月5日 下午5:40:10 
* @email:361801580@qq.com
 */
@Service("bannerService")
public class BannerServiceImpl implements BannerService {

	@Autowired
	private BannerDao bdao;
	
	@Override
	public Banner add(Banner banner) {
		bdao.save(banner);
		return banner;
	}

	@Override
	public Banner update(Banner link) {
		bdao.update(link);
		return link;
	}

	@Override
	public boolean delete(Long id) {
		return bdao.delete(id);
	}
	
	@Override
	public Banner findById(Long id) {
		return bdao.findById(id);
	}

	@Override
	public Banner findByName(String name) {
		return bdao.findByName(name);
	}

	@Override
	public PageDto<Banner> findByPage(int offset, int size, String orderBy,boolean order,Map search) {
		List<Banner> list = bdao.findByMany((offset-1)*size, size, orderBy, order,search);
		Long totalSize = bdao.size();
		return new PageDto<Banner>(totalSize,offset,size,list);
	}

	@Override
	public List<Banner> findAll() {
		return this.bdao.findAll();
	}

}
