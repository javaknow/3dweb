package com.kuquo.app.good.goodPrice.service;

import com.kuquo.app.good.goodPrice.model.GoodPrice;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class GoodPriceService extends BaseService<GoodPrice> {
	public List<GoodPrice> getGoodPriceByGoodId(String goodId) throws Exception {
		if (StringUtils.isBlank(goodId)) {
			throw new Exception("goodId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("goodId", goodId);
		List<GoodPrice> list = this.publicDAO.select("GoodPrice.GoodPrice", param);
		return list;
	}

	public void deleteByGoodId(String goodId) throws Exception {
		if (StringUtils.isBlank(goodId)) {
			throw new Exception("goodId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("goodId", goodId);
		this.publicDAO.delete("GoodPrice.GoodPrice_goodId", param);
	}

	public void deleteByGroupGoodId(String groupgoodId) throws Exception {
		if (StringUtils.isBlank(groupgoodId)) {
			throw new Exception("goodId is null");
		}
		Map<String, String> param = new HashMap();
		param.put("groupgoodId", groupgoodId);
		this.publicDAO.delete("GoodPrice.GoodPrice_groupgoodId", param);
	}

	public Integer selectCount(GoodPrice goodprice) {
		Integer count = (Integer) this.publicDAO.selectOne("GoodPrice.GoodPrice_count_goodTypeOne", goodprice);
		return count;
	}

	public Integer selectCount2(GoodPrice goodprice) {
		Integer count = (Integer) this.publicDAO.selectOne("GoodPrice.GoodPrice_count_goodTypeTwo", goodprice);
		return count;
	}
}
