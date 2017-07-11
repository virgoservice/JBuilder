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