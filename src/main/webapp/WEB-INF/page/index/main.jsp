﻿﻿<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
	<title>E购-网上商城系统(B2C)</title>
	<%@ include file="/commons/taglibs.jsp" %>
	<%@ include file="/commons/meta.jsp" %>
	
	<link rel="stylesheet" type="text/css" href="${ctx }/styles/index/index4.css" />
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/icon.css">	
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/framework/jquery.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/framework/easyui/jquery.easyui.min.js"></script>
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/index/main.js"></script>
</head>

<body class="easyui-layout">
		<div region="north" style="height:114px;background-color: #86aeec;">
	        <div class="header">
	            <div class="tel">服务热线:400-100-1922</div>
	        </div>		
	        <div class="banner for">
	            <div class="peo3"><img src="${ctx }/Images/index/peo3.gif" height="23" width="17"/></div>
	            <div class="font1">
	            	${loginUser.roleName}&nbsp;系统           	
	            </div>
	            <div class="font2">
	            	${loginUser.name},欢迎登录!
					<a href="javascript:void(0)" target="_self" onClick="javascript:logout();">
						<img src="${ctx }/Images/index/bott.gif" alt="退出" width="46" height="16" border="0">
					</a>		            	
	            </div>
	        </div>	        
		</div> 
		
        <div region="west" title="Menu" style="width:161px;padding:0px;overflow:hidden;">
	      	<div class="leftbanner">
	            
	            <!-- 菜单 开始 -->
	            
	            <c:if test="${not empty powerMap['customer'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/Images/index/peo3.gif" width="21" height="18" /></div>
		                <div class="font4">会员管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		            		<li><a href="javascript:void(0)" onclick="addTab('会员列表','${ctx}/customers!list.do')">会员列表</a></li>
		                	<li><a href="javascript:void(0)" onclick="addTab('会员充值','${ctx}/prepaid!list.do')">会员充值</a></li>
		                	<li><a href="javascript:void(0)" onclick="addTab('咨询管理','${ctx}/message!list.do?message.state=c')">咨询管理</a></li>
		                    <li><a href="javascript:void(0)" onclick="addTab('会员评论','${ctx}/wareComment!list.do')">会员评论</a></li>
		                	<li><a href="javascript:void(0)" onclick="addTab('会员等级','${ctx}/vipLevel!list.do')">会员等级</a></li>
		                	<li><a href="javascript:void(0)" onclick="addTab('会员优惠卷','${ctx}/vipCoupon!list.do')">会员优惠卷</a></li>
		                	<li style="display:none;"><a href="javascript:void(0)" onclick="addTab('会员提现申请','${ctx}/applyToCash!list.do')">会员提现申请</a></li>
		               </ul>
		            </div>		            
	            </c:if>
	            
	            <c:if test="${not empty powerMap['good'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/303.gif" width="21" height="18" /></div>
		                <div class="font4">商品管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		            		<li><a href="javascript:void(0)" onclick="addTab('商品列表','${ctx}/good!list.do')">商品列表</a></li>		            	
							<li><a href="javascript:void(0)" onclick="addTab('商品类别','${ctx}/goodType!list.do?goodType.isInventory=0')">商品类别</a></li>		            	
							<li><a href="javascript:void(0)" onclick="addTab('商品品牌','${ctx}/goodBrand!list.do?goodBrand.isInventory=0')">商品品牌</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('商品种类','${ctx}/goodKind!list.do')">商品种类</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('商品规格','${ctx}/goodSpecification!list.do')">商品规格</a></li>
		                </ul>
		            </div>		            
	            </c:if>
	            <!-- 
	                       <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/303.gif" width="21" height="18" /></div>
		                <div class="font4">促销商品</div>
		            </div>
		            <div class="submenu">
		            <ul>
		            		<li><a href="javascript:void(0)" onclick="addTab('促销商品','${ctx }/good!list.do?good.isInventory=1')">促销商品</a></li>
		                    <li><a href="javascript:void(0)" onclick="addTab('商品规格','${ctx}/goodSpecification!list.do')">商品规格</a></li>
		                    <li><a href="javascript:void(0)" onclick="addTab('商品种类','${ctx}/goodKind!list.do')">商品种类</a></li>
		            	    <li><a href="javascript:void(0)" onclick="addTab('促销商品类别','${ctx}/goodType!list.do?goodType.isInventory=1')">促销商品类别</a></li>
		                    <li><a href="javascript:void(0)" onclick="addTab('促销商品品牌','${ctx}/groupGoodBrand!list.do?goodBrand.isInventory=1')">促销商品品牌</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('促销商品订单','${ctx }/Order!list.do')">促销商品订单</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('促销商品帮助','${ctx }/News!list.do?news.type=9')">促销商品帮助</a></li>
							<li style="display:none;"><a href="javascript:void(0)" onclick="addTab('团购会员','${ctx}/customers!list.do?customer.type=1')">促销商品会员</a></li>
		                </ul>
		            </div>
		            --> 
	            <c:if test="${not empty powerMap['order'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/202.gif" width="21" height="18" /></div>
		                <div class="font4">销售管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		            			<li><a href="javascript:void(0)" onclick="addTab('销售订单','${ctx}/saleOrder!list.do')">销售订单</a></li>
		            			<li><a href="javascript:void(0)" onclick="addTab('销售出货单','${ctx}/saleDelivery!list.do')">销售出货单</a></li>
		            			<li><a href="javascript:void(0)" onclick="addTab('销售收款单','${ctx}/saleCollection!list.do')">销售收款单</a></li>
		            			<li><a href="javascript:void(0)" onclick="addTab('销售退货单','${ctx}/saleReturn!list.do')">销售退货单</a></li>
		                </ul>
		            </div>		            
	            </c:if>
	            
	            
	             <c:if test="${not empty powerMap['warehouse'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/icon_36.gif" width="21" height="18" /></div>
		                <div class="font4">仓库管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		               		<li><a href="javascript:void(0)" onclick="addTab('仓库信息','${ctx}/warehouse!list.do')">仓库信息</a></li>
		               		<li><a href="javascript:void(0)" onclick="addTab('库存报表','${ctx}/warehouseWare!list.do')">库存报表</a></li>
		               		<li><a href="javascript:void(0)" onclick="addTab('商品入库单','${ctx}/warehouseInto!list.do?warehouseInto.type=2')">商品入库单</a></li>	
		                </ul>
		            </div>		            
	            </c:if>	
	            <c:if test="${not empty powerMap['market'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/icon_16.gif" width="21" height="18" /></div>
		                <div class="font4">营销活动</div>
		            </div>
		            <div class="submenu">
		            	<ul>
							<li><a href="javascript:void(0)" onclick="addTab('广告管理','${ctx}/advertise!list.do')">广告管理</a></li>
		                	<li><a href="javascript:void(0)" onclick="addTab('杂志管理','${ctx}/magazine!list.do')">杂志管理</a></li>
		                </ul>
		            </div>		    
	            </c:if>	  	                                         
	            
	            <!-- 
	            	<c:if test="${not empty powerMap['buy'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/icon_50.gif" width="21" height="18" /></div>
		                <div class="font4">促销管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		                	<li><a href="javascript:void(0)" onclick="addTab('商品包装管理','${ctx}/packaging!list.do')">商品包装</a></li>
	                		<li><a href="javascript:void(0)" onclick="addTab('祝福贺卡','${ctx}/greetingCard!list.do')">祝福贺卡</a></li>
	                		<li><a href="javascript:void(0)" onclick="addTab('促销专题','${ctx}/promote!list.do')">促销专题</a></li>
	                		<li><a href="javascript:void(0)" onclick="addTab('促销栏位设置','${ctx}/promotecolumn!list.do')">促销栏位设置</a></li>
		                	<li><a href="javascript:void(0)" onclick="addTab('优惠活动','${ctx}/promotionActivity!list.do')">优惠活动</a></li>
	                		<li><a href="javascript:void(0)" onclick="addTab('礼品包赠送','${ctx}/gift!list.do')">礼品包赠送</a></li>
		                </ul>
		            </div>		            
	            </c:if>	 
	             --> 
	            
	            <c:if test="${not empty powerMap['information'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/104.gif" width="21" height="18" /></div>
		                <div class="font4">资讯管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>         	
							<li><a href="javascript:void(0)" onclick="addTab('公告管理','${ctx}/information!list.do?information.type=0')">公告管理</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('新闻管理','${ctx}/information!list.do?information.type=1')">新闻管理</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('资讯管理','${ctx}/information!list.do?information.type=2')">购物资讯</a></li>
		                </ul>
		            </div>		            
	            </c:if>
	            <c:if test="${not empty powerMap['mall'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/icon_56.gif" width="21" height="18" /></div>
		                <div class="font4">商城设置</div>
		            </div>
		            <div class="submenu">
		            	<ul>         	
							<li><a href="javascript:void(0)" onclick="addTab('购物指南','${ctx}/information!list.do?information.type=3')">购物指南</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('商品配送','${ctx}/information!list.do?information.type=4')">商品配送</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('支付方式','${ctx}/information!list.do?information.type=5')">支付方式</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('售后服务','${ctx}/information!list.do?information.type=6')">售后服务</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('规则设置','${ctx}/information!list.do?information.type=9')">规则设置</a></li>
	                		<li><a href="javascript:void(0)" onclick="addTab('关于家电网','${ctx}/information!list.do?information.type=7')">关于我们</a></li>
		                </ul>
		            </div>		            
	            </c:if>	 	 
	            
	            <c:if test="${not empty powerMap['baseinfo'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/icon_47.gif" width="21" height="18" /></div>
		                <div class="font4">基本信息</div>
		            </div>
		            <div class="submenu">
		            	<ul>
							<li><a href="javascript:void(0)" onclick="addTab('地区信息','${ctx}/area!list.do')">地区信息</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('支付方式','${ctx}/payment!list.do')">支付方式</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('配送方式','${ctx}/delivery!list.do')">配送方式</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('现金银行','${ctx}/bankAccount!list.do')">现金银行</a></li>
							<li style="display:none;"><a href="javascript:void(0)" onclick="addTab('数据字典','${ctx}/Dictionary!list.do')">数据字典</a></li>
		                </ul>
		            </div>
		        </c:if>
		        
		        <!-- 报表中心 -->
		        <c:if test="${not empty powerMap['formcenter'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/Chart.gif" width="21" height="18" /></div>
		                <div class="font4">报表中心</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		            		<li><a href="javascript:void(0)" onclick="addTab('销售管理报表','${ctx}/showlist!list.do?type=order')">销售管理报表</a></li>
		                </ul>
		            </div>
		        </c:if>
	            
	            
		        <!-- 流量统计 -->
		        <c:if test="${not empty powerMap['dataflow'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/notepad.gif" width="21" height="18" /></div>
		                <div class="font4">流量统计</div>
		            </div>
		            <div class="submenu">
		            	<ul>
		            		<li><a href="javascript:void(0)" onclick="flowmeter()">流量分析</a></li>
		                </ul>
		            </div>
		        </c:if>	        
	            
	            <c:if test="${not empty powerMap['system'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/formImg/user.gif" width="21" height="18" /></div>
		                <div class="font4">系统管理</div>
		            </div>
		            <div class="submenu">
		            	<ul>
							<li><a href="javascript:void(0)" onclick="addTab('系统用户','${ctx }/SysUser!list.do')">系统用户</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('系统部门','${ctx }/SysDept!list.do')">组织部门</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('系统角色','${ctx }/SysRole!list.do')">系统角色</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('系统普通权限','${ctx }/SysPower!list.do')">系统普通权限</a></li>
							<li><a href="javascript:void(0)" onclick="addTab('系统高级权限','${ctx }/SysRole!roleAnduserList.do')">系统高级权限</a></li>
							<li><a href="javascript:void(0)" onclick="backupData()">数据备份</a></li>
		            	</ul>
		            </div>
		        </c:if>
		     
	            <c:if test="${not empty powerMap['desktop'] }">
		            <div class="ban1">
		            	<div class="pic"><img src="${ctx }/Images/index/maintenance.gif" width="21" height="18" /></div>
		                <div class="font4">我的桌面</div>
		            </div>
		            <div class="submenu">
		            	<ul>
							<li><a href="javascript:void(0)" onclick="addTab('修改密码','${ctx }/SysUser!editPassword.do')">修改密码</a></li>
		                </ul>
		            </div>		            
	            </c:if>		                   
	            <!-- 菜单 结束 -->
	            
	   		 </div>        
        </div> 
         
        <div region="center" >
	        <div id="tab_area" >
	        
	       	</div>
        </div>
</body>

</html>
