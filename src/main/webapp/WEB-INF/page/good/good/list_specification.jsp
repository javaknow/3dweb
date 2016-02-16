<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
	<title>规格列表</title>
	<%@ include file="/commons/taglibs.jsp" %>
	<%@ include file="/commons/meta.jsp" %>
	
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/b2bBlue/easyui.css">
	<link rel="stylesheet" type="text/css" href="${ctx }/scripts/framework/easyui/themes/icon.css">	
	<link id="currentCss" name="currentCss" rel="StyleSheet" type="text/css" href="${ctx}/styles/kuquForm/form.css">
	<script language="JavaScript" type="text/javascript" src="${ctx }/scripts/framework/jquery.js"></script>
	<script language="JavaScript" type="text/javascript" src="${ctx}/scripts/framework/jquery.form.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/framework/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/common/list_common.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/good/good/list_specification.js"></script>

</head> 

<body>
	<div style="margin: 5px;">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" onclick="selectSpecification()">添加规格项</a>
	</div>
	<form action="" id="buildWare" method="post">
		<div class="easyui-tabs" fit="false" plain="true" style="height:240px;width:780px; margin-left: 10px;" id="tabs">
			<div title="规格" style="padding:10px;" closable="true"></div>
		</div>
		<div style="margin: 5px;">
			<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-ok" onclick="submitBuildWare()">生成货品</a>
		</div>
	</form>
</body>

</html>