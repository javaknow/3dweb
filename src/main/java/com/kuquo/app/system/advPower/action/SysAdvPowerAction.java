package com.kuquo.app.system.advPower.action;

import com.kuquo.app.system.advPower.model.SysAdvPower;
import com.kuquo.app.system.advPower.service.SysAdvPowerService;
import com.kuquo.app.system.user.model.SysUser;
import com.kuquo.code.struct.BaseAction;
import com.kuquo.code.util.ConfigUtil;
import com.kuquo.code.util.PageInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

public class SysAdvPowerAction extends BaseAction {
	private static final long serialVersionUID = 649107725905662511L;
	private static final Logger logger = Logger.getLogger(SysAdvPowerAction.class);
	private SysAdvPowerService sysAdvPowerService;
	private SysAdvPower sysAdvPower;

	public String listJson() {
		if (this.sysAdvPower == null) {
			this.sysAdvPower = new SysAdvPower();
		}
		logger.info("start to list Area information");
		List<SysAdvPower> list = null;
		int totalRows = 0;
		try {
			PageInfo pageInfo = createPageInfo();
			list = this.sysAdvPowerService.pageList(pageInfo, this.sysAdvPower, true);
			if (list == null) {
				list = new ArrayList();
			}
			totalRows = pageInfo.getCount();
		} catch (Exception e) {
			logger.info("eror occur when listing Area information");
			e.printStackTrace();
		}
		this.jsonMap = new HashMap();
		this.jsonMap.put("total", Integer.valueOf(totalRows));
		this.jsonMap.put("rows", list);

		logger.info("finish list all Area data!");
		return "success";
	}

	public String list() {
		String maxLevel = ConfigUtil.getAreaLevel();
		getRequest().setAttribute("maxLevel", maxLevel);
		return "list_sysAdvPower";
	}

	public String edit() {
		SysUser loginMan = getSessionUserInfo();
		if (this.sysAdvPower == null) {
			this.sysAdvPower = new SysAdvPower();
		}
		String id = this.sysAdvPower.getId();
		if (StringUtils.isBlank(id)) {
			super.initModel(true, this.sysAdvPower, loginMan);
		} else {
			this.sysAdvPower = ((SysAdvPower) this.sysAdvPowerService.getModel(id));
			super.initModel(false, this.sysAdvPower, loginMan);
		}
		return "edit_sysAdvPower";
	}

	public void save() {
		try {
			String id = this.sysAdvPower.getId();
			if (StringUtils.isBlank(id)) {
				this.sysAdvPowerService.insert(this.sysAdvPower);
			} else {
				this.sysAdvPowerService.update(this.sysAdvPower);
			}
			responseFlag(true);
		} catch (Exception e) {
			responseFlag(false);
			logger.error("error occur when save model!", e);
		}
	}

	public void delete() {
		SysUser loginMan = getSessionUserInfo();

		String id = this.sysAdvPower.getId();
		logger.info("delete role,id:" + id);
		try {
			String[] idArr = id.split(",");
			for (String idStr : idArr) {
				this.sysAdvPowerService.delete(idStr);
			}
			logger.info(loginMan.getCode() + " delete role,id:" + id);
			responseFlag(true);
		} catch (Exception e) {
			responseFlag(false);
			logger.info("error occur when " + loginMan.getCode() + " delete role,id:" + id, e);
		}
	}

	public void isCodeExisted() {
		boolean isCodeExisted = true;

		String id = this.sysAdvPower.getId();
		String code = this.sysAdvPower.getCode();
		logger.info("check isCodeExisted,code:" + code + ";id:" + id);
		try {
			SysAdvPower result = (SysAdvPower) this.sysAdvPowerService.selectOne(this.sysAdvPower);
			if (result == null) {
				isCodeExisted = false;
			} else if (StringUtils.isNotEmpty(id)) {
				isCodeExisted = !id.equals(result.getId());
			}
			logger.info("check isCodeExisted result:" + isCodeExisted);
			responseFlag(isCodeExisted);
		} catch (Exception e) {
			logger.error("error occur when check isCodeExisted!", e);
		}
	}

	public SysAdvPowerService getSysAdvPowerService() {
		return this.sysAdvPowerService;
	}

	public void setSysAdvPowerService(SysAdvPowerService sysAdvPowerService) {
		this.sysAdvPowerService = sysAdvPowerService;
	}

	public SysAdvPower getSysAdvPower() {
		return this.sysAdvPower;
	}

	public void setSysAdvPower(SysAdvPower sysAdvPower) {
		this.sysAdvPower = sysAdvPower;
	}
}
