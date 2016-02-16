package com.kuquo.app.store.gift.service;

import com.kuquo.app.store.gift.model.GiftGood;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class GiftGoodService extends BaseService<GiftGood> {
	public void deleteByPromoteId(String intoId) throws Exception {
		if (StringUtils.isBlank(intoId)) {
			throw new Exception("intoId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("promoteId", intoId);
		this.publicDAO.delete("GiftGood.GiftGood", param);
	}
}
