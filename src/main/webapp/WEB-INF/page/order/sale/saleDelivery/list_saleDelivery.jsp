<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
	<title>销售出货单列表</title>
	<%@ include file="/commons/taglibs.jsp" %>
	<%@ include file="/commons/meta.jsp" %>
	
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/b2bBlue/easyui.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/icon.css">	
	<link id="currentCss" name="currentCss" rel="StyleSheet" type="text/css" href="${ctx}/styles/kuquForm/form.css">
	
	
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/framework/jquery.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/framework/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/common/list_common.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/order/sale/saleDelivery/list_saleDelivery.js"></script>
	<script language="javascript" type="text/javascript" src="${ctx}/scripts/common/common.js"></script>
</head> 

<body>
	<input type="hidden"  id="orderInserts" value="${userpowermap['inserts_order']}" />
	<input type="hidden"  id="orderDeletes" value="${userpowermap['deletes_order']}" />
	<input type="hidden"  id="orderSelects" value="${userpowermap['selects_order']}" />
	<input type="hidden"  id="orderUpdates" value="${userpowermap['updates_order']}" />
	<s:hidden name="saleDelivery.paymentState" id="paymentState"/>
	<s:hidden name="saleDelivery.customerId" id="customerId"/>
	<div style="margin-top: 10px; margin-bottom: 5px;">
		<table id="search" border="0" cellpadding="0"  cellspacing="1" class="gdcn-table-bgcolor" width="100%" style="font-size: 12px;">
			<tr>
				<td class='gridtitle'>订单编号：</td>
				<td class='gridbody'><input type="text" id="orderCode" onkeydown="checkKey()" /></td>
				<td class='gridtitle'>客户名称：</td>
				<td class='gridbody'><input type="text" id="customerName" onkeydown="checkKey()" /></td>
				<c:if test="${roleCode == 'admin'}">
					<td class='gridtitle'>配送仓位</td>
				    <td class='gridbody'>
				      <s:hidden id="warehouseId" name="warehouseId"/>
				      <input id="warehouseName" name=" warehouseName" onclick="selectWarehouse()" readonly="true" onkeydown="checkKey()"/>
				    </td>
			    </c:if>
			    <td class='gridtitle'>手机：</td>
				<td class='gridbody'><input type="text" id="mobile" onkeydown="checkKey()" /></td>
				<td class='gridtitle'>
					<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-search" onclick="searchData()">搜索</a>&nbsp;&nbsp;&nbsp;
	  				<a id="btnAudit" href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-reload" onclick="cancelSearch()">清空</a>
				</td>
			</tr>
		</table>
	</div>
	
	<table id="dataGrid"></table>
</body>

</html>