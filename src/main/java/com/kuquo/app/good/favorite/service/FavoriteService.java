package com.kuquo.app.good.favorite.service;

import com.kuquo.app.good.favorite.model.Favorite;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FavoriteService extends BaseService<Favorite> {
	public List<Favorite> selectByCreatorId(Favorite favorite) throws Exception {
		if (favorite == null) {
			throw new Exception("favorite is null!");
		}
		Map<String, String> param = new HashMap();
		param.put("creatorId", favorite.getCreatorId());
		List<Favorite> list = this.publicDAO.select("Favorite.Favorite", param);
		return list;
	}
}
