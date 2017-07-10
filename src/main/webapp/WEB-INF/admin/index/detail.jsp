<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

<head ul_float=tsrZdk>
	<meta charset="utf-8">
	<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>	
	<title>古城高过河景区_旅游景点介绍_旅游景图片-贵州古城文化旅游开发股份有限公司官网</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<script>
		window.SITEURL = "/";
		window.CURRENCY_SYMBOL = "￥";
	</script>
	<link type="text/css" href="<%=path %>/resources/index/min/-f=plugins-spot-public-css-scenic.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-delayLoading.min.js" ></script>
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
</head>

<body>
	<div class="web-top">
		<div class="wm-1200">
			<div class="notice-txt">
				<p>欢迎访问贵州古城文化旅游开发股份有限公司官网</p>
			</div>
			<div class="top-login"> 
				<span id="loginstatus"> 
					<a class="dl" href="login.htm">登录</a>
					<a class="zc" href="register.htm">免费注册</a>
				</span>
				
			</div>
			
		</div>
	</div>
	<!--顶部-->
	<div class="st-header">
		<div class="wm-1200">
			<div class="st-logo">
				<a href="index.htm" ><img src="<%=path %>/resources/index/img/logo.png"  alt="欢迎访问贵州古城文化旅游开发股份有限公司官网" /></a>
			</div>
			<div class="st-top-search">
				<div class="st-search-down"> <strong id="typename"><i></i></strong>
					<ul class="st-down-select searchmodel">
						<li data-id="0">全部</li>
						<li data-id="1" data-url="/lines/">线路</li>
						<li data-id="2" data-url="/hotels/">酒店</li>
						<li data-id="3" data-url="/cars/">租车</li>
						<li data-id="5" data-url="/spots/">景点</li>
						<li data-id="4" data-url="/raiders/">攻略</li>
						<li data-id="8" data-url="/visa/">签证</li>
						<li data-id="106" data-url="/guide/">导游</li>
					</ul>
				</div> <input type="text" id="st-top-search" class="st-txt searchkeyword" placeholder="输入目的地、酒店、攻略" /> <input type="button" value="搜索" class="st-btn" /> <span id="dt-top-search-span">   <a href=""  target="_blank">是打发</a>  <a href=""  target="_blank">九寨沟酒店</a>  <a href=""  target="_blank">九寨沟跟团游</a>  </span>
				<div class="st-hot-dest-box" id="stHotDestBox">
					<div class="block-tit"><strong>热门搜索</strong><i class="close-ico"></i></div>
					<div class="block-nr">
						<dl> <dt>热搜词</dt>
							<dd class="clearfix">
								<a href=""  target="_blank">是打发</a>
								<a href=""  target="_blank">九寨沟酒店</a>
								<a href=""  target="_blank">九寨沟跟团游</a>
								<a href=""  target="_blank">九寨沟自助游</a>
								<a href=""  target="_blank">九寨沟租车</a>
								<a href=""  target="_blank">九寨黄龙双飞</a>
								<a href=""  target="_blank">九寨沟酒</a>
							</dd>
						</dl>
						<dl> <dt>目的地</dt>
							<dd class="clearfix">
								<a href=""  target="_blank">国内旅游</a>
								<a href=""  target="_blank">拉萨</a>
								<a href=""  target="_blank">峨眉乐山</a>
								<a href=""  target="_blank">九寨沟</a>
								<a href=""  target="_blank">出境旅游</a>
								<a href=""  target="_blank">稻城亚丁</a>
								<a href=""  target="_blank">周边旅游</a>
								<a href=""  target="_blank">那曲</a>
								<a href=""  target="_blank">昌都</a>
								<a href=""  target="_blank">蜀南竹海</a>
								<a href=""  target="_blank">西昌泸沽湖</a>
								<a href=""  target="_blank">阆中古城</a>
								<a href=""  target="_blank">红原若尔盖</a>
								<a href=""  target="_blank">北京</a>
								<a href=""  target="_blank">四川</a>
								<a href=""  target="_blank">贵州</a>
								<a href=""  target="_blank">西藏</a>
								<a href=""  target="_blank">西城</a>
								<a href=""  target="_blank">朝阳</a>
								<a href=""  target="_blank">石景山</a>
							</dd>
						</dl>
					</div>
				</div>
				<!--热搜框-->
				<script>
					$(function() {
						$('#st-top-search').click(function(event) {
							$('#stHotDestBox').show();
							event.stopPropagation();
						});
						$('.close-ico').click(function(event) {
							$('#stHotDestBox').hide();
							event.stopPropagation();
						});
						$('body').click(function() {
							$('#stHotDestBox').hide();
						});
					})
				</script>
			</div>
			<div class="st-link-way"> <img class="link-way-ico" src="<%=path %>/resources/index/res/images/24hours-ico.png"  width="45" height="45" />
				<div class="link-way-txt"> <em>400-609-9927</em> </div>
			</div>
		</div>
	</div>
	<!--header-->
	<div class="st-nav">
		<div class="wm-1200">
			<div class="st-global">
				<div class="global-bt">旅游导航</div>
				<div class="global-list" style="display: none;">
					<div class="gl-list-tabbox">
						<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145458_20x20.png"  /></em><a href="javascript:;"target="_blank">产品功能</a></strong> <p>   <a href=""  target="_blank">邮轮</a>  <a href=""  target="_blank">游记</a>  <a href=""  target="_blank">结伴</a>  <a href=""  target="_blank">团购</a>  <a href=""  target="_blank">私人定制</a>  </p> <i class="arrow-rig"></i> </h3>
						<div class="tabcon-item">
							<div class="item-list">
								<dl> <dt><a href=""  target="_blank">邮轮</a></dt>
									<dd> </dd>
								</dl>
								<dl> <dt><a href=""  target="_blank">游记</a></dt>
									<dd> </dd>
								</dl>
								<dl class="clear"> <dt><a href=""  target="_blank">结伴</a></dt>
									<dd> </dd>
								</dl>
								<dl> <dt><a href=""  target="_blank">团购</a></dt>
									<dd> </dd>
								</dl>
								<dl class="clear"> <dt><a href=""  target="_blank">私人定制</a></dt>
									<dd> </dd>
								</dl>
								<dl> <dt><a href=""  target="_blank">活动</a></dt>
									<dd> </dd>
								</dl>
								<dl class="clear"> <dt><a href=""  target="_blank">特产</a></dt>
									<dd> </dd>
								</dl>
								<dl> <dt><a href=""  target="_blank">积分俱乐部</a></dt>
									<dd> </dd>
								</dl>
								<dl class="clear"> <dt><a href=""  target="_blank">夺宝</a></dt>
									<dd> </dd>
								</dl>
							</div>
							<div class="ad-box">
								<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/9bfc143523607fb073e9c2505da6af4e.png"  title="" width="980" height="100"></a>
							</div>
						</div>
					</div>
					<div class="gl-list-tabbox">
						<div class="tabcon-item">
							<div class="item-list">
								<dl> <dt><a href=""  target="_blank"><span style='color:#FF6600'>四川</span></a></dt>
									<dd>
										<a href=""  target="_blank"><span style='color:#000000'>九寨沟</span></a>
										<a href=""  target="_blank"><span style='color:#000000'>峨眉山</span></a>
										<a href=""  target="_blank"><span style='color:#000000'>稻城亚丁</span></a>
										<a href=""  target="_blank"><span style='color:#000000'>蜀南竹海</span></a>
									</dd>
								</dl>
								<dl> <dt><a href="javascript:;" target="_blank"><span style='color:#FF6600'>西藏</span></a></dt>
									<dd>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>拉萨</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>那曲</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>昌都</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>阿里</span></a>
									</dd>
								</dl>
							</div>
							<div class="ad-box">
								<a href="javascript:;" target="_blank"><img src="uploads/2016/0614/2f5a635683781849c933d21e13684026.png"  title="" width="980" height="100"></a>
							</div>
						</div>
					</div>
					<div class="gl-list-tabbox">
						<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145554_20x20.png"  /></em><a href="#" target="_blank">出境旅游</a></strong> <p>   <a href="#" target="_blank"><span style='color:#FF6600'>美洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>欧洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>澳洲</span></a>  </p> <i class="arrow-rig"></i> </h3>
						<div class="tabcon-item">
							<div class="item-list">
								<dl> <dt><a href="#" target="_blank"><span style='color:#FF6600'>美洲</span></a></dt>
									<dd>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>美国</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>加拿大</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>墨西哥</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>巴西</span></a>
									</dd>
								</dl>
								<dl> <dt><a href="javascript:;" target="_blank"><span style='color:#FF6600'>欧洲</span></a></dt>
									<dd>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>英国</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>意大利</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>俄罗斯</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>法国</span></a>
									</dd>
								</dl>
								<dl class="clear"> <dt><a href="javascript:;" target="_blank"><span style='color:#FF6600'>澳洲</span></a></dt>
									<dd>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>澳大利亚</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>新西兰</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>大溪地</span></a>
										<a href="javascript:;" target="_blank"><span style='color:#000000'>斐济</span></a>
									</dd>
								</dl>
							</div>
							<div class="ad-box">
								<a href="javascript:;" target="_blank"><img src="uploads/2016/0614/2f5a635683781849c933d21e13684026.png"  title="" width="980" height="100"></a>
							</div>
						</div>
					</div>
					<div class="gl-list-tabbox">
						<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145618_20x20.png"  /></em><a href=""  target="_blank">主题旅游</a></strong> <p>   <a href=""  target="_blank"><span style='color:#996600'>亲子游</span></a>  <a href=""  target="_blank">蜜月游</a>  </p> <i class="arrow-rig"></i> </h3>
						<div class="tabcon-item">
							<div class="item-list">
								<dl> <dt><a href=""  target="_blank"><span style='color:#996600'>亲子游</span></a></dt>
									<dd>
										<a href="javascript:;" target="_blank">夏令营</a>
									</dd>
								</dl>
								<dl> <dt><a href=""  target="_blank">蜜月游</a></dt>
									<dd> </dd>
								</dl>
							</div>
							<div class="ad-box">
								<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png"  title="" width="980" height="100"></a>
							</div>
						</div>
					</div>
					<div class="gl-list-tabbox">
						<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145644_20x20.png"  /></em><a href=""  target="_blank">周边旅游</a></strong> <p>   <a href=""  target="_blank">九寨沟</a>  <a href="javascript:;" target="_blank">峨眉山</a>  <a href="javascript:;" target="_blank">西岭雪山</a>  </p> <i class="arrow-rig"></i> </h3>
						<div class="tabcon-item">
							<div class="item-list">
								<dl> <dt><a href=""  target="_blank">九寨沟</a></dt>
									<dd> </dd>
								</dl>
								<dl> <dt><a href="javascript:;" target="_blank">峨眉山</a></dt>
									<dd> </dd>
								</dl>
								<dl class="clear"> <dt><a href="javascript:;" target="_blank">西岭雪山</a></dt>
									<dd> </dd>
								</dl>
							</div>
							<div class="ad-box">
								<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png"  title="" width="980" height="100"></a>
							</div>
						</div>
					</div>
					<div class="gl-list-tabbox">
						<h3> <strong><em><img src="<%=path %>/resources/index/res/images/usernav.png"  /></em><a href=""  target="_blank">海岛游</a></strong> <p>   <a href=""  target="_blank">普吉岛</a>  <a href=""  target="_blank">苏梅岛</a>  </p> <i class="arrow-rig"></i> </h3>
						<div class="tabcon-item">
							<div class="item-list">
								<dl> <dt><a href=""  target="_blank">普吉岛</a></dt>
									<dd> </dd>
								</dl>
								<dl> <dt><a href=""  target="_blank">苏梅岛</a></dt>
									<dd> </dd>
								</dl>
							</div>
							<div class="ad-box">
								<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png"  title="" width="980" height="100"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script>
				$(function() {
					$('.gl-list-tabbox,.st-dh-con').hover(function() {
						$(this).children('h3').addClass('hover').next('.tabcon-item,.st-dh-item').show();
						$(this).children('h3').find('.arrow-rig').hide();
					}, function() {
						$(this).children('h3').removeClass('hover').next('.tabcon-item,.st-dh-item').hide();
						$(this).children('h3').find('.arrow-rig').show();
					})
					$('.global-list').hide();
					$('.st-global').hoverDelay(function() {
						$('.global-list').show();
					}, function() {
						$('.global-list').hide();
					})
				})
			</script>
			<div class="st-menu">
				<ul class="clearfix">
					<li>
						<a href="" >首页<s></s></a>
					</li>
					<li class="nav_header_1"> <i class="st-new-ico"></i><s></s> <s></s>
						<a href=""  title="成都周边旅游线路">线路 <i class="st-arrow-ico"></i> </a>
						<div class="down-nav">
							<div class="sub-list">
								<a href="" >周边游</a>
								<a href="" >自驾游</a>
								<a href="" >省内特价游</a>
							</div>
						</div>
					</li>
					<li class="nav_header_12"> <s></s>
						<a href=""  title="旅游目的地">目的地 </a>
					</li>
					<li class="nav_header_2"> <s></s>
						<a href=""  title="九寨沟酒店">酒店 </a>
					</li>
					<li class="nav_header_3"> <s></s>
						<a href=""  title="九寨沟旅游租车">租车 <i class="st-arrow-ico"></i> </a>
						<div class="down-nav">
							<div class="sub-list">
								<a href="" >越野租车</a>
								<a href="" >商务租车</a>
								<a href="" >旅游大巴租车</a>
							</div>
						</div>
					</li>
					<li class="nav_header_5"> <s></s>
						<a href=""  title="成都周边旅游景点">景点 <i class="st-arrow-ico"></i> </a>
						<div class="down-nav">
							<div class="sub-list">
								<a href="" >四川景点</a>
								<a href="" >国内景点</a>
								<a href="" >出境景点</a>
							</div>
						</div>
					</li>
					<li class="nav_header_4"> <s></s>
						<a href=""  title="九寨沟旅游攻略">攻略 </a>
					</li>
					<li class="nav_header_8"> <s></s>
						<a href=""  title="签证">签证 <i class="st-arrow-ico"></i> </a>
						<div class="down-nav">
							<div class="sub-list">
								<a href="" >商务签证</a>
								<a href="" >旅游签证</a>
							</div>
						</div>
					</li>
					<li class="nav_header_106"> <s></s>
						<a href=""  title="导游">导游 </a>
					</li>
					<li class="nav_header_"> <i class="st-jian-ico"></i><s></s> <s></s>
						<a href=""  title="九寨沟子站">九寨沟子站 </a>
					</li>
					<li class="nav_header_"> <i class="st-hot-ico"></i><s></s> <s></s>
						<a href=""  title="供应商">供应商 </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
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
				url = url.replace('http://www.situcms.com/spots/index.php', '');
				url = url.replace('http://www.situcms.com/spots/index.html', '');
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
						//$txt+= '<a class="dl" href="http://www.situcms.com/member">个人中心</a>';
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
			var typeid = "5";
			if(typeid != '') {
				$('.nav_header_' + typeid).addClass('active');
			}
		})
	</script>
	<style>
		.coupon-side-block {
			width: 162px;
			height: 398px;
			position: absolute;
			top: 250px;
			left: 0;
			z-index: 99999;
			background: url("plugins/coupon/public/images/coupon-bg.png")/*tpa=http://www.situcms.com/plugins/coupon/public/images/coupon-bg.png*/
			top no-repeat;
		}
		
		.coupon-side-block .coupon-close-btn {
			display: block;
			width: 14px;
			height: 14px;
			position: absolute;
			right: 17px;
			top: 5px;
			-webkit-transition: all .3s;
			-moz-transition: all .3s;
			-ms-transition: all .3s;
			-o-transition: all .3s;
			transition: all .3s;
			background: url("plugins/coupon/public/images/coupon-ico.png")/*tpa=http://www.situcms.com/plugins/coupon/public/images/coupon-ico.png*/
			no-repeat -128px -132px;
		}
		
		.coupon-side-block .coupon-close-btn:hover {
			-webkit-transform: rotate(180deg);
			-moz-transform: rotate(180deg);
			-ms-transform: rotate(180deg);
			-o-transform: rotate(180deg);
			transform: rotate(180deg);
		}
		
		.coupon-item-block {
			padding: 80px 14px 0 16px;
		}
		
		.coupon-item-block>li {
			height: 78px;
			margin-bottom: 10px;
			background: url("plugins/coupon/public/images/coupon-ico.png")/*tpa=http://www.situcms.com/plugins/coupon/public/images/coupon-ico.png*/
			no-repeat;
		}
		
		.coupon-item-block>li.item-first {
			background-position: 0 -204px;
		}
		
		.coupon-item-block>li.item-second {
			background-position: 0 -283px;
		}
		
		.coupon-item-block>li.item-third {
			background-position: 0 -362px;
		}
		
		.coupon-item-block>li .l-con {
			float: left;
			width: 102px;
			height: 78px;
			text-align: center;
		}
		
		.coupon-item-block>li .l-con .jz {
			color: #e5402d;
			display: block;
			height: 30px;
			line-height: 30px;
			margin-top: 4px;
			font-size: 18px;
			font-weight: bold;
		}
		
		.coupon-item-block>li .l-con .jz strong {
			font-size: 28px;
			font-weight: bold;
		}
		
		.coupon-item-block>li .l-con .md {
			color: #fd7304;
			display: block;
			font-weight: bold;
		}
		
		.coupon-item-block>li .l-con .yh {
			color: #fd7304;
			display: block;
			font-size: 16px;
			font-weight: bold;
		}
		
		.coupon-item-block>li .zt {
			float: right;
			width: 16px;
			height: 64px;
			line-height: 16px;
			padding: 9px 7px 5px;
			font-size: 14px;
			font-weight: bold;
		}
		
		.coupon-item-block>li.item-first .zt {
			color: #fd7402;
		}
		
		.coupon-item-block>li.item-second .zt {
			color: #fff;
		}
		
		.coupon-item-block>li.item-third .zt {
			color: #a8a8a8;
			padding: 18px 7px 12px;
		}
		
		.coupon-side-block .more-coupon {
			display: inline-block;
			color: #df0625;
			width: 92px;
			height: 24px;
			line-height: 26px;
			margin: 7px 0 0 36px;
			text-align: center;
			font-size: 14px;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
			background: #ffe5e9;
		}
		
		.coupon-side-btn {
			z-index: 9999999;
			display: none;
			color: #fff;
			width: 16px;
			height: 100px;
			line-height: 16px;
			padding: 10px 13px;
			position: absolute;
			left: 0;
			top: 300px;
			font-size: 16px;
			cursor: pointer;
			border-top-right-radius: 3px;
			border-bottom-right-radius: 3px;
			background: #df0625;
		}
	</style>
	<!--<div class="coupon-side-block" style="top: 1300px;">
		<a href="javascript:;" class="coupon-close-btn"> </a>
		<ul class="coupon-item-block clearfix"> </ul>
		<a class="more-coupon" target="_blank" href="" >更多优惠券</a>
	</div>-->
	<!--<div class="coupon-side-btn" style="top: 400px; display: none;">先领券 再购物</div>
	<script>
		$(function() {
			$(window).scroll(function() {
				var offsetTop = $(window).scrollTop() + 250 + "px";
				$(".coupon-side-block,.coupon-side-btn").animate({
					top: offsetTop
				}, {
					duration: 500,
					queue: false
				});
			});
			//关闭优惠券展示
			$(".coupon-close-btn").on("click", function() {
				$(".coupon-side-block").hide();
				$(".coupon-side-btn").show()
			});
			//显示优惠券展示
			$(".coupon-side-btn").on("click", function() {
				$(this).hide();
				$(".coupon-side-block").show();
			})
		})
	</script>-->
	<script type="text/javascript" src="<%=path %>/resources/index/res/js/layer/layer.js" ></script>
	<script>
		$(function() {
			//领取优惠券
			$('.coupon-side-block').on('click', '.get_coupon', function() {
				var couponid = $(this).attr('couponid');
				$.ajax({
					type: 'POST',
					url: SITEURL + 'coupon/ajxa_get_coupon',
					data: {
						cid: couponid
					},
					async: false,
					dataType: 'json',
					success: function(data) {
						if(data.status == 0) {
							layer.msg(data.msg, {
								icon: 5,
								time: 1000
							});
						}
						if(data.status == 1) {
							layer.msg(data.msg, {
								icon: 5,
								time: 1000
							}, function() {
								var url = SITEURL + 'member/login';
								window.location.href = url;
							});
						}
						if(data.status == 2) {
							layer.msg(data.msg, {
								icon: 6,
								time: 1000
							}, function() {
								window.location.reload();
							});
						}
					}
				})
			})
			$('.get_coupon').click(function() {
				var couponid = $(this).attr('couponid');
				$.ajax({
					type: 'POST',
					url: SITEURL + 'coupon/ajxa_get_coupon',
					data: {
						cid: couponid
					},
					async: false,
					dataType: 'json',
					success: function(data) {
						if(data.status == 0) {
							layer.msg(data.msg, {
								icon: 5
							});
						}
						if(data.status == 1) {
							layer.msg(data.msg, {
								icon: 5,
								time: 1000
							}, function() {
								var url = SITEURL + 'member/login';
								window.location.href = url;
							});
						}
						if(data.status == 2) {
							layer.msg(data.msg, {
								icon: 6,
								time: 1000
							}, function() {
								window.location.reload();
							});
						}
					}
				})
			})
			get_list();
		})

		function get_list() {
			var typeid = '5';
			var proid = '1707';
			$.ajax({
				type: 'POST',
				url: SITEURL + 'coupon/ajax_get_float_list',
				async: false,
				data: {
					typeid: typeid,
					proid: proid
				},
				dataType: 'json',
				success: function(data) {
					if(data.list.length > 0) {
						var html = '';
						$(data.list).each(function(index, val) {
							var classval = 'item-first';
							var get_html = '<a class="zt get_coupon" href="javascript:void (0)" couponid="' + val.id + '">立即领券</a>';
							var pricr_html = '<span class="jz">￥<strong>' + val.amount + '</strong></span>';
							if(val.status == 2) {
								classval = 'item-third';
								get_html = '<span class="zt">领完了</span>';
							} else if(val.status == 3) {
								classval = 'item-second';
								get_html = '<span class="zt">已领取</span>';
							}
							if(val.type == 1) {
								pricr_html = ' <span class="jz"><strong>' + val.amount + '</strong>折</span>'
							}
							html += '<li class="' + classval + '"><span class="l-con">' + pricr_html + ' <span class="md">满' + val.samount + '元使用</span>' +
								'<span class="yh">优惠券</span></span>' + get_html + '</li>'
						})
						$('.coupon-item-block').html(html);
					} else {
						$('.coupon-side-block').hide()
					}
				}
			})
		}
	</script>
	
	
	<!-- ------------------------------ cut ---------------------------------------- -->
	
	
	<div class="big">
		<div class="wm-1200">
			<div class="st-guide">
				<a href="#"  title="首页">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
				<a href="#"  title="景点">景点</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;四川九寨沟甘海子风景名胜区 
			</div>
			<!--面包屑-->
			<div class="st-main-page">
				<div class="st-scenic-show">
					<div class="scenicshow-tw">
						<div class="focus-slide">
							<div class="imgnav" id="imgnav">
								<div id="img"><!-- 460 * 312 -->
									<c:forEach items="${imgList}" var="ta">
										<img src="${ta.attachmentUrl }?imageMogr2/thumbnail/460x312"  />
									</c:forEach>
									<div id="front" title="上一张">
										<a href="javaScript:void(0)" class="pngFix"></a>
									</div>
									<div id="next" title="下一张">
										<a href="javaScript:void(0)" class="pngFix"></a>
									</div>
								</div>
								<div id="cbtn">
									<i class="picSildeLeft"><img src="<%=path %>/resources/index/res/images/picSlideLeft.gif" /></i>
									<i class="picSildeRight"><img src="<%=path %>/resources/index/res/images/picSlideRight.gif" /></i>
									<div id="cSlideUl">
										<ul>
											<c:forEach items="${imgList}" var="ta">
											<li><img src="${ta.attachmentUrl }?imageMogr2/thumbnail/460x312"  /></li><!-- 90 * 61 -->
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="cp-show-msg">
							<div class="hs-title">
								<h1>${ticket.name }</h1>
								<p>${ticket.scenicId}</p>
							</div>
							<div class="price"> <span><i class="currency_sy">￥</i><b>130</b>起</span> </div>
							<div class="sl"> <span>销量：1023</span><s>|</s><span class="myd">满意度：100%</span><s>|</s><span>推荐：980</span> </div>
							<div class="sell-point"> <span>景点卖点</span>人与自然的亲密融合 </div>
							<ul class="msg-ul">
								<li><em>景区主题：</em>
									<p> 森林&nbsp; 雪山&nbsp; AAAAA&nbsp;
									</p>
								</li>
								<li><em>取票方式：</em>
									<p>景点自取</p>
								</li>
								<li class="mb_0"><em>付款方式：</em>
									<p> <img src="<%=path %>/resources/index/res/images/pay_zfb.gif"  /> </p>
								</li>
							</ul>
						</div>
					</div>
					<div class="scenicshow-con">
						<div class="tabnav-list">
							<span class="on">门票信息</span>
							<span>景点介绍</span>
							<span>客户评价</span>
							<span>我要咨询</span>
						</div>
						<div class="tabbox-list">
							<!--  ---------------  门票信息    ------ -->
							<div class="tabcon-list">
								<div class="car-typetable">
									<table style="width:100%; border:0;">
										<tr>
											<th width="220" height="40" scope="col"><span class="pl20">全票</span></th>
											<th width="80" scope="col">原价</th>
											<th width="80" align="center" scope="col">优惠价</th>
											<th width="80" scope="col">支付方式</th>
											<th width="260" scope="col">&nbsp;</th>
											<th scope="col">&nbsp;</th>
										</tr>
										<tr>
											<td height="40"><strong class="type-tit">九寨沟甘海子门票</strong></td>
											<td align="center"><i class="currency_sy">￥</i>150</td>
											<td align="center"><span class="price"><i class="currency_sy">￥</i>130起 </span></td>
											<td> <span class="fk-way">在线支付</span> </td>
											<td> </td>
											<td>
												<a class="booking-btn" href="<%=path%>/member/order/toBook?ticId=${ticket.id}" data-suitid="18">预订</a>
											</td>
										</tr>
										<tr style="display: none">
											<td colspan="7">
												<div class="cartype-nr"> </div>
											</td>
										</tr>
									</table>
								</div>
							</div>

							<!-- ----------------------------- 介绍内容 -->
							<div class="tabcon-list">
								<div class="list-tit"><strong>景点介绍</strong></div>
								<div class="list-txt">
									${ticket.description }
								</div>
							</div>
							
							<!-- ------------  点评 ----------- -->
							<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-jquery.fancybox.css" rel="stylesheet" />
							<script type="text/javascript" src="min/-f=-res-js-jquery.fancybox.js" ></script>
							<div class="tabcon-list">
								<div class="list-tit"><strong>客户点评</strong></div>
								<div class="st-list-pl">
									<div class="st-pl-box" style="border-bottom: 1px solid #d8d8d8;"> <span class="myd" data-myd="100%">满意度<strong>100%</strong></span> <span class="txt">回程归来发表点评即可获赠积分，<br>获得的积分可在下次消费时抵用部分现金。</span>
										<a class="pl-btn" href="" >我要评论 </a>
									</div>
								</div>
							</div>
							<script type="text/html" id="tpl_user_comment">
									{{each list as value i}}
									<dl> <dt> <img src="{{value.litpic}}"> <span>{{value.nickname}}</span> <em class="level">{{value.level}}</em> </dt>
										<dd>
											<div class="zs"> <span class="grade"><i style="width: {{value.percent}}"></i></span> <span class="jf">{{value.jifencomment}}分<i></i></span> </div>
											<div class="txt">{{value.content}}</div>
											{{if value.piclist}}
											<div class="plImgBox clearfix">
												{{include 'tpl_user_comment_pic' value}}
											</div>
											{{/if}}
											<div class="date">{{value.addtime}}</div>
										</dd>
									</dl>
									{{/each}}
								</script>
							<script type="text/html" id="tpl_user_comment_pic">
									{{each piclist as pic i}}
									<a class="fancybox" href="{{pic}}" data-fancybox-group="gallery"> <img src="{{picthumb[i]}}" width="86px" height="86px"> </a>
									{{/each}}
								</script>
							<script>
								$(function() {
									init_fancybox();
									//分页功能
									$(".comment-nav span").click(function() {
										if($(this).hasClass("on")) {
											return;
										} else {
											$(this).addClass("on").siblings().removeClass("on");
											get_comment_list(1);
										}
									});
									//初始化分页
									gen_pager(0, 1, 5);
									//检测layer是否加载
									if(typeof(layer) == 'undefined') {
										$.getScript("<%=path %>/resources/index/res/js/layer/layer.js" /*tpa=http://www.situcms.com/res/js/layer/layer.js*/ )
									}
									//判断template是否加载
									if(typeof(template) == 'undefined') {
										$.getScript("<%=path %>/resources/index/res/js/template.js" /*tpa=http://www.situcms.com/res/js/template.js*/ )
									}
									//满意度设置
									var myd = $(".st-list-pl .st-pl-box .myd").attr("data-myd");
									if(myd) {
										$(".cp-show-msg .sl .myd").html("满意度：" + myd);
									}
								});
								//获取评论列表
								function get_comment_list(pageno) {
									var index = layer.load(2, {
										time: 10 * 1000
									});
									var flag = $(".comment-nav span.on").attr("data-flag");
									$.ajax({
										type: 'POST',
										aysnc: true,
										url: SITEURL + 'comment/ajax_get_pinlun',
										data: {
											typeid: 5,
											flag: flag,
											articleid: 1707,
											pageno: pageno
										},
										dataType: 'json',
										success: function(data) {
											//console.info(data);
											var html = "";
											$(".comment-con").html(html);
											if(data.list.length > 0) {
												html = template('tpl_user_comment', data);
												$(".comment-con").html(html);
												init_fancybox();
												gen_pager(data.total, data.pageno, data.pagesize)
											} else {
												$(".main_mod_page").html('');
											}
										}
									})
									layer.close(index);
								}
								//初始化图片查看功能
								function init_fancybox() {
									$(".comment-con .plImgBox").each(function() {
										var cls = "fancybox_" + Math.floor(Math.random() * 10000);
										$(this).find("a").addClass(cls);
										$("." + cls).fancybox({
											'overlayShow': false,
											'showNavArrows': true
										});
									});
								}
								//生成分页
								function gen_pager(total, pageno, pagesize) {
									$(".main_mod_page").html('');
									//分页不够不显示分页
									if(total <= pagesize) {
										return;
									}
									var page_count = Math.ceil(total / pagesize);
									var start_page = pageno - 2;
									var end_page = pageno + 2;
									//var seed = 5-1;
									if(start_page <= 0) {
										var num = end_page + Math.abs(start_page) + 1;
										if(num <= page_count) {
											end_page = num;
										} else {
											end_page = page_count;
										}
										start_page = 1;
									}
									if(end_page >= page_count) {
										var num = start_page - (end_page - page_count);
										if(num >= 1) {
											start_page = num;
										} else {
											start_page = 1;
										}
										end_page = page_count;
									}
									var pager = '<p class="page_right">';
									if(pageno > 1) {
										pager += '<a class="back-first" title="第一页" href="#" data-pageno="1"></a>' +
											'<a class="prev" title="上一页" href="#" data-pageno="' + (pageno - 1) + '"></a>'
									}
									pager += '<span class="mod_pagenav_count">';
									for(var i = start_page; i <= end_page; i++) {
										var cls = pageno == i ? 'class="current"' : '';
										pager += '<a title="第' + i + '页" ' + cls + ' href="#" data-pageno="' + i + '">' + i + '</a>';
									}
									pager += '</span>';
									if(pageno < page_count) {
										pager += '<a class="next" title="下一页" href="#" data-pageno="' + (pageno + 1) + '"></a>' +
											'<a class="go-last" title="尾页" href="#" data-pageno="' + page_count + '"></a>';
									}
									pager += '</p>';
									$(".main_mod_page").html(pager);
									bind_pager_click();
								}
								//绑定分页点击事件
								function bind_pager_click() {
									$(".main_mod_page a").click(function(e) {
										e.preventDefault();
										var pageno = $(this).attr("data-pageno");
										get_comment_list(pageno);
									});
								}
							</script>
							<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js" ></script>
							<div class="tabcon-list">
								<div class="list-tit"><strong>我要咨询</strong></div>
								<div class="st-consult">
									<ul> </ul>
									<div class="pagediv" style="text-align: center;display: none" data-quecount="" id="page"></div>
									<div class="st-tj-question"> <textarea name="question" id="question" cols="" placeholder="请填写你的问题" rows=""></textarea>
										<div class="msg">
											<a class="tj-btn" href="javascript:;" data-productid="1707" data-typeid="5">提交</a> <span><em>验证码：</em><input type="text" id="checkcode" style="padding-left: 5px" /><img src="img/captcha.png"   onClick="this.src=this.src+'?math='+ Math.random()" width="80" height="30" /></span> <span><em>昵称：</em> <span id="_c_u" style="line-height: 30px;height: 30px"></span> </span>
										</div>
									</div>
								</div>
							</div>
							<script>
								//提交问答
								$(".tj-btn").click(function() {
									var question = $("#question").val();
									var checkcode = $("#checkcode").val();
									var productid = $(this).attr('data-productid');
									var typeid = $(this).attr('data-typeid');
									var nickname = $("#nickname").val();
									if(question.length < 5) {
										layer.alert('请输入你的问题,至少5个汉字', {
											icon: 5,
											title: '提示'
										})
										return false;
									}
									if(checkcode == '') {
										layer.alert('请输入验证码', {
											icon: 5,
											title: '提示'
										})
										return false;
									}
									$.ajax({
										type: 'POST',
										url: SITEURL + 'pub/ajax_add_question',
										data: {
											productid: productid,
											content: question,
											checkcode: checkcode,
											nickname: nickname,
											typeid: typeid,
											questype: 0
										},
										success: function(data) {
											if(data == 1) {
												layer.alert('验证码错误', {
													icon: 5,
													title: '提示'
												})
												//重新加载验证码
												$("#imgcheckcode").attr('src', "/captcha?" + Math.random());
											} else if(data == 3) {
												layer.msg('提问成功,请耐心等待管理员回复', {
													icon: 6,
													time: 1500
												});
												location.reload();
											} else {
												layer.alert('提问失败,请联系网站管理员!', {
													icon: 5,
													title: '提示'
												})
											}
										}
									})
								})
								//登陆状态
								$.ajax({
									type: "POST",
									url: SITEURL + "member/login/ajax_is_login",
									dataType: 'json',
									success: function(data) {
										if(data.status) {
											$txt = '<span>' + data.user.nickname + '</span><input type="hidden" value="' + data.user.nickname + '" name="nickname" id="nickname" />';
										} else {
											$txt = '<input type="text" name="nickname" id="nickname" /><a href="http://www.situcms.com/member/login/">登录</a>';
										}
										$("#_c_u").html($txt);
									}
								})
							</script>
						</div>
					</div>
				</div>
				<!--详情主体 end-->
				
				
				<!-- ------------------右边框  -->
				<div class="st-sidebox">
					<!--member model-->
					<div class="side-userlogin-box mb15">
						<div class="side-userMsg" id="txt1">
							<dl>
								<dt>
									<img src="<%=path %>/resources/index/res/images/user-headimg.png" />
								</dt>
								<dd>
									<p class="name">Hi,你好！</p>
									<p class="text">感谢您的访问</p>
								</dd>
							</dl>
						</div>
						<div class="side-userBtn" id="txt2">
							<a class="dl-btn" href="login.htm">立即登录</a>
							<a class="zc-btn" href="register.htm">免费注册</a>
						</div>
					</div>
					<script>
						$(function() {
							var url = "/" + "member/login/ajax_is_login";
							$.ajax({
								type: "POST",
								url: url,
								dataType: 'json',
								success: function(data) {
									if(data.status) {
										$txt1 = '<dl>';
										$txt1 += '<dt><img src="' + data.user.litpic + '" /></dt>';
										$txt1 += '<dd>';
										$txt1 += '<p class="name"><span>' + data.user.nickname + '</span>你好！</p>';
										$txt1 += '<p class="txt">最近登录&nbsp;&nbsp;' + data.user.last_logintime + '</p>';
										$txt1 += '</dd>';
										$txt1 += '</dl>';
										$txt2 = '<a class="uc-btn" href="http://www.situcms.com/member/">会员中心</a>';
									} else {
										$txt1 = '<dl>';
										$txt1 += '<dt><img src="res/images/user-headimg.png"/*tpa=http://www.situcms.com/res/images/user-headimg.png*/ /></dt>';
										$txt1 += '<dd>';
										$txt1 += '<p class="name">Hi，你好！</p>';
										$txt1 += '<p class="txt">感谢您的访问</p>';
										$txt1 += '</dd>';
										$txt1 += '</dl>';
										$txt2 = '<a class="dl-btn" href="http://www.situcms.com/member/login">立即登录</a>';
										$txt2 += '<a class="zc-btn" href="http://www.situcms.com/member/register">免费注册</a>';
									}
									$("#txt1").html($txt1);
									$("#txt2").html($txt2);
								}
							})
						})
					</script>
					<!--/member model-->
					<!--new tuan start-->
					<script type="text/javascript" src="min/-f=-res-js-tuan.js" ></script>
					<div class="side-other-box">
						<h3>推荐团购</h3>
						<div class="other-con">
							<ul class="tjtg-conlist">
								<li> <i>7.3</i>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/main/litimg/20150730/20150730091357.jpg"  alt="九寨黄龙 <尊豪> 三日游" /></div>
										<p class="time ticktime">21天08时27分47</p>
										<p class="txt">九寨黄龙
											<尊豪> 三日游</p>
										<p class="price"> <span>&yen;<b>880</b></span> <del>&yen;1200</del> </p>
										<p class="num">0人已购</p>
									</a>
								</li>
								<li> <i>6.7</i>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/main/litimg/20150730/20150730182116.jpg"  alt="九寨黄龙五天四晚游(住:沟内 独立成团)" /></div>
										<p class="time ticktime">21天08时27分47</p>
										<p class="txt">九寨黄龙五天四晚游(住:沟内 独立成团)</p>
										<p class="price"> <span>&yen;<b>800</b></span> <del>&yen;1200</del> </p>
										<p class="num">0人已购</p>
									</a>
								</li>
								<li> <i>8</i>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/main/litimg/20150730/20150730183312.jpg"  alt="九寨沟天堂洲际大饭店" /></div>
										<p class="time ticktime">21天08时27分47</p>
										<p class="txt">九寨沟天堂洲际大饭店</p>
										<p class="price"> <span>&yen;<b>800</b></span> <del>&yen;1000</del> </p>
										<p class="num">0人已购</p>
									</a>
								</li>
								<li> <i>8</i>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/main/litimg/20150730/20150730183752.jpg"  alt="丰田4500越野车" /></div>
										<p class="time ticktime">21天08时27分47</p>
										<p class="txt">丰田4500越野车</p>
										<p class="price"> <span>&yen;<b>1200</b></span> <del>&yen;1500</del> </p>
										<p class="num">0人已购</p>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<script>
						$(function() {
							$('.ticktime').each(function(i, obj) {
								Tuan.tickTimeEle(obj);
							})
						})
					</script>
					<!--new tuan end-->
					<!--hot line start-->
					<div class="side-hot-product mb15">
						<h3>热卖线路</h3>
						<div class="hp-conlist">
							<ul>
								<li>
									<div class="num-label">1</div>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2017/0428/89139fb0b114ddcadfacb1a5f1f9e9cc.jpg"  alt="厦门+鼓浪屿+福建土楼5日4晚跟团游 3晚威斯汀+5星下午茶 1晚岛上" /></div>
										<div class="nr">
											<p class="bt">厦门+鼓浪屿+福建土楼5日4晚跟团游 3晚威斯汀+5星下午茶 1晚岛上</p>
											<p class="price"> &yen;200起
											</p>
										</div>
									</a>
								</li>
								<li>
									<div class="num-label">2</div>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/main/litimg/20150702/20150702110848.jpg"  alt="<九寨沟—黄龙双汽三日游>超值产品，赠送烤羊晚会，梦回九寨！" /></div>
										<div class="nr">
											<p class="bt">
												<九寨沟—黄龙双汽三日游>超值产品，赠送烤羊晚会，梦回九寨！</p>
											<p class="price"> &yen;400起
											</p>
										</div>
									</a>
								</li>
								<li>
									<div class="num-label">3</div>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2017/0428/1d48604ef1bb654e44ad9a1217b03f6a.jpg"  alt="云南昆明+大理+丽江+洱海+玉龙雪山6日5晚跟团游" /></div>
										<div class="nr">
											<p class="bt">云南昆明+大理+丽江+洱海+玉龙雪山6日5晚跟团游</p>
											<p class="price"> &yen;250起
											</p>
										</div>
									</a>
								</li>
								<li>
									<div class="num-label">4</div>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2017/0428/d620c89147d6201689e6408a8fda8f17.jpg"  alt="西安兵马俑+华山+明城墙+高家大院+永兴坊+回民街双飞4日跟团游" /></div>
										<div class="nr">
											<p class="bt">西安兵马俑+华山+明城墙+高家大院+永兴坊+回民街双飞4日跟团游</p>
											<p class="price"> &yen;366起
											</p>
										</div>
									</a>
								</li>
								<li>
									<div class="num-label">5</div>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/main/litimg/20140611/20140611174724.jpg"  alt="<若尔盖大草原—九曲—花湖双汽三日游>特惠产品，赠送羌城和藏寨" /></div>
										<div class="nr">
											<p class="bt">
												<若尔盖大草原—九曲—花湖双汽三日游>特惠产品，赠送羌城和藏寨</p>
											<p class="price"> 电询
											</p>
										</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<!-- 热卖线路 -->
					<!--hot line end-->
					<!--new raider start-->
					<div class="side-other-box mb15">
						<h3>最新攻略</h3>
						<div class="other-con">
							<ul class="newyj-conlist">
								<li>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2016/1222/d8cdc4d4ce65f9d9803aa6785810cc62.JPG"  alt="九寨沟旅游最佳路线" /></div>
										<div class="bt">九寨沟旅游最佳路线</div>
										<div class="data"> <span class="name"></span> <span class="rq">2014-09-28</span> </div>
									</a>
								</li>
								<li>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2016/1222/576798500767ef3db5088478ac6aab0f.jpg"  alt="九寨沟跟团好还是自由行好？" /></div>
										<div class="bt">九寨沟跟团好还是自由行好？</div>
										<div class="data"> <span class="name"></span> <span class="rq">2014-06-25</span> </div>
									</a>
								</li>
								<li>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2016/1222/3e7b3fad9cf6ffb3f26355440c2d3432.JPG"  alt="九寨沟跟团旅游注意事项" /></div>
										<div class="bt">九寨沟跟团旅游注意事项</div>
										<div class="data"> <span class="name"></span> <span class="rq">2014-06-25</span> </div>
									</a>
								</li>
								<li>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2016/1222/c912e2f5346f7464f93a9f5cd7feddf8.jpg"  alt="九寨沟跟团多少钱？" /></div>
										<div class="bt">九寨沟跟团多少钱？</div>
										<div class="data"> <span class="name">思途智旅</span> <span class="rq">2014-06-26</span> </div>
									</a>
								</li>
								<li>
									<a href=""  target="_blank">
										<div class="pic"><img src="uploads/2015/1029/5ee5f6a1be524c475f4bc3e52fcd5888.png"  alt="九寨沟纯玩团多少钱？" /></div>
										<div class="bt">九寨沟纯玩团多少钱？</div>
										<div class="data"> <span class="name">四川省中国青年旅行社</span> <span class="rq">2014-09-17</span> </div>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<!--new raider end-->
				</div>
				<!--边栏模块-->
			</div>
		</div>
	</div> <input type="hidden" id="productid" value="1707" />
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
	<div class="st-brand">
		<div class="wm-1200">
			<div class="st-serve">
				<dl class="ico01 bor_0"> <dt></dt>
					<dd> <em>阳光价格</em> <span>同类产品，保证低价</span> </dd>
				</dl>
				<dl class="ico02"> <dt></dt>
					<dd> <em>阳光行程</em> <span>品质护航，透明公开</span> </dd>
				</dl>
				<dl class="ico03"> <dt></dt>
					<dd> <em>阳光服务</em> <span>专属客服，快速响应</span> </dd>
				</dl>
				<dl class="ico04"> <dt></dt>
					<dd> <em>救援保障</em> <span>途中意外，保证援助</span> </dd>
				</dl>
			</div>
		</div>
	</div>
	<!--品牌介绍-->
	<div class="st-help">
		<div class="wm-1200">
			<div class="help-lsit">
				<dl> <dt><a href=""  rel="nofollow">参团信息</a></dt>
					<dd>
						<a href=""  target="_blank" rel="nofollow">确定参团人数</a>
						<a href="" target="_blank" rel="nofollow">什么是独立团</a>
					</dd>
				</dl>
				<dl> <dt><a href="" rel="nofollow">支付定金</a></dt>
					<dd>
						<a href="" target="_blank" rel="nofollow">旅游为什么要支付定金</a>
						<a href="" target="_blank" rel="nofollow">游客如何支付定金</a>
					</dd>
				</dl>
				<dl> <dt><a href="" rel="nofollow">签订旅游合同</a></dt>
					<dd>
						<a href="" target="_blank" rel="nofollow">是正规旅游合同吗？</a>
						<a href="" target="_blank" rel="nofollow">传真能签合同吗？</a>
					</dd>
				</dl>
				<dl> <dt><a href="" rel="nofollow">正式出团</a></dt>
					<dd>
						<a href="" target="_blank" rel="nofollow">接客正式出团</a>
						<a href="" target="_blank" rel="nofollow">什么是纯玩团</a>
					</dd>
				</dl>
				<dl> <dt><a href="" rel="nofollow">电话回访</a></dt>
					<dd>
						<a href="" target="_blank" rel="nofollow">信件回访</a>
						<a href="" target="_blank" rel="nofollow">电话回访</a>
					</dd>
				</dl>
				<div class="st-wechat"> 
					<img class="fl" src="img/liantu.png" width="94" height="94"/> 
					<span>微信扫一扫，<br />优惠多多！</span> 
				</div>
			</div>
		</div>
	</div>
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
	<script src="<%=path %>/resources/index/plugins/qq_kefu/public/js/qqkefu.js" ></script>
	<div class="st-link">
		<div class="wm-1200">
			<div class="st-link-list">
				<dl> <dt>友情链接：</dt>
					<dd>
						<a href=""  target="_blank">思途智旅</a>
						<a href=""  target="_blank">爱客纯玩游</a>
						<a href=""  target="_blank">四川旅游电子商务协会</a>
						<a href=""  target="_blank">旅游网站建设</a>
						<a href=""  target="_blank">西行川藏</a>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-floatmenu-floatmenu.js" ></script>
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-js-floatmenu-floatmenu.css"  rel="stylesheet" />
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js,-res-js-template.js,-res-js-scorll.img.js" ></script>
	<script type="text/javascript" src="<%=path %>/resources/index/res/js/layer/layer.js" ></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//内容切换
			$.floatMenu({
				menuContain: '.tabnav-list',
				tabItem: 'span',
				chooseClass: 'on',
				contentContain: '.tabbox-list',
				itemClass: '.tabcon-list'
			});
			//套餐点击
			$(".type-tit").click(function() {
				$(this).parents('tr').first().next().toggle();
			})
			//预订
			$(".booking-btn").click(function() {
				var suitid = $(this).attr('data-suitid');
				if(!suitid || !is_login_order()) {
					return false;
				}
				var productid = $("#productid").val();
				var url = SITEURL + 'spot/book/?suitid=' + suitid + "&productid=" + productid;
				window.location.href = url;
			})
		});
	</script>
	<script>
		var isLoginOrder = "1";
		var isLogin = false;
		//登陆下订单
		function is_login_order() {
			var bool = true;
			var text = $('#loginstatus').text();
			var reg = /免费注册/g;
			isLogin = !reg.test(text);
			if(isLoginOrder == 1 && !isLogin) {
				$('#is_login_order').removeClass('hide');
				bool = false;
			}
			return bool;
		}
	</script>
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.validate.js,-res-js-jquery.md5.js" ></script>
	<div class="content-fix-box hide" id="is_login_order">
		<div class="login-small-box">
			<form id="loginfrm" method="post" border_top=zVdmVs>
				<div class="login-small-con">
					<h3>登录<i class="close-btn"></i></h3>
					<div class="user-name"><input type="text" name="loginname" id="loginname" class="user-zh" placeholder="请输入手机号/邮箱"></div>
					<div class="user-password"><input type="password" name="loginpwd" id="loginpwd" class="user-zh" placeholder="请输入登录密码"></div>
					<div class="user-num"> <input type="text" name="logincode" id="frmcode" class="user-zh" placeholder="请输入验证码"> <span class="yzm"><img id="login_order_yzm" src="captcha.png" ></span> <span class="change-next" id="chang_yzm">换一张</span> </div>
					<div id="login_order_error"></div>
					<div class="login-btn">
						<a class="login" id="login_order" href="javascript:">登 录</a>
					</div>
					<div class="reg-find-acc">没有账号，
						<a href="" >免费注册</a>
						<a class="fr" href="" >找回密码</a>
					</div>
				</div>
				<div class="other-login">
					<dl> <dt><span>使用其他方式登录</span><em></em></dt>
						<dd>
							<a class="qq third-login" href="javascript:" data="http://www.situcms.com/plugins/login_qq/index/index/?refer">QQ</a>
						</dd>
					</dl>
				</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			var node;
			//关闭弹出框
			$('.close-btn').click(function() {
				$('#is_login_order').addClass('hide');
			});
			//切换验证码
			$('#chang_yzm').click(function() {
				refresh_code()
			});
			$('#login_order_yzm').click(function() {
				refresh_code()
			});

			function refresh_code() {
				$('#login_order_yzm').attr('src', SITEURL + 'captcha?' + Math.random());
			}
			//第三方登陆
			$('.third-login').click(function() {
				var href = $(this).attr('data') + '=' + window.location.href;
				window.location.href = href;
			});
			//登陆
			$('#login_order').click(function() {
				node = $(this);
				$("#loginfrm").submit();
			});
			$("#loginfrm").validate({
				rules: {
					loginname: {
						required: true
					},
					loginpwd: {
						required: true,
						minlength: 6
					},
					logincode: {
						required: true
					}
				},
				messages: {
					loginname: {
						required: '用户名不能为空'
					},
					loginpwd: {
						required: '用户密码不能为空',
						minlength: '密码长度至少6位'
					},
					logincode: {
						required: '验证码不能为空'
					}
				},
				errorPlacement: function(error, element) {
					var content = $('#loginfrm').find('#login_order_error').html();
					if(content == '') {
						$('#loginfrm').find('#login_order_error').addClass('login-error').html(error);
					}
				},
				showErrors: function(errorMap, errorList) {
					if(errorList.length < 1) {
						$('#loginfrm').find('#login_order_error').removeClass('login-error').html('');
					} else {
						this.defaultShowErrors();
					}
				},
				submitHandler: function(form) {
					var url = SITEURL + 'member/login/ajax_login';
					var loginname = $("#loginname").val();
					var loginpwd = $.md5($("#loginpwd").val());
					var frmcode = $("#frmcode").val();
					$.ajax({
						type: "post",
						async: false,
						url: url,
						data: {
							loginname: loginname,
							loginpwd: loginpwd,
							frmcode: frmcode
						},
						dataType: 'json',
						success: function(data) {
							if(data.status == '1') { //登陆成功,跳转到来源网址
								var type = node.attr('data');
								var url = $("#fromurl").val();
								$('body').append(data.js); //同步登陆js
								window.location.reload();
							} else {
								refresh_code()
								if(data.msg != undefined) {
									$("#login_order_error").addClass('login-error').html(data.msg);
								} else {
									$("#login_order_error").addClass('login-error').html('用户名或者密码错误');
								}
							}
						},
						error: function(a, b, c) {}
					});
					return false;
				}
			})
		});
	</script>
</body>
</html>
