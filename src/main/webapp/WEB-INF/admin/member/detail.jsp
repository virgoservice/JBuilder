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
		<title>会员中心-思途CMS演示网站</title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<script>
			window.SITEURL = "/";
			window.CURRENCY_SYMBOL = "￥";
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-jquery.validate.js,-res-js-jquery.md5.js" ></script>
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
								<a id="nav_index" href="/member"><i class="st-user-icon user-home-icon"></i>会员首页</a>
							</li>
							<li>
								<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-order-icon"></i>我的订单<i class="arrow-icon"></i> </a>
								<div class="son">
									<a id="nav_allorder" href="/member/order/all">全部订单</a>
									<a id="nav_spotorder" href="/member/order/plugin_list?typeid=5" class="on">景点订单</a>
								</div>
							</li>
							<li>
								<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-center-icon"></i>个人中心<i class="arrow-icon"></i> </a>
								<div class="son">
									<a id="nav_userinfo" href="/member/index/userinfo">个人资料</a>
									<a id="nav_safecenter" href="/member/index/safecenter" >账号安全</a>
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
						<div class="user-content-wrap fr" style="overflow:hidden">
							<div class="condition-col"> <span class="item-child fl">订单号：${order.orderCode }</span> 
							<span class="item-child fl">
							订单状态：
							<c:if test='${order.status==0 }'>
								等待付款
							</c:if>
							<c:if test='${order.status==1 }'>
								申请退款
							</c:if>
							<c:if test='${order.status==2 }'>
								等待消费
							</c:if>
							<c:if test='${order.status==3 }'>
								交易完成
							</c:if>
							</span>
								<c:if test="${order.payStatus==0 }">
								<a class="cancel-btn fr" href="javascript:;" onclick="cancelOrder(${order.id})" >取消订单</a>
								<a class="pay-btn fr" href="javascript:;" onclick="toPay(${order.id})">立即付款</a>
								</c:if>
							</div>
							<!-- 订单状态 -->
							<div class="order-show-speed">
								<div class="order-speed-step">
									<ul class="clearfix">
										<li class="step-first 
										<c:if test='${order.status==0 }'>
											active
										</c:if>
										<c:if test='${order.status>=0 }'>
											cur
										</c:if>
										"> <em></em> <strong></strong> <span>提交订单</span> </li>
										<li class="step-second 
										<c:if test='${order.status==0 }'>
											active
										</c:if>
										<c:if test='${order.status>0 }'>
											cur
										</c:if>
										"> <em></em> <strong></strong> <span>等待付款</span> </li>
										<li class="step-third 
										<c:if test='${order.status==2 }'>
											active
										</c:if>
										<c:if test='${order.status>2 }'>
											cur
										</c:if>"> <em></em> <strong></strong> <span>等待消费</span> </li>
										<li class="step-fourth 
										<c:if test='${order.status==3 }'>
											active
										</c:if>
										<c:if test='${order.status>=3 }'>
											cur
										</c:if>"> <em></em> <strong></strong> <span>交易完成</span> </li>
									</ul>
								</div>
								<!-- 
								<div class="speed-show-list">
									<ul class="info-list" style="height: auto;">
										<li><span>2017-06-22 15:47:35</span><span>您提交了订单，等待您付款</span></li>
									</ul>
								</div>
								 -->
							</div>
							<!-- 订单进度 -->
							<div class="os-term">
								<div class="os-tit">联系人信息</div>
								<div class="os-block">
									<div class="linkman-info clearfix">
										<div class="item-block"> <em>联系人：</em>
											<p>${order.linkName }</p>
										</div>
										<div class="item-block"> <em>手机号：</em>
											<p>${order.linkMobile }</p>
										</div>
										<div class="item-block"> <em>辅助码：</em>
											<p>${order.ziyoubaoCheckNo }</p>
										</div>
									</div>
								</div>
							</div>
							<!-- 发票信息 -->
							<!-- 优惠信息 -->
							<div class="os-term">
								<div class="os-tit">支付信息</div>
								<div class="os-block">
									<div class="order-show-cheap">
										<ul>
											<li><em>支付方式：</em>全款支付 &nbsp; </li>
											<li><em>预定协议：</em><span class="check-ht" id="agreement_btn">《预订须知》</span></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- 支付信息 -->
							<!-- 消费码 -->
							<div class="os-term">
								<div class="os-tit">订单信息</div>
								<div class="os-block">
									<div class="order-show-info">
										<table width="100%" border="0" class="order-show-table">
											<tbody>
												<tr>
													<th width="45%" height="40" scope="col"><span class="l-con">产品名称</span></th>
													<th width="15%" scope="col">使用日期</th>
													<th width="15%" scope="col">单价</th>
													<th width="10%" scope="col">数量</th>
													<th width="15%" scope="col">总价</th>
												</tr>
												<tr>
													<td height="40"><span class="l-con">${order.list[0].goodsName }</span></td>
													<td><fmt:formatDate value="${order.list[0].occDate }" type="date" /></td>
													<td>${order.orderPrice }</td>
													<td>${order.total }</td>
													<td><span class="jg"><i class="currency_sy">￥</i>${order.orderPrice }</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- 订单信息 -->
							<div class="order-item-count clearfix">
								<div class="item-nr">
									<hr>
									<div class="item-total"><strong class="hd">应付总额：</strong><span class="jg"><i class="currency_sy">￥</i>${order.orderPrice }</span></div>
								</div>
							</div>
							<div class="condition-col"> <span class="item-child">应付总额：<strong class="jg"><i class="currency_sy">￥</i>${order.orderPrice }</strong></span>
								<c:if test="${order.payStatus==0 }">
								<a class="pay-btn fr" href="javascript:;" onclick="toPay(${order.id})">立即付款</a>
								</c:if>
							</div>
							<!-- 支付结算 -->
						</div>

					</div>
					<!--会员首页-->
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js"></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet" />
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
			function toPay(orderId){
				window.opener=this.window;
				window.open("<%=path %>/member/order/payTicket?orderId="+orderId);
			}
			
			function cancelOrder(orderId){
				layer.confirm('确定取消订单吗？', {
					icon: 3,
					btn: ['确定', '放弃'],
					btn2: function() {
						layer.closeAll();
					},
					btn1: function() {
						$.ajax({
							url:"<%=path %>/member/order/delete",
							type:"POST",
							data:{
								orderId:orderId,
							},
							cache:false,
							success:function(data){
								if(data.success){
									layer.confirm('取消成功', {
										icon: 3,
										btn: ['确定'],
										btn1: function() {
											window.location.href="<%=path %>/member/order/list"
										},
									})
										
								}else{
									layer.alert("取消失败:"+data.errorMsg);
								}
							},
							error:function(){
								layer.alert("取消订单出错");
							}
						});
					},
					
					cancel: function() {
						layer.closeAll();
					}
				})
			}
		</script>
	</body>

</html>