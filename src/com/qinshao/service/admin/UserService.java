package com.qinshao.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.qinshao.entity.admin.User;

/**
 * user”√ªßservice
 * @author lzq
 *
 */
@Service
public interface UserService {
	public User findByUsername(String username);
	public int add(User user);
	public int edit(User user);
	public int editPassword(User user);
	public int delete(String ids);
	public List<User> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
}
