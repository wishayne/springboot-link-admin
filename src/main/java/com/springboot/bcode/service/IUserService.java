package com.springboot.bcode.service;

import com.springboot.bcode.domain.auth.LoginVO;
import com.springboot.bcode.domain.auth.ModifyPwdVO;
import com.springboot.bcode.domain.auth.UserInfo;
import com.springboot.bcode.domain.auth.UserInfoVO;
import com.springboot.core.web.mvc.JqGridPage;

public interface IUserService {

	JqGridPage<UserInfo> queryPage(UserInfo user);

	String login(LoginVO vo);

	UserInfo info();

	UserInfo getMenuesByRoleId(Integer id);

	UserInfo find(String uid);

	UserInfo find(UserInfo user);

	void modifyPwd(ModifyPwdVO vo);

	boolean add(UserInfoVO vo);

	boolean update(UserInfoVO vo);

	boolean delete(String uid);

	boolean updateState(UserInfoVO vo);

}
