package com.springboot.bcode.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.bcode.dao.IPermissionDao;
import com.springboot.bcode.dao.IRoleDao;
import com.springboot.bcode.dao.IUserDao;
import com.springboot.bcode.domain.auth.Permission;
import com.springboot.bcode.domain.auth.RolePermission;
import com.springboot.bcode.service.IPermissionService;
import com.springboot.common.exception.AuthException;
import com.springboot.common.utils.BeanUtils;
import com.springboot.common.utils.StringUtils;

@Service
public class PermissionService implements IPermissionService {

	@Autowired
	private IPermissionDao rightDao;
	@Autowired
	private IUserDao userInfoDao;
	@Autowired
	private IRoleDao roleDao;

	@Override
	public List<Permission> queryAll() {
		return rightDao.selectAll();
	}

	@Override
	public List<Permission> queryByRole(Integer[] roleIds) {
		if (roleIds == null) {
			throw new AuthException("角色roleIds为空");
		}
		List<Permission> owendRightList = rightDao.selectByRole(roleIds);
		if (owendRightList == null || owendRightList.isEmpty()) {
			return null;
		}
		Set<Permission> ownedSet = new HashSet<Permission>();
		for (Permission right : owendRightList) {
			ownedSet.add(right);
		}
		owendRightList = new ArrayList<Permission>(ownedSet);
		return owendRightList;
	}

	@Override
	public boolean add(Permission permission) throws AuthException {
		if (permission == null) {
			throw new AuthException("保存数据不能为空");
		}
		if (StringUtils.isBlank(permission.getName())) {
			throw new AuthException("name不能为空");
		}
		if (permission.getParentId() == null) {
			permission.setParentId(0);
		}
		int result = rightDao.insert(permission);
		if (result < 0) {
			throw new AuthException("操作失败");
		}
		return true;
	}

	@Override
	public boolean update(Permission permission) throws AuthException {
		Permission permissionInfo = rightDao.select(permission.getId());
		if (permissionInfo == null) {
			throw new AuthException("没有对应的权限");
		}
		BeanUtils.copyObject(permissionInfo, permission);
		int result = rightDao.update(permissionInfo);
		if (result < 0) {
			throw new AuthException("执行失败");
		}
		return true;
	}

	@Transactional(value = "baseTransactionManager")
	@Override
	public boolean delete(Integer id) throws AuthException {
		if (id == null) {
			throw new AuthException("删除条件不能为空");
		}
		// 删除角色权限
		RolePermission rolePermission = new RolePermission();
		rolePermission.setPermId(id);
		roleDao.delete(rolePermission);

		Permission permission = new Permission();
		permission.setId(id);
		// 删除权限本身
		rightDao.delete(permission);

		return true;
	}

	@Override
	public Permission query(Integer code) throws AuthException {
		Permission right = new Permission();
		right.setId(code);
		List<Permission> list = rightDao.find(right);
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

}
