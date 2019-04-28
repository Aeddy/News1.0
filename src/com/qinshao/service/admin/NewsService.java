package com.qinshao.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.qinshao.entity.admin.News;

/**
 * 新闻接口
 * @author lzq
 *
 */
@Service
public interface NewsService {
	public int add(News news);
	public int edit(News news);
	public int delete(Long id);
	public List<News> findList(Map<String,Object> queryMap);
	public int getTotal(Map<String,Object> queryMap);
	public News find(Long id);
	public int updateCommentNumber(Long id);
	public int updateViewNumber(Long id);
	public List<News> findLastCommentList(int pageSize);
}
