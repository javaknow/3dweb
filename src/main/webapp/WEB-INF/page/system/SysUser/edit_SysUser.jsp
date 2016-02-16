<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
	<title>User Manage</title>
	<%@ include file="/commons/taglibs.jsp" %>
	<%@ include file="/commons/meta.jsp" %>
	
	<link id="currentCss" name="currentCss" rel="StyleSheet" type="text/css" href="${ctx}/styles/kuquForm/form.css">
	<script language="JavaScript" type="text/javascript" src="${ctx}/scripts/framework/jquery.js"></script>
	<script language="JavaScript" type="text/javascript" src="${ctx}/scripts/framework/jquery.form.js"></script>
	<script language="JavaScript" type="text/javascript" src="${ctx}/scripts/common/common.js"></script>
	<script language="javascript" type="text/javascript" src="${ctx}/scripts/system/SysUser/edit_SysUser.js"></script>
</head>

<body>

    <table border="0" cellspacing="0" cellpadding="0" class="gdcn-table-E">
    	<tr>
    		<td class="gdcn-table-D">
				<div class="tab-pane" id="tabPane1" style="margin: 10px 10px 10px 10px;">
					<form id="saveForm" method="post" action="">
			    	    <s:hidden name="sysUser.id" id="id" />
			    		<s:hidden name="sysUser.creatorId" />
			    		<s:hidden name="sysUser.creatorName" />
			    		<s:hidden name="sysUser.createTime" />
			    		<s:hidden name="sysUser.modifierId" />
			    		<s:hidden name="sysUser.modifierName" />
			    		<s:hidden name="sysUser.modifyTime" />
			    		<s:hidden name="sysUser.state" />
			    		<s:hidden name="sysUser.roleCode" id="roleCode" />
					
						<table width="100%"  border="0" cellpadding="0" cellspacing="1" class="gdcn-table-bgcolor">						
							<tr>
								<td class='gridtitle'>登录帐号</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.code" id="code" /><font color="red">*</font>
								</td>
								<td class='gridtitle'>昵称</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.name" id="name" /><font color="red">*</font>
								</td>							
							</tr>	
							<tr>
								<td class='gridtitle'>密码</td>
								<td class='gridbody'>
									<input type="password" name="sysUser.pwd" id="pwd" size="21" value="${sysUser.pwd}" /><font color="red">*</font>
								</td>
								<td class='gridtitle'>确认密码</td>
								<td class='gridbody'>
									<input type="password" name="rePwd" id="rePwd" size="21" value="${sysUser.pwd}" /><font color="red">*</font>
								</td>					
							</tr>
							<tr>
								<td class='gridtitle'>手机</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.mobile" id="mobile" maxlength="50" /><font id="fntMobile" color="red"><c:if test="${sysUser.roleCode!='region'}">*</c:if></font>
								</td>
								<td class='gridtitle'>固定电话</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.telphone" id="telphone" maxlength="50" /><font id="fntTelephone" color="red"><c:if test="${sysUser.roleCode!='region'}">*</c:if></font>
								</td>					
							</tr>
							<tr>
								<td class='gridtitle'>公司</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.company" id="company" maxlength="50" />
								</td>
								<td class='gridtitle'>地址</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.address" id="address" maxlength="50" />
								</td>					
							</tr>
							<tr>
								<td class='gridtitle'>Email</td>
								<td class='gridbody'>
									<s:textfield name="sysUser.email" id="email"/>
								</td>
								
								<td class='gridtitle'>部门</td>
								<td class='gridbody'>
									<s:select name="sysUser.deptId" id="deptId" headerKey="" headerValue="请选择" list="sysDeptlist" listKey="id" listValue="name" onchange="selectUserType()" />
									<font color="red">*</font>	
								</td>
															
							</tr>
							<tr>
								<td class='gridtitle'>所属仓位</td>
							    <td class='gridbody'>
							      <s:hidden id="warehouseId" name="sysUser.warehouseId"/>
							      <s:textfield id="warehouseName" name="sysUser.warehouseName" onclick="selectWarehouse()" cssClass="inputTextBorder" readonly="true" />
							    </td>
							    
							    <td class='gridtitle'>系统角色</td>
								<td class='gridbody'>
									<s:select name="sysUser.roleId" id="roleId" headerKey="" headerValue="请选择" list="sysRoleList" listKey="id" listValue="name"  />
									<font color="red">*</font>	
								</td>
							</tr>
						</table>
					</form>
				</div>
	    	</td>
	    </tr>
	</table>

</body>

</html>

