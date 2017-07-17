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
					<a href="<%=path %>/index">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;会员中心 </div>
				<!--面包屑-->
				<div class="st-main-page">
					<jsp:include page="member_menu.jsp" />
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
							<form id="user-form">
								<h3 class="gr-tit">个人资料</h3>
								<dl> <dt>头&nbsp;&nbsp;像：</dt>
									<dd>
										<div class="head-pic">
											<img id="face" src="<%=path %>/resources/index/res/images/member_nopic.png">
											<span class="upload">编辑头像</span>
										</div> 
										<!-- <input type="hidden" id="litpic" value="/res/images/member_nopic.png">  -->
										<input type="hidden" id="id" name="id" value="${member.id }">
									</dd>
								</dl>
								<dl> 
									<dt>登录账户：</dt>
									<dd> 
										<input type="text" class="msg-text" id="username" name="username" value="${member.username }" readonly="readonly">
										<span class="star-ico">*</span> 
									</dd>
								</dl>
								<dl> 
									<dt>昵&nbsp;&nbsp;称：</dt>
									<dd> 
										<input type="text" class="msg-text" id="nickname" name="nickname" value="${member.nickname }">
										<span class="star-ico">*</span> 
									</dd>
								</dl>
								<dl> <dt>联系电话：</dt>
									<dd> <input type="text" class="default-text" id="phone" name="phone" value="${member.phone }"> </dd>
								</dl>
								<dl> <dt>邮&nbsp;&nbsp;箱：</dt>
									<dd> <input type="text" class="default-text" name="email" id="email" value="${member.email}"> </dd>
								</dl>
								<dl> <dt>Q&nbsp;&nbsp;Q：</dt>
									<dd> <input type="text" class="default-text" name="qq" id="qq" value="${member.qq }"> </dd>
								</dl>
								<dl> <dt>个性签名：</dt>
									<dd> <textarea name="signature" id="signature" class="default-textarea">${member.signature }</textarea> </dd>
								</dl>
							</form>
							<hr>
							<div class="save-revise">
								<a href="javascript:;" class="saveinfo">保存修改</a>
							</div>
							<div class="success-out-box" style=" display:none">
								<div class="box-con">
									<h3><img src="<%=path %>/resources/index/res/images/success-ico.png">个人资料修改成功！</h3>
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
			$(".saveinfo").click(function(){
				var data = $("#user-form").serialize();
				data = decodeURIComponent(data,true);
				$.ajax({
					url:"<%=path %>/member/userinfo",
					type:'POST',
					encentType:"application/x-www-form-urlencoded",
					encoding:"utf-8",
					cache:false,
					data:data,
					success:function(){
					$(".success-out-box").show();
					}
				});
			});
			$(".close_success").click(function(){
				$(".success-out-box").hide();
			});
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