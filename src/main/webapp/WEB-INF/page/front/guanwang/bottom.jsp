<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>上理在线学院系统</title>
<link href="${ctx}/styles/front/style/bottom_page.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/styles/front/style/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!--[if !IE]>尾部<![endif]-->
<div class="foot">
  <div class="foot01">
    <div class="foot_text">
      <div class="foot_text01">
        <ul>
          <li><a href="#"><img src="${ctx}/Images/images/a40.jpg" /></a></li>
          <li><a href="#"><img src="${ctx}/Images/images/a41.jpg" /></a></li>
          <li><a href="#"><img src="${ctx}/Images/images/a42.jpg" /></a></li>
          <li><a href="#"><img src="${ctx}/Images/images/a43.jpg" /></a></li>
          <li><a href="#"><img src="${ctx}/Images/images/a44.jpg" /></a></li>
        </ul>
      </div>
      <div class="foot_text02">
        <div class="foot_text0201">
          <div class="foot_text0201_text"> <span>客服中心</span> </div>
          <div class="foot_text0201_text1">
            <h1><img src="${ctx}/Images/images/oneshop16.jpg" /></h1>
            <h3>工作时间：08:00-21:00</h3>
          </div>
          <div class="foot_text0201_text1">
            <h1><img src="${ctx}/Images/images/oneshop17.jpg" /></h1>
            <h3>联系方式：020-8557-2293</h3>
          </div>
          <div class="foot_text0201_text1">
            <h1><img src="${ctx}/Images/images/oneshop18.jpg" /></h1>
            <h2>邮箱： <a href="#">kuqusw@126.com </a> 
            <!--	<a href="mailto:service@1wandian.com?cc=service@1wandian.com">service@1wandian.com</a>  -->
            </h2>
          </div>
        </div>
        <div class="foot_text0202">
          <ul>
            <li id="ftpy">购物指南</li>
            <c:forEach items="${informationList}" var="information">
              <c:if test="${information.type=='3'}">
                <li><a href="${ctx}/infor.do?information.id=${information.id }">${information.title }</a></li>
              </c:if>
            </c:forEach>
          </ul>
        </div>
        <div class="foot_text0202">
          <ul>
            <li id="ftpy">商品配送</li>
             <c:forEach items="${informationList}" var="information">
              <c:if test="${information.type=='4'}">
                <li><a href="${ctx}/infor.do?information.id=${information.id }">${information.title }</a></li>
              </c:if>
            </c:forEach>
          </ul>
        </div>
        <div class="foot_text0202">
          <ul>
            <li id="ftpy">支付方式</li>
             <c:forEach items="${informationList}" var="information">
              <c:if test="${information.type=='5'}">
                <li><a href="${ctx}/infor.do?information.id=${information.id }">${information.title }</a></li>
              </c:if>
            </c:forEach>
          </ul>
        </div>
        <div class="foot_text0202">
          <ul>
            <li id="ftpy">售后服务</li>
             <c:forEach items="${informationList}" var="information">
              <c:if test="${information.type=='6'}">
                <li><a href="${ctx}/infor.do?information.id=${information.id }">${information.title }</a></li>
              </c:if>
            </c:forEach>
          </ul>
        </div>
        <div class="foot_text0203">
          <ul>
            <li id="ftpy">关于我们</li>
             <c:forEach items="${informationList}" var="information">
              <c:if test="${information.type=='7'}">
                <li><a href="${ctx}/infor.do?information.id=${information.id }">${information.title }</a></li>
              </c:if>
            </c:forEach>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="foot1">
<div class="foot1_bottom">
<div class="foot1_bottext">
版权所有：广州酷趣信息科技有限公司   经营许可证：<span>粤ICP备09080636</span><br />
技术支持：<a href="http://www.kuquo.com"><span>酷趣科技</span></a> 
</div>
</div>
</div>
 <!--[if !IE]>尾部结束<![endif]-->
</body>
</html>
