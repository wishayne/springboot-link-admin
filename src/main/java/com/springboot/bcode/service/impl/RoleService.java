package com.springboot.bcode.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.bcode.dao.IPermissionDao;
import com.springboot.bcode.dao.IRoleDao;
import com.springboot.bcode.dao.IUserDao;
import com.springboot.bcode.domain.auth.Role;
import com.springboot.bcode.domain.auth.RoleDept;
import com.springboot.bcode.domain.auth.RolePermission;
import com.springboot.bcode.service.IRoleService;
import com.springboot.common.exception.AuthException;
import com.springboot.common.utils.BeanUtils;
import com.springboot.common.utils.StringUtils;
import com.springboot.core.web.mvc.JqGridPage;

@Service
public class RoleService implements IRoleService {

	@Autowired
	private IPermissionDao rightDao;
	@Autowired
	private IUserDao userDao;
	@Autowired
	private IRoleDao roleDao;

	@Override
	public JqGridPage<Role> queryPage(Role role) {
		return roleDao.selectPage(role);
	}

	@Override
	public List<Role> queryAll() throws AuthException {
		return roleDao.select(new Role());
	}

	@Override
	public List<Role> queryByUser(String userId) throws AuthException {
		if (StringUtils.isBlank(userId)) {
			throw new AuthException("userId不能为空");
		}
		return roleDao.selectByUserId(userId);
	}

	@Transactional(value = "baseTransactionManager")
	@Override
	public boolean add(Role role) throws AuthException {
		if (role == null) {
			throw new AuthException("保存数据不能为空");
		}
		if (StringUtils.isBlank(role.getName())) {
			throw new AuthException("角色名不能为空");
		}
		if (StringUtils.isBlank(role.getPermIds())) {
			throw new AuthException("权限许可不能为空");
		}
		int result = roleDao.insertRetrunId(role);
		if (result <= 0) {
			throw new AuthException("执行失败");
		}
		role.setId(result);
		saveRelationRight(role);
		return true;
	}

	@Transactional(value = "baseTransactionManager")
	@Override
	public boolean update(Role role) throws AuthException {

		if (role == null) {
			throw new AuthException("保存数据不能为空");
		}
		if (role.getId() == null) {
			throw new AuthException("保存数据不能为空");
		}
		if (StringUtils.isBlank(role.getName())) {
			throw new AuthException("角色名不能为空");
		}
		if (StringUtils.isBlank(role.getPermIds())) {
			throw new AuthException("权限许可不能为空");
		}

		Role roleInfo = roleDao.select(role.getId());
		if (roleInfo == null) {
			throw new AuthException("未查询到角色信息");
		}
		BeanUtils.copyObject(roleInfo, role);
		int result = roleDao.update(roleInfo);
		if (result < 0) {
			throw new AuthException("执行失败");
		}

		RolePermission rp = new RolePermission();
		rp.setRoleId(role.getId());
		roleDao.delete(rp);

		saveRelationRight(role);
		return true;
	}

	public boolean saveRelationRight(Role role) throws AuthException {

		String permIds[] = role.getPermIds().split(",");
		if (permIds == null || permIds.length == 0) {
			throw new AuthException("权限许可不能为空");
		}

		List<RolePermission> rpList = new ArrayList<RolePermission>();
		RolePermission rp = null;
		for (int i = 0; i < permIds.length; i++) {
			rp = new RolePermission();
			rp.setRoleId(role.getId());
			rp.setPermId(Integer.parseInt(permIds[i]));
			rpList.add(rp);
		}
		roleDao.insert(rpList);
		return true;
	}

	@Transactional(value = "baseTransactionManager")
	@Override
	public boolean delete(Integer code) throws AuthException {
		if (code == null) {
			throw new AuthException("删除条件不能为空");
		}
		Role role = new Role();
		role.setId(code);
		int result = 0;
		// 删除角色本身
		result = roleDao.delete(role);
		if (result < 0) {
			throw new AuthException("执行失败");
		}

		// 删除角色对应的权限
		RolePermission roleRight = new RolePermission();
		roleRight.setRoleId(code);
		roleDao.delete(roleRight);

		return true;
	}

	@Override
	public Role query(Integer code) throws AuthException {

		Role role = new Role();
		role.setId(code);
		List<Role> list = roleDao.select(role);
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	@Transactional(value = "baseTransactionManager")
	@Override
	public boolean saveRelationDataScope(Role role) {
		if (role == null) {
			throw new AuthException("条件不能为空");
		}
		if (role.getId() == null || role.getData_scope() == null) {
			throw new AuthException("条件不能为空");
		}
		Role roleInfo = roleDao.select(role.getId());
		if (roleInfo == null) {
			throw new AuthException("角色不存在");
		}

		// 自定义数据权限
		if (role.getData_scope().equals("1")) {
			if (role.getDeptIds() == null) {
				throw new AuthException("自定义数据权限不能为空");
			}
			RoleDept delRoleDept = new RoleDept();
			delRoleDept.setRoleId(role.getId());
			roleDao.deleteRoleDetp(delRoleDept);

			List<RoleDept> rdList = new ArrayList<RoleDept>();
			RoleDept rd = null;
			for (int i = 0; i < role.getDeptIds().length; i++) {
				rd = new RoleDept();
				rd.setRoleId(role.getId());
				rd.setDeptId(role.getDeptIds()[i]);
				rdList.add(rd);
			}
			roleDao.insertRoleDetp(rdList);
		} else {

		}
		roleInfo.setData_scope(role.getData_scope());
		roleDao.update(roleInfo);
		return true;
	}

	@Override
	public List<Integer> queryDataScope(Integer roleId) {
		if (roleId == null) {
			throw new AuthException("条件不能为空");
		}
		return roleDao.selectRoleDetp(roleId);
	}
}
