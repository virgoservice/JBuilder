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
						<form id="changefrm" novalidate="novalidate">
							<div class="revise-ps-word">
								<h3 class="xg-tit">修改密码 </h3>
								<div class="password-xg">
									<dl> <dt>当前密码：</dt>
										<dd>
											<input type="hidden" name="id" id="id" value="${member.id}"> 
											<input type="password" name="oldPwd" id="oldPwd" class="msg-text"> 
											<span class="msg_contain">${msg}</span> 
										</dd>
									</dl>
									<dl> <dt>新密码：</dt>
										<dd> <input type="password" name="newPwd" id="newPwd" class="msg-text"> <span class="msg_contain"></span> </dd>
									</dl>
									<div class="confirm-btn">
										<a href="javascript:;" id="submit-btn">保存修改</a>
									</div>
								</div>
							</div>
						</form>
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
		<SCRIPT type="text/javascript">
			$("#submit-btn").click(function(){
				var oldPwd = $("input[name=oldPwd]").val();
				var newPwd = $("input[name=newPwd]").val();
				var uid = $("input[name=id]").val();
				if(oldPwd==""||newPwd==""){
					alert("error");
					return false;
				}
				else{
					$.ajax({
						url:"<%=path %>/member/changePwd",
						type:'POST',
						encentType:"application/x-www-form-urlencoded",
						encoding:"utf-8",
						cache:false,
						data:{oldPwd:oldPwd,newPwd:newPwd,id:uid},
						success:function(){
							window.location.href="<%=path%>/member/login";
						}
					});
				}
			});
		</SCRIPT>
		<!--订单中心用的js事件-->
	</body>

</html>