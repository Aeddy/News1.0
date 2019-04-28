package com.qinshao.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.qinshao.entity.admin.Authority;

/**
 * Ȩ��service�ӿ�
 * @author lzq
 *
 */
@Service
public interface AuthorityService {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}
