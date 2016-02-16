package com.kuquo.app.baseInfo.payment.service;

import com.kuquo.app.baseInfo.payment.model.Payment;
import com.kuquo.code.ibatis.impl.PublicDAO;
import com.kuquo.code.service.BaseService;
import java.util.HashMap;
import java.util.Map;

public class PaymentService extends BaseService<Payment> {
	public Payment getPayment(Payment payment) throws Exception {
		if (payment == null) {
			throw new Exception("payment is null,can not query");
		}
		Payment way = null;
		Map<String, String> map = new HashMap();
		map.put("code", payment.getCode());
		Object obj = this.publicDAO.selectOne("Payment.Payment", map);
		if (obj != null) {
			way = (Payment) obj;
		}
		return way;
	}
}
