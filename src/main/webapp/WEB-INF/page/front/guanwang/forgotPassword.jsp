<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>
<%@ include file="/commons/meta.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上理在线学院</title>
<link href="style/base.css" rel="stylesheet" type="text/css" />
<link href="style/forgotPassword_page.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="pro_dropdown_2/pro_dropdown_2.css" />
<script src="js/stuHover.js" type="text/javascript"></script>
<script language="javascript" src="js/jquery.js"></script>
<script language="javascript" src="js/index20110925_mini.js"></script>
<script language="javascript" src="js/jquery2.js"></script>
<SCRIPT type="text/javascript" src="js/jquery1.js"></SCRIPT>
<script>
function changeDiv(tag,method){document.getElementById(tag).style.display = method;}
</script>
</head>
<body>
<div class="box">
<iframe width="100%" height=191 frameborder=0 scrolling=no src="header.htm" style="z-index:1000"></iframe> 
  <!--[if !IE]>中间<![endif]-->
  <div class="content">
   <!--[if !IE]>忘记密码1<![endif]-->
  <div class="forgotpassword">
  <div class="forgotpassword01">
  <h1>1、输入用户名</h1>
  <h2>2、账户验证及密码重置     </h2>
  <h3>3、密码修改成功</h3>
  </div>
    <div class="forgotpassword02">
	<div class="forgotpassword0201">
	<div class="forgotpassword0201_text">
	<h1>账户名：</h1>
	<h2><input name="" type="text"  class="forgotpasswordinput" value="用户名/邮箱/已验证手机"/></h2>
	</div>
	<div class="forgotpassword0201_text">
	<h1>验证码：</h1>
	<h2><input name="" type="text"  class="forgotpasswordinput1"/></h2>
	<h3><img src="images/pass3.jpg" /></h3>
	<h3>看不清楚，</h3>
	<h4><a href="#">换一张</a></h4>
	</div>
	<div class="forgotpassword0201_text">
	<h1></h1>
	<h6>
	<span><input name="" type="button"  class="forgotpasswordbutton" onclick="window.open('forgotPassword2.html')"/></span>
	<samp><a href="index.html">返回首页</a></samp>
	</h6>
	</div>
	</div>
	
	</div>
  </div>
   <!--[if !IE]>忘记密码1<![endif]-->
  </div>
  
  <iframe width="100%" height="500" frameborder=0 scrolling=no src="bottom.htm" style="padding-top:20px;"></iframe>
</div>


</body>
</html>
