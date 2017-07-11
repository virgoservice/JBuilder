<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

	<head padding_top=5TemVs>
		<meta charset="utf-8">
		<title>会员注册-贵州古城文化旅游开发股份有限公司官网</title>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css" "" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-jquery.validate.js,-res-js-jquery.cookie.js" ""></script>
	</head>

	<body>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" "" rel="stylesheet" />
		<jsp:include page="../index/header.jsp" />
		<!--header-->
		
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js" ""></script>
		
		<div class="st-userlogin-box" style="background: url('<%=path %>/resources/index/res/images/user-login-bg.jpg')/*tpa=http://www.situcms.com/res/images/user-login-bg.jpg*/ center top no-repeat;">
			<div class="st-login-wp">
				<div class="st-reg-box">
					<div class="reg-tabnav"> <span class="on" data-type="phone">注册成为会员</span></div>
					<script>
						$(function() {
							$('.reg-tabnav span').click(function() {
								$(this).addClass('on').siblings().removeClass('on');
								var frm = $(this).attr('data-type');
								$(".reg-cont-box").find('ul').hide();
								$('#' + frm + '_reg').show();
								$('#regfrm').val(frm + 'frm');
							})
						})
					</script>
					<div class="reg-cont-box">
						<form id="phonefrm" method="post" action="<%=path %>/member/registry">
							<ul id="phone_reg">
								<li> 
									<span class="bt-sp">登录帐号</span> 
									<input type="text" class="reg-text w230" id="username" name="username" value="${username}" placeholder="请输入手机号" /> 
									<span class="msg_contain"></span> 
								</li>
								<li> 
									<span class="bt-sp">验证码</span> 
									<input type="text" class="reg-text w105" id="verifyCode" name="verifyCode" /> 
									<span class="reg-yzm"><img src="<%=path %>/member/verifyCode" style='cursor: pointer;' alt='请输入图片验证码' onclick="this.src='<%=path %>/member/verifyCode?time='+Math.random()" width="114" height="31"/></span> 
									<span class="reg-change">
										<a href="javascript:;">换一张</a>
									</span> 
									<span class="msg_contain"></span> 
								</li>
								<li> 
									<span class="bt-sp">密码</span> 
									<input type="password" name="password" id="password" class="reg-text w230" placeholder="请输入登录密码" /> 
									<span class="msg_contain"></span> 
									<span class="complex_contain"></span> 
								</li>
								<li> 
									<span class="bt-sp">确认密码</span> 
									<input type="password" name="password1" id="password1" class="reg-text w230" placeholder="请再次输入登录密码" /> 
									<span class="msg_contain"></span> 
								</li>
								<li> </li>
							</ul> 
						</form>
						<div class="now-reg-btn">
							<a href="javascript:;">立即注册</a>
						</div>
					</div>
					<div class="reg-tig-box" style="margin-top:100px;">
						<p style="color:red; margin-bottom:50px;">${msg}</p>
						<p>已有账号,<a href="<%=path %>/member/login">立即登录</a>
						</p>
					</div>
				</div>
			</div>
		</div> <input type="hidden" id="regfrm" value="phonefrm" /> <input type="hidden" id="backurl" value="http://www.situcms.com/member/" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js" ""></script>
		<script>
			$(function() {
				//注册
				$('.now-reg-btn').click(function() {
					var regfrm = $("#regfrm").val();
					$('#' + regfrm).submit()
				})
				//验证码刷新
				$('.reg-change').click(function() {
					$(this).parents('li').first().find('img').trigger('click');
				})
				//发送邮箱验证码
				/*手机注册验证开始*/
				jQuery.validator.addMethod("mobile", function(value, element) {
					var pattern = /^1+\d{10}$/;
					return pattern.test(value);
				}, "请输入正确的手机号");
				$("#phonefrm").validate({
					rules: {
						'username': {
							required: true,
							mobile: true,
						},
						'password': {
							required: true,
							minlength: 6
						},
						'password1': {
							required: true,
							equalTo: '#password'
						},
						'verifyCode': {
							required: true,
						},
						'msgcode': {
							required: true,
						},
						agreement: {
							required: true
						}
					},
					messages: {
						'username': {
							required: '手机号不能为空',
						},
						'password': {
							required: '密码不能为空',
							minlength: '密码不得小于6位'
						},
						'password1': {
							required: '密码前后不一致',
							equalTo: '密码前后不一致'
						},
						'verifyCode': {
							required: '验证码不能为空',
							remote: '验证码错误'
						},
						'msgcode': {
							required: '验证码不能为空',
							remote: '验证码错误'
						},
						'agreement': {
							required: '请先同意网站服务条款'
						}
					},
					errorPlacement: function(error, element) {
						$(element).parents('li:first').find('.msg_contain').html(error);
						$(element).parents('li:first').find('.msg_contain').addClass('reg-error-txt').removeClass('reg-pass-ico');
					},
					success: function(msg, element) {
						$(element).parents('li:first').find('.msg_contain').html('');
						$(element).parents('li:first').find('.msg_contain').addClass('reg-pass-ico').removeClass('reg-error-txt');
						if($(element).is('#password1')) {
							set_pwd_safe('#phonefrm', '#password1');
						}
					},
					onkeyup: function(element, event) {
						set_pwd_safe('#phonefrm', '#password1');
						$(element).valid();
					},
					<%-- submitHandler: function(form) {
						var frmdata = $("#phonefrm").serialize();
						$.ajax({
							type: 'POST',
							url: '<%=path %>/member/registry',
							data: frmdata,
							async:false,
							success:function(data){
								window.location.href="<%=path %>/member/login";
							}
						})
					} --%>
				});
			})
			//密码强度
			function set_pwd_safe(pselector, selector) {
				var pwd = $(pselector + ' ' + selector).val();
				var pattern_1 = /^[0-9]*$/i;
				var pattern_2 = /[a-z0-9]+/i;
				var obj = $(pselector).find('.complex_contain');
				var html = '';
				//弱
				if(pattern_1.test(pwd) && pwd.length < 8) {
					html = "<span class='reg-pw-intensity ruo'>弱</span>";
					obj.html(html);
					return false;
				}
				//中
				if(pattern_1.test(pwd) && pwd.length >= 8) {
					html = "<span class='reg-pw-intensity zhong'>中</span>";
					obj.html(html);
					return false;
				}
				//高
				if(pattern_2.test(pwd) && pwd.length >= 8) {
					html = "<span class='reg-pw-intensity gao'>高</span>";
					obj.html(html);
					return false;
				}
			}
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" "" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" "" rel="stylesheet" />
		<jsp:include page="../index/footer.jsp" />
	</body>

</html>