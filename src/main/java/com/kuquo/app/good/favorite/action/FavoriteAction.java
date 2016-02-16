package com.kuquo.app.good.favorite.action;

import com.kuquo.app.good.favorite.model.Favorite;
import com.kuquo.app.good.favorite.service.FavoriteService;
import com.kuquo.code.struct.BaseAction;
import org.apache.log4j.Logger;

public class FavoriteAction extends BaseAction {
	private static final long serialVersionUID = -1299499640055184711L;
	private static final Logger logger = Logger.getLogger(FavoriteAction.class);
	private Favorite favorite;
	private FavoriteService favoriteService;

	public Favorite getFavorite() {
		return this.favorite;
	}

	public void setFavorite(Favorite favorite) {
		this.favorite = favorite;
	}

	public void setFavoriteService(FavoriteService favoriteService) {
		this.favoriteService = favoriteService;
	}
}
