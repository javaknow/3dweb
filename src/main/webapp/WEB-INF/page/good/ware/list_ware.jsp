<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
	<title>货品列表</title>
	<%@ include file="/commons/taglibs.jsp" %>
	<%@ include file="/commons/meta.jsp" %>
	
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/b2bBlue/easyui.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/icon.css">	
	
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/framework/jquery.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/framework/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/common/list_common.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/good/ware/list_ware.js"></script>

</head> 

<body>
	<div style="margin-top: 10px; margin-bottom: 5px;">
		<table border="0" cellpadding="0"  cellspacing="1" class="gdcn-table-bgcolor" width="700px" style="font-size: 12px;">
			<tr>
				<td class='gridtitle'>货品编号：</td>
				<td class='gridbody'><input type="text" id="goodCode" onkeydown="checkKey()" size="10"/></td>
				<td class='gridtitle'>货品名称：</td>
				<td class='gridbody'><input type="text" id="goodName" onkeydown="checkKey()" size="10"/></td>
				<td class='gridtitle'>货品类别：</td>
				<td class='gridbody'><input type="text" id="goodTypeName" onkeydown="checkKey()" size="10"/></td>
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