package com.kuquo.app.vip.coupon.service;

import com.kuquo.app.vip.coupon.model.VipCoupon;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VipCouponService extends BaseService<VipCoupon> {
	public List<VipCoupon> getListCode(String code) throws Exception {
		if (code == null) {
			throw new Exception("code is null");
		}
		Map<String, String> map = new HashMap();
		map.put("code", code);
		List<VipCoupon> list = this.publicDAO.select("VipCoupon.VipCoupon_by_code", map);
		return list;
	}

	public void updateState(String id) {
		Map<String, String> param = new HashMap();
		param.put("id", id);
		VipCoupon vipCoupon = (VipCoupon) this.publicDAO.selectOne("VipCoupon.VipCoupon", param);
		if (vipCoupon != null) {
			vipCoupon.setState("d");
			this.publicDAO.update("VipCoupon.VipCoupon", vipCoupon);
		}
	}

	public List<VipCoupon> getAddList(Object obj) throws Exception {
		if (obj == null) {
			throw new Exception("object is null");
		}
		List<VipCoupon> list = this.publicDAO.select("VipCoupon.VipCoupon_query", obj);
		return list;
	}

	public Double getMoneyByCustomerId(String customerId) throws Exception {
		if (customerId == null) {
			throw new Exception("code is null");
		}
		Map<String, String> param = new HashMap();
		param.put("customerId", customerId);
		Double money = (Double) this.publicDAO.selectOne("VipCoupon.VipCoupon_by_customerId", param);
		return money;
	}
}
