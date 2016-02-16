package com.kuquo.app.order.price.priceAdjust.service;

import com.kuquo.app.order.price.priceAdjust.model.PriceAdjustWare;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class PriceAdjustWareService extends BaseService<PriceAdjustWare> {
	public void deleteByOrderId(String orderId) throws Exception {
		if (StringUtils.isBlank(orderId)) {
			throw new Exception("orderId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("orderId", orderId);
		this.publicDAO.delete("PriceAdjustWare.PriceAdjustWare", param);
	}
}
