/*  1:   */ package com.kuquo.app.order.cashBasis.fee.service;
/*  2:   */ 
/*  3:   */ import com.kuquo.app.order.cashBasis.fee.model.FeeItem;
/*  4:   */ import com.kuquo.code.ibatis.impl.PublicDAO;
/*  5:   */ import com.kuquo.code.service.BaseService;
/*  6:   */ import java.util.HashMap;
/*  7:   */ import java.util.List;
/*  8:   */ import java.util.Map;
/*  9:   */ import org.apache.commons.lang.StringUtils;
/* 10:   */ 
/* 11:   */ public class FeeItemService
/* 12:   */   extends BaseService<FeeItem>
/* 13:   */ {
/* 14:   */   public void deleteByIntoId(String intoId)
/* 15:   */     throws Exception
/* 16:   */   {
/* 17:27 */     if (StringUtils.isBlank(intoId)) {
/* 18:28 */       throw new Exception("intoId is null");
/* 19:   */     }
/* 20:30 */     Map<String, String> param = new HashMap();
/* 21:31 */     param.put("orderId", intoId);
/* 22:32 */     this.publicDAO.delete("FeeItem.FeeItem", param);
/* 23:   */   }
/* 24:   */   
/* 25:   */   public List<FeeItem> pageListWithuncosc(FeeItem feeItem)
/* 26:   */   {
/* 27:37 */     List<FeeItem> result = this.publicDAO.select("FeeItem.FeeItem_Withuncosc", feeItem);
/* 28:38 */     return result;
/* 29:   */   }
/* 30:   */ }


/* Location:           D:\Program Files\apache-tomcat-8.0.20\webapps\demo2\WEB-INF\classes\
 * Qualified Name:     com.kuquo.app.order.cashBasis.fee.service.FeeItemService
 * JD-Core Version:    0.7.0.1
 */