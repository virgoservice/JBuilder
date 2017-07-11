<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>会员中心</title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>
		<script>
			window.SITEURL = "/";
			window.CURRENCY_SYMBOL = "￥";
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js"></script>
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
				<div class="st-guide">
					<a href="/">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;会员中心 </div>
				<!--面包屑-->
				<div class="st-main-page">
					<div class="user-side-menu">
						<ul>
							<li>
								<a id="nav_index" href="<%=path %>/member/index"><i class="st-user-icon user-home-icon"></i>会员首页</a>
							</li>
							<li>
								<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-order-icon"></i>我的订单<i class="arrow-icon"></i> </a>
								<div class="son">
									<a id="nav_allorder" href="<%=path %>/member/order/list">全部订单</a>
									<a id="nav_spotorder" href="/member/order/plugin_list?typeid=5">景点订单</a>
								</div>
							</li>
							<li>
								<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-center-icon"></i>个人中心<i class="arrow-icon"></i> </a>
								<div class="son">
									<a id="nav_userinfo" href="<%=path %>/member/userinfo">个人资料</a>
									<a id="nav_safecenter" href="/member/index/safecenter">账号安全</a>
									<a id="nav_userbind" href="/member/index/userbind">账号绑定</a>
									<a id="nav_consignees_address" href="/member/index/address">收货地址</a>
								</div>
							</li>
						</ul>
					</div>
					<script>
						$(function() {
							$(".side-menu-group").on("click", function() {
								if(!$(this).hasClass("up")) {
									$(this).addClass("up").next(".son").addClass("hide");
								} else {
									$(this).removeClass("up").next(".son").removeClass("hide");
								}
							})
						})
					</script>
					<div class="user-order-box">
						<div class="user-home-box">
							<div class="hint-msg-box"> <span class="close-btn">关闭</span>
								<p class="hint-txt"> 温馨提示：请完善手机/邮箱信息，避免错过产品预定联系等重要通知! </p>
							</div>
							<script>
								$(function() {
									$('.close-btn').click(function() {
										$('.hint-msg-box').hide(500);
									})
								})
							</script>
							<div class="user-home-msg">
								<div class="user-msg-con">
									<div class="user-pic">
										<a href="/member/index/userinfo"><img src="<%=path %>/resources/index/res/images/member_nopic.png" width="90" height="90" /></a>
									</div>
									<div class="user-txt">
										<p class="name">${member.username}
											<a href="/member/club/rank"><span class="level">Lv.1</span></a>
										</p>
										<p class="item-bar">会员等级：普通会员</p>
										<p class="item-bar">登录邮箱： 未绑定
											<a class="rz-no" href="/member/index/modify_phone?change=0">立即绑定</a>
										</p>
										<p class="item-bar">手机号码： ${member.username}</p>
										<p class="item-bar">真实姓名： 未实名
											<a class="rz-no" href="/member/index/modify_idcard">实名认证</a>
										</p>
									</div>
								</div>
								<!-- 账号信息 -->
								<div class="user-msg-tj">
									<ul>
										<li class="my-jf" data-url="/member/order/all-unpay"> <em></em> <span>未付款</span> <strong>3</strong> </li>
										<li class="un-fk" data-url="/member/order/all-uncomment"> <em></em> <span>未点评</span> <strong>0</strong> </li>
										<li class="my-zx" data-url="/member/index/myquestion"> <em></em> <span>我的咨询</span> <strong>0</strong> </li>
										<!--                    <li class="un-dp" data-url="/member/index/myquestion">-->
										<!--                        <em></em>-->
										<!--                        <span>我的咨询</span>-->
										<!--                        <strong>0</strong>-->
										<!--                    </li>-->
									</ul>
								</div>
								<!-- 订单信息 -->
								<div class="user-info-exchange">
									<ul>
										<li><em>我的积分：</em><strong>0</strong></li>
										<!--                    <li><em>我的余额：</em><strong>¥6525</strong></li>-->
										<li><em>我的余额：</em><strong>￥0</strong></li>
										<li><em>优惠券：</em><strong>0</strong></li>
									</ul>
								</div>
							</div>
							<div class="user-home-order">
								<div class="order-tit">最新订单
									<a class="more" href="/member/order/all">查看更多&gt;</a>
								</div>
								<div class="order-list">
									<table width="100%" border="0" body_html=Nt4odC>
										<tr>
											<th width="55%" height="38" scope="col">订单信息</th>
											<th width="15%" height="38" scope="col">订单金额</th>
											<th width="15%" height="38" scope="col">订单状态</th>
											<th width="15%" height="38" scope="col">订单操作</th>
										</tr>
										<tr>
											<td height="114">
												<div class="con">
													<dl> <dt><a href="http://www.situcms.com/spots/show_27.html" target="_blank"><img src="http://www.situcms.com/uploads/2016/0222/c9b3521f90742f41963a23b9024d827b_110x80.jpg" width="110" height="80" alt="" /></a></dt>
														<dd>
															<a class="tit" href="http://www.situcms.com/spots/show_27.html" target="_blank">四川泸沽湖(四川泸沽湖门票)</a>
															<p>订单编号：05236666710887</p>
															<p>下单时间：2017-06-29 16:07:46</p>
														</dd>
													</dl>
												</div>
											</td>
											<td align="center"><span class="price"><i class="currency_sy">￥</i>360</span></td>
											<td align="center"><span class="dfk">等待付款</span></td>
											<td align="center">
												<a class="now-fk" href="/member/index/pay?ordersn=05236666710887">立即付款</a>
												<a class="cancel_order now-dp" style="background:#ccc" href="javascript:;" data-orderid="1321">取消</a>
												<a class="order-ck" href="/member/order/view?ordersn=05236666710887">查看订单</a>
											</td>
										</tr>
										<tr>
											<td height="114">
												<div class="con">
													<dl> <dt><a href="http://www.situcms.com/spots/show_25.html" target="_blank"><img src="http://www.situcms.com/uploads/main/litimg/20150917/20150917181230_110x80.jpg" width="110" height="80" alt="" /></a></dt>
														<dd>
															<a class="tit" href="http://www.situcms.com/spots/show_25.html" target="_blank">四川九寨沟甘海子风景名胜区(九寨沟甘海子门票)</a>
															<p>订单编号：05179925284193</p>
															<p>下单时间：2017-06-22 15:53:12</p>
														</dd>
													</dl>
												</div>
											</td>
											<td align="center"><span class="price"><i class="currency_sy">￥</i>130</span></td>
											<td align="center"><span class="dfk">等待付款</span></td>
											<td align="center">
												<a class="now-fk" href="/member/index/pay?ordersn=05179925284193">立即付款</a>
												<a class="cancel_order now-dp" style="background:#ccc" href="javascript:;" data-orderid="1303">取消</a>
												<a class="order-ck" href="/member/order/view?ordersn=05179925284193">查看订单</a>
											</td>
										</tr>
										<tr>
											<td height="114">
												<div class="con">
													<dl> <dt><a href="http://www.situcms.com/spots/show_130.html" target="_blank"><img src="http://www.situcms.com/uploads/2016/1229/5994efc163e76d27e69cc9d00e2a2190_110x80.jpg" width="110" height="80" alt="" /></a></dt>
														<dd>
															<a class="tit" href="http://www.situcms.com/spots/show_130.html" target="_blank">花湖(花湖门票)</a>
															<p>订单编号：05176554819778</p>
															<p>下单时间：2017-06-22 15:47:35</p>
														</dd>
													</dl>
												</div>
											</td>
											<td align="center"><span class="price"><i class="currency_sy">￥</i>52</span></td>
											<td align="center"><span class="dfk">等待付款</span></td>
											<td align="center">
												<a class="now-fk" href="/member/index/pay?ordersn=05176554819778">立即付款</a>
												<a class="cancel_order now-dp" style="background:#ccc" href="javascript:;" data-orderid="1302">取消</a>
												<a class="order-ck" href="/member/order/view?ordersn=05176554819778">查看订单</a>
											</td>
										</tr>
									</table>
								</div>
							</div>
							<!-- 我的订单 -->
						</div>
					</div>
					<!--会员首页-->
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js"></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet"/>
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<jsp:include page="../index/footer.jsp" />
		<!--帮助 扫码-->
		<script>
			$(function() {
				$("#nav_index").addClass('on');
				$(".user-msg-tj li").click(function() {
					var url = $(this).attr('data-url');
					if(url != '') {
						location.href = url;
					}
				})
			})
		</script>
		<!--订单中心用的js事件-->
		<script>
			$(function() {
				//取消订单
				$(".cancel_order").click(function() {
					var orderid = $(this).attr('data-orderid');
					var url = SITEURL + 'member/order/ajax_order_cancel';
					layer.confirm('确定取消订单吗？', {
						icon: 3,
						btn: ['放弃', '确定'], //按钮
						btn1: function() {
							layer.closeAll();
						},
						btn2: function() {
							$.getJSON(url, {
								orderid: orderid
							}, function(data) {
								if(data.status) {
									layer.msg('取消订单成功', {
										icon: 6,
										time: 1000
									});
									setTimeout(function() {
										location.reload()
									}, 1000);
								} else {
									layer.msg('取消订单失败', {
										icon: 5,
										time: 1000
									});
								}
							})
						},
						cancel: function() {
							layer.closeAll();
						}
					})
				})
			})
		</script>
	</body>

</html>