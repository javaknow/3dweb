package com.kuquo.app.showlist.action;

import com.kuquo.code.struct.BaseAction;
import javax.servlet.http.HttpServletRequest;

public class FormcenterAction extends BaseAction {
	public String list() {
		HttpServletRequest request = getRequest();
		String type = request.getParameter("type");
		request.setAttribute("type", type);
		return "show_list";
	}
}
