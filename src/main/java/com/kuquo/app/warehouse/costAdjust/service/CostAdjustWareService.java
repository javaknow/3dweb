package com.kuquo.app.warehouse.costAdjust.service;

import com.kuquo.app.warehouse.costAdjust.model.CostAdjustWare;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class CostAdjustWareService extends BaseService<CostAdjustWare> {
	public void deleteByIntoId(String intoId) throws Exception {
		if (StringUtils.isBlank(intoId)) {
			throw new Exception("intoId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("orderId", intoId);
		this.publicDAO.delete("CostAdjustWare.CostAdjustWare", param);
	}
}
