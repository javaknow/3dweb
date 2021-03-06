package com.kuquo.app.good.goodKind.model;

import com.kuquo.code.bean.Base;

public class GoodKingVal extends Base {
	private static final long serialVersionUID = -1495706088831590477L;
	private String goodKingId;
	private String value;
	private String remark;

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getGoodKingId() {
		return this.goodKingId;
	}

	public void setGoodKingId(String goodKingId) {
		this.goodKingId = goodKingId;
	}
}
