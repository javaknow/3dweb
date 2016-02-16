package com.kuquo.app.warehouse.costAdjust.service;

import com.kuquo.app.warehouse.costAdjust.model.CostAdjust;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class CostAdjustService extends BaseService<CostAdjust> {
	public void deleteByOrderId(String orderId) throws Exception {
		if (StringUtils.isBlank(orderId)) {
			throw new Exception("orderId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("orderId", orderId);
		this.publicDAO.delete("CostAdjustWare.CostAdjustWare", param);
	}
}
