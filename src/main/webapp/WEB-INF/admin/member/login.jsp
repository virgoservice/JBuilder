<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>用户登陆-贵州古城文化旅游开发有限公司</title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-jquery.validate.js,-res-js-jquery.md5.js" ></script>
	</head>

	<body bottom_float=roZ19j>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
		<jsp:include page="../index/header.jsp" />
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js" ></script>
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
					url = url.replace('http://www.situcms.com/member/index.php', '');
					url = url.replace('http://www.situcms.com/member/index.html', '');
					var ulink = $(this).attr("href");
					if(url == ulink) {
						$(this).parents("li:first").addClass('active');
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
		<div class="st-userlogin-box" style="background: url('<%=path %>/resources/index/res/images/user-login-bg.jpg')/*tpa=http://www.situcms.com/res/images/user-login-bg.jpg*/ center top no-repeat;">
			<div class="st-login-wp">
				<div class="st-admin-box">
					<form id="loginfrm" method="post" action="<%=path %>/member/login">
						<div class="login-account-key">
							<ul>
								<li class="number"> 
									<span class="tb"></span> 
									<input type="text" class="np-box" name="username" id="username" placeholder="请输入手机号或邮箱" /> 
								</li>
								<li class="password">
									 <span class="tb"></span> 
									 <input type="password" class="np-box" name="password" id="password" placeholder="请输入登录密码" /> 
								</li>
								<li style="margin-top:10px;">
									<input type="text" name="verifyCode" id="verifyCode" placeholder="请输入验证码" style="width: 118px;height: 36px; float: left; border-radius:4px;border:1px solid #F8F8F8;">
									<img src="<%=path %>/member/verifyCode"style='cursor: pointer;' alt='请输入图片验证码' onclick="this.src='<%=path %>/member/verifyCode?time='+Math.random()" />
								</li>
								<li class="forget"> 
									<span class="login_err"></span>
									<a href="#" >忘记密码？</a>
								</li>
								<li class="dl-btn">
									<a href="javascript:;" class="btn_login">登 录</a>
								</li>
								<li class="now-zc">您还没有账号？
									<a href="<%=path %>/member/registry" >立刻注册</a>
								</li>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</div>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
		<jsp:include page="../index/footer.jsp" />
		<script src="<%=path %>/resources/index/plugins/qq_kefu/public/js/qqkefu.js" ></script>
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js" ></script>
		<script>
			$(function() {
				document.onkeydown = function(e) {
					var ev = document.all ? window.event : e;
					if(ev.keyCode == 13) {
						$(".btn_login").trigger('click');
					}
				}

				//登陆
				$(".btn_login").click(function() {
					$("#loginfrm").submit();
				})
				})
				
		</script>
	</body>

</html>