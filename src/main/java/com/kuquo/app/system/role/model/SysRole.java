package com.kuquo.app.system.role.model;

import com.kuquo.app.system.user.model.SysUser;
import com.kuquo.code.bean.Base;
import java.util.List;

public class SysRole extends Base {
	private static final long serialVersionUID = 2649324210635439526L;
	private List<SysUser> userlist;

	public List<SysUser> getUserlist() {
		return this.userlist;
	}

	public void setUserlist(List<SysUser> userlist) {
		this.userlist = userlist;
	}
}
