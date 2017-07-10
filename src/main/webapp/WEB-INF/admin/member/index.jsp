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
		<div class="st-footer">
			<div class="wm-1200">
				<div class="st-foot-menu">
					<a href="" target="_blank" rel="nofollow">关于我们</a>
					<a href="" target="_blank" rel="nofollow">联系我们</a>
					<a href="" target="_blank" rel="nofollow">我们的优势</a>
					<a href="" target="_blank" rel="nofollow">支付方式</a>
					<a href="" target="_blank" rel="nofollow">法律声明</a>
				</div>
				<!--底部导航-->
				<div class="st-foot-edit">
					<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						<img src="uploads/arcimgs73241402466888.jpg" title="1.jpg" alt="" style="float: none;" />
						<img src="uploads/arcimgs59811402466888.jpg" title="2.jpg" alt="" style="float: none;" /><br/></p>
					<p>​<br/></p>
				</div>
				<!--网站底部介绍-->
				<div class="support">技术支持：
					<a href="http://www.seelecloud.com" target="_blank">贵州塞拉科技有限公司</a>
				</div>
				<p>
					<script>
						var _hmt = _hmt || [];
						(function() {
							var hm = document.createElement("script");
							hm.src = "../hm.baidu.com/hm.js-d7f82c70ba24c58dbd6b23553c88ed03.js" ;
							var s = document.getElementsByTagName("script")[0];
							s.parentNode.insertBefore(hm, s);
						})();
					</script>
				</p>
			</div>
		</div>
		<script src="<%=path %>/resources/index/plugins/qq_kefu/public/js/qqkefu.js"></script>
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