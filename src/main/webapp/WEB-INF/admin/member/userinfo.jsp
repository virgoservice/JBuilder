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
	</head>

	<body>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<jsp:include page="../index/header.jsp" />
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js"></script>
		<script>
			var SITEURL = "/";
			$(function() {
				$(".searchmodel li").click(function() {
					var typeid = $(this).attr('data-id');
					var durl = $(this).attr('data-url');
					var typename = $(this).text();
					$("#typename").html(typename + '<i></i>');
					$("#typename").attr('data-id', typeid);
					$("#typename").attr('data-url', durl);
				})
				$(".searchmodel li:first").trigger('click');
				//search
				$('.st-btn').click(function() {
					var keyword = $('.searchkeyword').val();
					if(keyword == '') {
						$('.searchkeyword').focus();
						return false;
					}
					var typeid = $("#typename").attr('data-id');
					var durl = $("#typename").attr('data-url');
					if(typeid == 0 || typeid == 8) {
						var url = SITEURL + 'search/cloudsearch?keyword=' + encodeURIComponent(keyword) + "&typeid=" + typeid;
					} else {
						var url = "http://www.situcms.com" + durl + 'all?keyword=' + encodeURIComponent(keyword);
					}
					location.href = url;
				})
				//search focus
				var topSearch = {};
				topSearch.placeholder = $('#st-top-search').attr('placeholder');
				topSearch.spanHtml = $('#dt-top-search-span').html();
				$('#st-top-search').focus(function() {
					$('#st-top-search').attr('placeholder', '');
					$('#dt-top-search-span').html('');
					$(this).keyup(function(event) {
						if(event.keyCode == 13) {
							$('.st-btn').click();
						}
					});
				});
				$('#st-top-search').blur(function() {
					if($(this).val() == '') {
						$('#st-top-search').attr('placeholder', topSearch.placeholder);
						$('#dt-top-search-span').html(topSearch.spanHtml);
					}
				});
				//导航的选中状态
				$(".st-menu a").each(function() {
					var url = window.location.href;
					url = url.replace('index.php', '');
					url = url.replace('index.html', '');
					var ulink = $(this).attr("href");
					if(url == ulink) {
						$(this).parents("li:first").addClass('active');
					}
				})
				//登陆状态
				$.ajax({
					type: "POST",
					async: false,
					url: SITEURL + "member/login/ajax_is_login",
					dataType: 'json',
					success: function(data) {
						if(data.status) {
							$txt = '<a class="dl" style="padding:0" href="javascript:;">你好,</a>';
							$txt += '<a class="dl" href="http://www.situcms.com/member/">' + data.user.nickname + '</a>';
							$txt += '<a class="dl" href="http://www.situcms.com/member/login/loginout">退出</a>';
							//$txt+= '<a class="dl" href="/member">个人中心</a>';
						} else {
							$txt = '<a class="dl" href="http://www.situcms.com/member/login">登录</a>';
							$txt += '<a class="zc" href="http://www.situcms.com/member/register">免费注册</a>';
						}
						$("#loginstatus").html($txt);
					}
				})
				//二级导航
				var offsetLeft = new Array();
				var windowWidth = $(window).width();

				function get_width() {
					windowWidth = $(window).width();
					//设置"down-nav"宽度为浏览器宽度
					$(".down-nav").width($(window).width());
					$(".st-menu li").hover(function() {
						var liWidth = $(this).width() / 2;
						$(this).addClass("this-hover");
						offsetLeft = $(this).offset().left;
						$(this).children(".down-nav").css("left", -offsetLeft);
						offsetLeft = $(this).offset().left;
						//获取当前选中li下的sub-list宽度
						var nav_left = $(this).parents(".wm-1200:first").offset().left;
						var nav_width = $(this).parents(".wm-1200:first").width();
						var nav_right = nav_left + nav_width;
						var sub_list_width = $(this).children(".down-nav").children(".sub-list").width();
						if(sub_list_width > nav_width)
							sub_list_width = nav_width;
						var sub_list_left = offsetLeft - sub_list_width / 2 + liWidth;
						var sub_list_right = sub_list_left + sub_list_width;
						$(this).children(".down-nav").children(".sub-list").css("width", sub_list_width);
						$(this).children(".down-nav").children(".sub-list").css("left", sub_list_left);
						if(sub_list_left < nav_left) {
							$(this).children(".down-nav").children(".sub-list").css("left", nav_left);
						}
						if(sub_list_right > nav_right) {
							$(this).children(".down-nav").children(".sub-list").css("left", nav_right - sub_list_width);
						}
						// alert(nav_left);
						/*  var offsetRight = windowWidth-offsetLeft;
						  var side_width = (windowWidth - 1200)/2;
						  if(sub_list_width > offsetRight){
						      $(this).children(".down-nav").children(".sub-list").css({"right":side_width,"left":offsetLeft-sub_list_width/2+liWidth,"width":"auto"});
						  }
						  if(side_width > offsetLeft-sub_list_width/2+liWidth){
						      $(this).children(".down-nav").children(".sub-list").css({"right":side_width,"left":side_width,"width":"auto"});
						  }
						  */
					}, function() {
						$(this).removeClass("this-hover");
					});
				};
				$(window).resize(function() {
					get_width();
				});
				get_width();
				//选中导航
				var typeid = "";
				if(typeid != '') {
					$('.nav_header_' + typeid).addClass('active');
				}
			})
		</script>
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