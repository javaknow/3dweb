package com.kuquo.app.vip.coupon.service;

import com.kuquo.app.vip.coupon.model.VipCouponWare;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class VipCouponWareService extends BaseService<VipCouponWare> {
	public void deleteByIntoId(String intoId) throws Exception {
		if (StringUtils.isBlank(intoId)) {
			throw new Exception("intoId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("vipCouponId", intoId);
		this.publicDAO.delete("VipCouponWare.VipCouponWare", param);
	}
}
