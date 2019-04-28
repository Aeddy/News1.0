package com.qinshao.service.admin.impl;
/**
 * 新闻分类service实现类
 */
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qinshao.dao.admin.NewsCategoryDao;
import com.qinshao.entity.admin.NewsCategory;
import com.qinshao.service.admin.NewsCategoryService;
@Service
public class NewsCategoryServiceImpl implements NewsCategoryService {

	@Autowired
	private NewsCategoryDao newsCategoryDao;
	
	@Override
	public int add(NewsCategory newsCategory) {
		// TODO Auto-generated method stub
		return newsCategoryDao.add(newsCategory);
	}

	@Override
	public int edit(NewsCategory newsCategory) {
		// TODO Auto-generated method stub
		return newsCategoryDao.edit(newsCategory);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return newsCategoryDao.delete(id);
	}

	@Override
	public List<NewsCategory> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsCategoryDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsCategoryDao.getTotal(queryMap);
	}

	@Override
	public List<NewsCategory> findAll() {
		// TODO Auto-generated method stub
		return newsCategoryDao.findAll();
	}

	@Override
	public NewsCategory find(Long id) {
		// TODO Auto-generated method stub
		return newsCategoryDao.find(id);
	}

}
