package com.kuquo.app.good.goodSpecification.service;

import com.kuquo.app.good.goodSpecification.model.GoodSpecification;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class GoodSpecificationService extends BaseService<GoodSpecification> {
	public List<GoodSpecification> getWareSpecification(String wareId) {
		if (StringUtils.isBlank(wareId)) {
			return null;
		}
		Map<String, String> param = new HashMap();
		param.put("wareId", wareId);
		List<GoodSpecification> list = this.publicDAO.select("GoodSpecification.GoodSpecification_ware", param);
		return list;
	}
}
