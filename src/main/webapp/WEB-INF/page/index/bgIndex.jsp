<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
 <head>
	<title></title>
	<%@ include file="/commons/taglibs.jsp" %>
	<%@ include file="/commons/meta.jsp" %>
	
	<link rel="stylesheet" type="text/css" href="${ctx }/styles/index/mainInfo.css" />
	<script language="JavaScript" type="text/javascript" src="${ctx}/scripts/index/mainInfo.js"></script>
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/framework/jquery.js"></script>
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/index/bgIndex.js"></script>
</head>
<body>
<input type="hidden" value="${sysUser.roleCode}" id="roleCode">
<div class="whole">
         <div class="right">
         	<div class="righttop">
            	<div class="order">
                	<div class="width1 for"><div class="font3">订单提醒</div></div>
                    <div class="fontorder">
                    	<span><li>你有未处理订单&nbsp;&nbsp;<a style="text-decoration: underline;" href="javascript:addTab('销售订单','${ctx}/saleOrder!list.do?saleOrder.orderState=0')" ><font color="red">  ${saleOrder.orderStateNum }   </font></a>&nbsp;&nbsp;笔</li></span>
                    <span><li>你有未发货订单&nbsp;&nbsp; <a style="text-decoration: underline;" href="javascript:addTab('发货订单','${ctx}/saleDelivery!list.do')"><font color="red">     ${saleDelivery.deliveryStateNum}   </font></a>&nbsp;&nbsp;笔 </li></span>
                 <span> <li> 你有未收款订单&nbsp;&nbsp; <a style="text-decoration: underline;" href="javascript:addTab('收款订单','${ctx}/saleOrder!list.do')"> <font color="red">    ${saleDelivery.paymentStateNum }   </font></a>&nbsp;&nbsp;笔</li></span>
                <span><li>你有未处理咨询&nbsp;&nbsp;<a style="text-decoration: underline;" href="addTab('咨询管理','${ctx}/message!list.do?message.state=0')"><font color="red">  ${message.messageNum}  </font></a>&nbsp;&nbsp;笔</li></span><br/>
                <span><li>你有未处理评论&nbsp;&nbsp;<a style="text-decoration: underline;" href="javascript:addTab('会员评论','${ctx}/wareComment!list.do?wareComment.wareComment=0')"><font color="red">  ${wareComment.wareCommentNum}  </font></a>&nbsp;&nbsp;条
                    </span>
                    	<br/>
                    </div>
                    <div class="pic1"><img src="${ctx }/Images/index/histogram.gif" width="555" height="235" /></div>
                </div>
                <div class="news">
<div class="width2 for"><div class="font3">最新信息</div></div>
                    <div class="new">
                    	<div class="new1">最新订单</div>
                    	<marquee width="290" height="125" direction="up" scrollamount="3" onmouseover="this.stop()" onmouseout="this.start()">
                            <ul>
                            	<c:forEach var="order" items="${resultList}" varStatus="i">
                            		<c:if test="${i.index<6}">
                                	<li><a href="javascript:void(0)" onclick="addTab('销售订单','${ctx}/saleOrder!list.do')"><span style="color: red;">${order.code}</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>金额:${order.orderMoney}</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>${order.customerName}</span></a></li>
                                	</c:if>
                                 </c:forEach>
                            </ul>
                         </marquee>
                    </div>
                    <div class="new"><div class="new1" align="left">最新会员</div>
                    	<div>
                            <ul>
                            	<c:forEach var="customer" items="${customerList}" varStatus="i">
                            		<c:if test="${i.index<6}">
                                	<li><a href="javascript:void(0)" onclick="addTab('会员列表','${ctx}/customers!list.do?customer.type=s')"><span style="color: blue;"><fmt:formatDate pattern="yyyy-MM-dd" value="${customer.createTime}" /></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>帐号:${customer.code}</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>${fn:substring(customer.areaNames,0,10)}</span></a></li>
                                	</c:if>
                                 </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="rightbottom">
            	<div class="loding">
                	<div class="width3 for"><div class="font3">登陆消息</div></div>
                    <div class="pic2"><img src="${ctx }/Images/index/peo2.gif" width="46" height="58" /></div>
                    <div class="people"><font color="blue">${loginUser.name }&nbsp;&nbsp;,欢迎您<br/></font>三天内共登陆了${Static.SESSION_USER }次<br />上次登陆时间： 2011-5-7 20:17:52</div>
                </div>
                <div class="message">
                	<div class="width3 for"><div class="font3">版权信息</div></div>
                	<div>
                         <ul>
                         <li>系统名称： E购-网上商城系统(B2C) </li>
                             <li>系统版本：  V2.12.3版</li>
                             <li>官方网站：  <a href="http://www.kuquo.com"  target="_blank">http://www.kuquo.com</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.egshops.com" target="_blank">www.egshops.com</a></li>
                             <li>版权所有： 广州酷趣信息科技有限公司</li>
                             <li>技术支持：   <font color="blue" size="+1">400-100-1922</font>
                             <li>授权提示：  <font style="color:#FF0000;">在未取得商业授权之前，您不能将本软件应用于商业用途</font></li>
                         </ul>
                    </div>
                </div>
            </div>
		 </div>
		 </div>
</body>
</html>
