package com.kuquo.app.baseInfo.delivery.service;

import com.kuquo.app.baseInfo.delivery.model.Delivery;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;

public class DeliveryService extends BaseService<Delivery> {
	public Delivery getDelivery(Delivery delivery) throws Exception {
		if (delivery == null) {
			throw new Exception("DeliverWay is null,can not query");
		}
		Delivery way = null;
		Map<String, String> map = new HashMap();
		map.put("code", delivery.getCode());
		Object obj = this.publicDAO.selectOne("Delivery.Delivery", map);
		if (obj != null) {
			way = (Delivery) obj;
		}
		return way;
	}
}
