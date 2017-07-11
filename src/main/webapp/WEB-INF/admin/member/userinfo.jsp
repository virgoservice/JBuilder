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
									<a id="nav_allorder" href="/member/order/all">全部订单</a>
									<a id="nav_spotorder" href="/member/order/plugin_list?typeid=5">景点订单</a>
								</div>
							</li>
							<li>
								<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-center-icon"></i>个人中心<i class="arrow-icon"></i> </a>
								<div class="son">
									<a id="nav_userinfo" href="/member/index/userinfo">个人资料</a>
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
					<div class="user-cont-box">
						<div class="personal-data">
							<h3 class="gr-tit">个人资料</h3>
							<dl> <dt>头&nbsp;&nbsp;像：</dt>
								<dd>
									<div class="head-pic">
										<img id="face" src="<%=path %>/resources/index/res/images/member_nopic.png">
										<span class="upload">编辑头像</span>
									</div> 
									<input type="hidden" id="litpic" value="/res/images/member_nopic.png"> 
								</dd>
							</dl>
							<dl> 
								<dt>昵&nbsp;&nbsp;称：</dt>
								<dd> 
									<input type="text" class="msg-text" id="nickname" value="ramostear">
									<span class="star-ico">*</span> 
								</dd>
							</dl>
							<dl> <dt>性&nbsp;&nbsp;别：</dt>
								<dd> <span class="sex"><a href="javascript:;">男</a><a href="javascript:;">女</a></span> <input type="hidden" name="sex" id="sex" value="保密"> </dd>
							</dl>
							<dl> <dt>出生年月：</dt>
								<dd> <input type="text" class="default-text" id="birth_date" name="birth_date" placeholder="年/月/日" value=""> </dd>
							</dl>
							<dl> <dt>籍&nbsp;&nbsp;贯：</dt>
								<dd> <input type="text" class="default-text" name="native_place" id="native_place" value=""> </dd>
							</dl>
							<dl> <dt>常住地址：</dt>
								<dd> <input type="text" class="default-text" name="address" id="address" value=""> </dd>
							</dl>
							<dl> <dt>手机号：</dt>
								<dd> <span class="phone-num">未绑定</span>
									<a class="revise" href="/member/index/modify_phone?change=1">绑定手机&gt;</a>
								</dd>
							</dl>
							<dl> <dt>E-mail：</dt>
								<dd> <span class="mail">ramostear@163.com</span>
									<a class="revise" href="/member/index/modify_email?change=1">更换邮箱&gt;</a>
								</dd>
							</dl>
							<dl> <dt>微信号：</dt>
								<dd> <input type="text" class="default-text" name="wechat" id="wechat" value=""> </dd>
							</dl>
							<dl> <dt>星&nbsp;&nbsp;座：</dt>
								<dd>
									<select name="constellation" id="constellation" class="drop-down" style="width: 65px;">
										<option value="水瓶座">水瓶座</option>
										<option value="双鱼座">双鱼座</option>
										<option value="白羊座">白羊座</option>
										<option value="金牛座">金牛座</option>
										<option value="双子座">双子座</option>
										<option value="巨蟹座">巨蟹座</option>
										<option value="狮子座">狮子座</option>
										<option value="处女座">处女座</option>
										<option value="天秤座">天秤座</option>
										<option value="天蝎座">天蝎座</option>
										<option value="射手座">射手座</option>
										<option value="魔羯座">魔羯座</option>
									</select>
								</dd>
							</dl>
							<dl> <dt>Q&nbsp;&nbsp;Q：</dt>
								<dd> <input type="text" class="default-text" name="qq" id="qq" value=""> </dd>
							</dl>
							<dl> <dt>个性签名：</dt>
								<dd> <textarea name="signature" id="signature" class="default-textarea"></textarea> </dd>
							</dl>
							<hr>
							<div class="save-revise">
								<a href="javascript:;" class="saveinfo">保存修改</a>
							</div>
							<div class="success-out-box" style=" display:none">
								<div class="box-con">
									<h3><img src="/res/images/success-ico.png">个人资料修改成功！</h3>
									<a href="javascript:;" class="close_success">确 定</a>
								</div>
							</div>
							<!--修改成功弹出框-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js"></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet"/>
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<jsp:include page="../index/footer.jsp" />
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