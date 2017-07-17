<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title clear_html=Pt4odC> 确认订单-思途CMS演示网站 </title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>
		<stourweb_header/>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-base.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js"></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-jquery.validate.js,-res-js-jquery.md5.js" ></script>
	</head>

	<body>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<jsp:include page="../index/header.jsp" />
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js"></script>
		
		<div class="big">
			<div class="wm-1200">
				<link href="<%=path %>/resources/index/payment/public/css/pay.css" rel="stylesheet" media="screen" type="text/css" />
				<div class="big">
					<div class="wm-1200">

						<div class="st-guide">
							<a href="<%=path %>/index">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;在线支付
						</div>
						<!--面包屑-->

						<div class="st-main-page">
							<div class="st-payment-way">
								<div class="payment-msg">
									<div class="msg-tit">
										<strong class="gfk">立即付款</strong>
										<span>订单总额：<b>￥${order.orderPrice }</b></span>
									</div>
									<div class="msg-list">
										<ul>
											<li><em>订单号：</em>
												<a>${order.orderCode }</a>
											</li>
											<li><em>产品名称：</em>
												<a target="_blank">${order.list[0].goodsName }</a>
											</li>
											<li><em>购买时间：</em><fmt:formatDate value="${order.createTime}" type="both" /></li>
											<li><em>产品编号：</em>${order.list[0].goodsCode }</li>
										</ul>
									</div>
								</div>
								<!-- 订单信息 -->
								<div class="payment-con">
									<h3>选择以下支付方式付款</h3>
									<div class="payment-on">
										<dl>
											<dt>线上支付</dt>
											<dd>
												<ul>
													<li data="11" data-payurl="" class="active">
														<span><img  src="<%=path %>/resources/index/img/alipay.png" height="60px"/></span>
														<div class="txt"><i></i></div>
													</li>

												</ul>
											</dd>
										</dl>
									</div>
									<div class="payment-now-btn">
										<a href="<%=path %>/member/order/payTicket?orderId=${order.id}&returnType=2" class="error" id="st-payment-submit" >立即付款</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="st-payment-back-box" id="st-payment-back-box" style="display: none">
					<div class="st-back-con">
						<h3>支付反馈<i class="close-button"></i></h3>
						<div class="payment-ts-con">
							<div class="payment-opp">
								<a href="/member/order/view?ordersn=05236666710887">
									<dl class="cg">
										<dt></dt>
										<dd>查看订单详情</dd>
									</dl>
								</a>
								<a href="javascript:" id="st-payment-back-error" class="close-button">
									<dl class="sb">
										<dt></dt>
										<dd>选择其他支付方式</dd>
									</dl>
								</a>
							</div>
							<p class="ts">温馨提示：请您在新打开的网上银行页面进行支付，支付完成前请不要关闭该窗口。</p>
						</div>
					</div>
				</div>
				<!-- 支付返回框 -->
				<script>
					var param = {
						ordersn: '05236666710887',
					};
				</script>
				<script src="public/js/index.js"></script>
			</div>
		</div>
		<stourweb_content/>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<jsp:include page="../index/footer.jsp" />
		<stourweb_footer/> </body>

</html>