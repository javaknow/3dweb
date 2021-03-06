package com.kuquo.app.baseInfo.delivery.model;

import com.kuquo.code.bean.Base;

public class Delivery extends Base {
	private static final long serialVersionUID = 7414261141046634304L;
	private Double deliveryFee;
	private String remark;
	private String[] idArr;

	public Double getDeliveryFee() {
		return this.deliveryFee;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setDeliveryFee(Double deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String[] getIdArr() {
		return this.idArr;
	}

	public void setIdArr(String[] idArr) {
		this.idArr = idArr;
	}
}
