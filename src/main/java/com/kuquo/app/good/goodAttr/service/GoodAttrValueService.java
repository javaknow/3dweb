package com.kuquo.app.good.goodAttr.service;

import com.kuquo.app.good.goodAttr.model.GoodAttrValue;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;

public class GoodAttrValueService extends BaseService<GoodAttrValue> {
	public void deleteByGoodId(String goodId) {
		Map<String, String> map = new HashMap();
		map.put("goodId", goodId);
		this.publicDAO.delete("GoodAttrValue.GoodAttrValue_goodId", map);
	}
}
