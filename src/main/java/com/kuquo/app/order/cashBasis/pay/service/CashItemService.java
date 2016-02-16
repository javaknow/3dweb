/*  1:   */ package com.kuquo.app.order.cashBasis.pay.service;
/*  2:   */ 
/*  3:   */ import com.kuquo.app.order.cashBasis.pay.model.CashItem;
/*  4:   */ import com.kuquo.code.ibatis.impl.PublicDAO;
/*  5:   */ import com.kuquo.code.service.BaseService;
/*  6:   */ import java.util.HashMap;
/*  7:   */ import java.util.Map;
/*  8:   */ import org.apache.commons.lang.StringUtils;
/*  9:   */ 
/* 10:   */ public class CashItemService
/* 11:   */   extends BaseService<CashItem>
/* 12:   */ {
/* 13:   */   public void deleteByIntoId(String intoId)
/* 14:   */     throws Exception
/* 15:   */   {
/* 16:26 */     if (StringUtils.isBlank(intoId)) {
/* 17:27 */       throw new Exception("intoId is null");
/* 18:   */     }
/* 19:29 */     Map<String, String> param = new HashMap();
/* 20:30 */     param.put("orderId", intoId);
/* 21:31 */     this.publicDAO.delete("CashItem.CashItem", param);
/* 22:   */   }
/* 23:   */ }


/* Location:           D:\Program Files\apache-tomcat-8.0.20\webapps\demo2\WEB-INF\classes\
 * Qualified Name:     com.kuquo.app.order.cashBasis.pay.service.CashItemService
 * JD-Core Version:    0.7.0.1
 */