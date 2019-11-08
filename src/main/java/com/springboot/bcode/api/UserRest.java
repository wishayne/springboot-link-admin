package com.springboot.bcode.api;

import com.springboot.bcode.domain.auth.LoginVO;
import com.springboot.bcode.domain.auth.ModifyPwdVO;
import com.springboot.bcode.domain.auth.UserInfo;
import com.springboot.bcode.domain.auth.UserInfoVO;
import com.springboot.bcode.service.IUserService;
import com.springboot.common.GlobalUser;
import com.springboot.common.exception.AuthException;
import com.springboot.core.logger.LoggerUtil;
import com.springboot.core.logger.OpertionBLog;
import com.springboot.core.security.authorize.Requestauthorize;
import com.springboot.core.web.mvc.BaseRest;
import com.springboot.core.web.mvc.ResponseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 用户接口
 *
 * @ClassName: UserRest
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author link
 * @date 2019年10月21日 下午4:47:25
 *
 */
@RestController
@RequestMapping(value = "/rest/user")
public class UserRest extends BaseRest {

	@Autowired
	private IUserService userService;

	@OpertionBLog(title = "登录")
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ResponseResult login(@RequestBody LoginVO vo) {
		ResponseResult rep = new ResponseResult();
		try {
			rep.setResult(userService.login(vo));
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("登陆异常.请稍后再试");
		}
		return rep;
	}

	/**
	 * 当前在线用户的信息包括角色权限菜单等
	 *
	 * @param @return 设定文件
	 * @return ResponseResult 返回类型
	 *
	 */
	@RequestMapping(value = "info")
	public ResponseResult info() {
		ResponseResult rep = new ResponseResult();
		try {
			rep.setResult(userService.info());
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("系统异常.请稍后再试");
		}
		return rep;
	}

	/**
	 * 根据选择的角色id重新获取菜单列表
	 *
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "newMenus")
	public ResponseResult delete(@RequestParam("id") Integer id) {
		ResponseResult rep = new ResponseResult();
		try {
			rep.setResult(userService.getMenuesByRoleId(id));
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("系统异常.请稍后再试");
		}
		return rep;
	}

	@OpertionBLog(title = "退出")
	@RequestMapping("logout")
	public ResponseResult logout() {
		ResponseResult rep = new ResponseResult();
		try {
			GlobalUser.destroyUser();
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("系统异常.请稍后再试");
		}
		return rep;
	}

	@Requestauthorize
	@RequestMapping(value = "list", method = RequestMethod.POST)
	public ResponseResult list(@RequestBody UserInfo user) {
		ResponseResult rep = new ResponseResult();
		try {
			rep.setResult(userService.queryPage(user));
		} catch (AuthException e) {
			LoggerUtil.error(e.getMessage());
		} catch (Exception e) {
			LoggerUtil.error(e.getMessage());
		}
		return rep;

	}

	@OpertionBLog(title = "添加用户")
	@Requestauthorize
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public ResponseResult add(@RequestBody UserInfoVO user) {
		ResponseResult rep = new ResponseResult();
		try {
			userService.add(user);
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("保存异常.请稍后再试");
		}
		return rep;
	}

	@OpertionBLog(title = "修改用户")
	@Requestauthorize
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ResponseResult update(@RequestBody UserInfoVO user) {
		ResponseResult rep = new ResponseResult();
		try {
			userService.update(user);
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("修改异常.请稍后再试");
		}
		return rep;
	}

	@OpertionBLog(title = "修改密码")
	@RequestMapping(value = "modifyPwd", method = RequestMethod.POST)
	public ResponseResult modifyPwd(@RequestBody ModifyPwdVO vo) {
		ResponseResult rep = new ResponseResult();
		try {
			userService.modifyPwd(vo);
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("系统异常.请稍后再试");
		}
		return rep;

	}

	@OpertionBLog(title = "更新用户状态")
	@RequestMapping(value = "updateState", method = RequestMethod.POST)
	public ResponseResult updateState(@RequestBody UserInfoVO vo) {
		ResponseResult rep = new ResponseResult();
		try {
			userService.updateState(vo);
		} catch (AuthException e) {
			rep.setCode(CODE_500);
			rep.setMsg(e.getMessage());
		} catch (Exception e) {
			rep.setCode(CODE_500);
			rep.setMsg("系统异常.请稍后再试");
		}
		return rep;

	}


}
