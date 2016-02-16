package com.kuquo.app.good.goodRelate.service;

import com.kuquo.app.good.goodRelate.model.GoodRelate;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class GoodRelateService extends BaseService<GoodRelate> {
	public List<GoodRelate> getGoodRelateByGoodId(String goodId) throws Exception {
		if (StringUtils.isBlank(goodId)) {
			return null;
		}
		Map<String, String> param = new HashMap();
		param.put("goodId", goodId);
		List<GoodRelate> list = this.publicDAO.select("GoodRelate.GoodRelate", param);
		return list;
	}

	public void deleteByGoodId(String goodId) throws Exception {
		if (StringUtils.isBlank(goodId)) {
			throw new Exception("goodId is null,can not delete");
		}
		Map<String, String> param = new HashMap();
		param.put("goodId", goodId);
		this.publicDAO.delete("GoodRelate.GoodRelate", param);
	}
}
