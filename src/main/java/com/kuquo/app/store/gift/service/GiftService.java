package com.kuquo.app.store.gift.service;

import com.kuquo.app.component.file.service.FileUploadService;
import com.kuquo.app.store.gift.model.Gift;
import com.kuquo.code.service.BaseService;
import org.apache.commons.lang.StringUtils;

public class GiftService extends BaseService<Gift> {
	private FileUploadService fileUploadService;

	public void setFileUploadService(FileUploadService fileUploadService) {
		this.fileUploadService = fileUploadService;
	}

	public void insertGift(Gift model) throws Exception {
		if (model == null) {
			throw new Exception("Object Gift is null,can not insert Gift Information!");
		}
		super.insert(model);
		if (StringUtils.isNotBlank(model.getPicId())) {
			this.fileUploadService.updateAppId(model.getPicId(), model.getId());
		}
	}
}
