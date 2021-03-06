package com.kuquo.app.store.advertise.service;

import com.kuquo.app.component.file.service.FileUploadService;
import com.kuquo.app.store.advertise.model.Advertise;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;

public class AdvertiseService extends BaseService<Advertise> {
	private FileUploadService fileUploadService;

	public void setFileUploadService(FileUploadService fileUploadService) {
		this.fileUploadService = fileUploadService;
	}

	public void insertAdvertise(Advertise model) throws Exception {
		if (model == null) {
			throw new Exception("Object Advertise is null,can not insert Advertise Information!");
		}
		super.insert(model);
		if (StringUtils.isNotBlank(model.getPicId())) {
			this.fileUploadService.updateAppId(model.getPicId(), model.getId());
		}
	}

	public List<Advertise> getAdvertiseById(String id) throws Exception {
		if (id == null) {
			throw new Exception("id is null!");
		}
		Map<String, String> param = new HashMap();
		param.put("id", id);
		List<Advertise> list = this.publicDAO.select("Advertise.Advertise_AdvertiseById", param);
		return list;
	}

	public List<Advertise> getAdvertiseList() {
		List<Advertise> list = this.publicDAO.select("Advertise.Advertise", null);
		return list;
	}

	public List<Advertise> getByPlaceAdvertiseList(Object obj) {
		List<Advertise> list = this.publicDAO.select("Advertise.Advertise", obj);
		return list;
	}
}
