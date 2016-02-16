package com.kuquo.app.store.promotionActivity.action;

import com.kuquo.app.good.good.service.GoodService;
import com.kuquo.app.good.ware.service.WareService;
import com.kuquo.app.good.ware.service.WareSpecificationValService;
import com.kuquo.app.order.price.priceAdjust.action.PriceAdjustWareAction;
import com.kuquo.app.store.promotionActivity.model.PromotionActivityGood;
import com.kuquo.app.store.promotionActivity.service.PromotionActivityGoodService;
import com.kuquo.code.struct.BaseAction;
import com.kuquo.code.util.PageInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.log4j.Logger;

public class PromotionActivityGoodAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = Logger.getLogger(PriceAdjustWareAction.class);
	private PromotionActivityGood promotionActivityGood;
	private PromotionActivityGoodService promotionActivityGoodService;
	private GoodService goodService;
	private WareService wareService;
	private WareSpecificationValService wareSpecificationValService;

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public void setWareService(WareService wareService) {
		this.wareService = wareService;
	}

	public void setWareSpecificationValService(WareSpecificationValService wareSpecificationValService) {
		this.wareSpecificationValService = wareSpecificationValService;
	}

	public String listJson() {
		logger.info("start list promotionActivityGood");
		List<PromotionActivityGood> resultList = null;

		int totalRows = 0;
		try {
			PageInfo pageInfo = createPageInfo();
			if (this.promotionActivityGood == null) {
				this.promotionActivityGood = new PromotionActivityGood();
			}
			resultList = this.promotionActivityGoodService.pageList(pageInfo, this.promotionActivityGood, true);
			totalRows = pageInfo.getCount();
		} catch (Exception e) {
			logger.error("error occur when list warehouseIntoWare", e);
		}
		if (resultList == null) {
			resultList = new ArrayList();
		}
		this.jsonMap = new HashMap();
		this.jsonMap.put("total", Integer.valueOf(totalRows));
		this.jsonMap.put("rows", resultList);
		logger.info("finish list promoteGood");
		return "success";
	}

	public PromotionActivityGood getPromotionActivityGood() {
		return this.promotionActivityGood;
	}

	public void setPromotionActivityGood(PromotionActivityGood promotionActivityGood) {
		this.promotionActivityGood = promotionActivityGood;
	}

	public PromotionActivityGoodService getPromotionActivityGoodService() {
		return this.promotionActivityGoodService;
	}

	public void setPromotionActivityGoodService(PromotionActivityGoodService promotionActivityGoodService) {
		this.promotionActivityGoodService = promotionActivityGoodService;
	}

	public GoodService getGoodService() {
		return this.goodService;
	}
}
