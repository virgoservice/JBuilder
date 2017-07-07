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
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>
		<title>更多景区</title>
		<meta name="description" content="九寨沟旅游景点介绍，包含最详细的九寨沟的人文历史、景观建筑、风景图片等景点信息详细介绍，拥有最新九寨沟景点选择推荐，景点点评等资讯信息。" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=plugins-spot-public-css-scenic.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-delayLoading.min.js" ></script>
	</head>

	<body id="body">
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
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
					<a class="dd" href= ><i></i>订单查询</a>
					<dl class="dh"> <dt><i></i>网站导航</dt>
						<dd>
							<a href=  title="成都周边旅游线路">线路</a>
							<a href=  title="旅游目的地">目的地</a>
							<a href=  title="九寨沟酒店">酒店</a>
							<a href=  title="九寨沟旅游租车">租车</a>
							<a href=  title="成都周边旅游景点">景点</a>
							<a href=  title="九寨沟旅游攻略">攻略</a>
							<a href=  title="签证">签证</a>
							<a href=  title="">导游</a>
							<a href=  title="九寨沟子站">九寨沟子站</a>
							<a href=  title="供应商">供应商</a>
						</dd>
					</dl>
				</div>
				<div class="scroll-order">
					<ul>
						<li>背包客55分钟前评论了
							<a href=  target="_blank">西安兵马俑+华山+明城墙+高家大院+永兴坊+回民街双飞4日跟团游</a>
						</li>
						<li>背包客43分钟前评论了
							<a href=  target="_blank">九寨沟星宇国际大酒店</a>
						</li>
						<li>背包客24分钟前评论了
							<a href=  target="_blank">云南昆明+大理+丽江+洱海+玉龙雪山6日5晚跟团游</a>
						</li>
					</ul>
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
					</div> <input type="text" id="st-top-search" class="st-txt searchkeyword" placeholder="输入目的地、酒店、攻略" /> <input type="button" value="搜索" class="st-btn" /> <span id="dt-top-search-span">   <a href=  target="_blank">是打发</a>  <a href=  target="_blank">九寨沟酒店</a>  <a href=  target="_blank">九寨沟跟团游</a>  </span>
					<div class="st-hot-dest-box" id="stHotDestBox">
						<div class="block-tit"><strong>热门搜索</strong><i class="close-ico"></i></div>
						<div class="block-nr">
							<dl> <dt>热搜词</dt>
								<dd class="clearfix">
									<a href=  target="_blank">是打发</a>
									<a href=  target="_blank">九寨沟酒店</a>
									<a href=  target="_blank">九寨沟跟团游</a>
									<a href=  target="_blank">九寨沟自助游</a>
									<a href=  target="_blank">九寨沟租车</a>
									<a href=  target="_blank">九寨黄龙双飞</a>
									<a href=  target="_blank">九寨沟酒</a>
								</dd>
							</dl>
							<dl> <dt>目的地</dt>
								<dd class="clearfix">
									<a href=  target="_blank">国内旅游</a>
									<a href=  target="_blank">拉萨</a>
									<a href=  target="_blank">峨眉乐山</a>
									<a href=  target="_blank">九寨沟</a>
									<a href=  target="_blank">出境旅游</a>
									<a href=  target="_blank">稻城亚丁</a>
									<a href=  target="_blank">周边旅游</a>
									<a href=  target="_blank">那曲</a>
									<a href=  target="_blank">昌都</a>
									<a href=  target="_blank">蜀南竹海</a>
									<a href=  target="_blank">西昌泸沽湖</a>
									<a href=  target="_blank">阆中古城</a>
									<a href=  target="_blank">红原若尔盖</a>
									<a href=  target="_blank">北京</a>
									<a href=  target="_blank">四川</a>
									<a href=  target="_blank">贵州</a>
									<a href=  target="_blank">西藏</a>
									<a href=  target="_blank">西城</a>
									<a href=  target="_blank">朝阳</a>
									<a href=  target="_blank">石景山</a>
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
							<h3> <strong><em><img src="uploads/main/allimg/20161116/20161116145458_20x20.png"  /></em><a href="javascript:;"target="_blank">产品功能</a></strong> <p>   <a href=  target="_blank">邮轮</a>  <a href=  target="_blank">游记</a>  <a href=  target="_blank">结伴</a>  <a href=  target="_blank">团购</a>  <a href=  target="_blank">私人定制</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href=  target="_blank">邮轮</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href=  target="_blank">游记</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href=  target="_blank">结伴</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href=  target="_blank">团购</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href=  target="_blank">私人定制</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href=  target="_blank">活动</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href=  target="_blank">特产</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href=  target="_blank">积分俱乐部</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href=  target="_blank">夺宝</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="uploads/2016/0614/9bfc143523607fb073e9c2505da6af4e.png"  title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="uploads/main/allimg/20161116/20161116145528_20x20.png"  /></em><a href=  target="_blank">国内旅游</a></strong> <p>   <a href=  target="_blank"><span style='color:#FF6600'>四川</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>西藏</span></a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href=  target="_blank"><span style='color:#FF6600'>四川</span></a></dt>
										<dd>
											<a href=  target="_blank"><span style='color:#000000'>九寨沟</span></a>
											<a href=  target="_blank"><span style='color:#000000'>峨眉山</span></a>
											<a href=  target="_blank"><span style='color:#000000'>稻城亚丁</span></a>
											<a href=  target="_blank"><span style='color:#000000'>蜀南竹海</span></a>
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
							<h3> <strong><em><img src="uploads/main/allimg/20161116/20161116145554_20x20.png"  /></em><a href="#" target="_blank">出境旅游</a></strong> <p>   <a href="#" target="_blank"><span style='color:#FF6600'>美洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>欧洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>澳洲</span></a>  </p> <i class="arrow-rig"></i> </h3>
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
							<h3> <strong><em><img src="uploads/main/allimg/20161116/20161116145618_20x20.png"  /></em><a href=  target="_blank">主题旅游</a></strong> <p>   <a href=  target="_blank"><span style='color:#996600'>亲子游</span></a>  <a href=  target="_blank">蜜月游</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href=  target="_blank"><span style='color:#996600'>亲子游</span></a></dt>
										<dd>
											<a href="javascript:;" target="_blank">夏令营</a>
										</dd>
									</dl>
									<dl> <dt><a href=  target="_blank">蜜月游</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png"  title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="uploads/main/allimg/20161116/20161116145644_20x20.png"  /></em><a href=  target="_blank">周边旅游</a></strong> <p>   <a href=  target="_blank">九寨沟</a>  <a href="javascript:;" target="_blank">峨眉山</a>  <a href="javascript:;" target="_blank">西岭雪山</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href=  target="_blank">九寨沟</a></dt>
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
									<a href="javascript:;" target="_blank"><img src="uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png"  title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="res/images/usernav.png"  /></em><a href=  target="_blank">海岛游</a></strong> <p>   <a href=  target="_blank">普吉岛</a>  <a href=  target="_blank">苏梅岛</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href=  target="_blank">普吉岛</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href=  target="_blank">苏梅岛</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png"  title="" width="980" height="100"></a>
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
							<a href="<%=path %>" >首页<s></s></a>
						</li>
						<li class="nav_header_1"> <i class="st-new-ico"></i><s></s> <s></s>
							<a href=  title="成都周边旅游线路">线路 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href= >周边游</a>
									<a href= >自驾游</a>
									<a href= >省内特价游</a>
								</div>
							</div>
						</li>
						<li class="nav_header_12"> <s></s>
							<a href=  title="旅游目的地">目的地 </a>
						</li>
						<li class="nav_header_2"> <s></s>
							<a href=  title="九寨沟酒店">酒店 </a>
						</li>
						<li class="nav_header_3"> <s></s>
							<a href=  title="九寨沟旅游租车">租车 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href= >越野租车</a>
									<a href= >商务租车</a>
									<a href= >旅游大巴租车</a>
								</div>
							</div>
						</li>
						<li class="nav_header_5"> <s></s>
							<a href=  title="成都周边旅游景点">景点 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="index.htm" >四川景点</a>
									<a href= >国内景点</a>
									<a href= >出境景点</a>
								</div>
							</div>
						</li>
						<li class="nav_header_4"> <s></s>
							<a href=  title="九寨沟旅游攻略">攻略 </a>
						</li>
						<li class="nav_header_8"> <s></s>
							<a href=  title="签证">签证 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href= >商务签证</a>
									<a href= >旅游签证</a>
								</div>
							</div>
						</li>
						<li class="nav_header_106"> <s></s>
							<a href=  title="导游">导游 </a>
						</li>
						<li class="nav_header_"> <i class="st-jian-ico"></i><s></s> <s></s>
							<a href=  title="九寨沟子站">九寨沟子站 </a>
						</li>
						<li class="nav_header_"> <i class="st-hot-ico"></i><s></s> <s></s>
							<a href=  title="供应商">供应商 </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
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
					url = url.replace('http://www.situcms.com/spots/jiuzhaigou/index.php', '');
					url = url.replace('http://www.situcms.com/spots/jiuzhaigou/index.html', '');
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
		<div class="big">
			<div class="wm-1200">
				<div class="st-guide">
					<a href="<%=path %>"  title="首页">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
					<a href="#"  title="景点">更多景点</a>
					</div>
				<!--面包屑-->
				<div class="st-main-page">
					<div class="st-sceniclist-box">
						
						<!--条件搜索-->
						<div class="st-sceniclist-con">
							<div class="st-sort-menu"> <span class="sort-sum"> <a href="javascript:;">综合排序</a> <a href="javascript:;">价格
                     <i class="jg-default" ></i>    <a href="javascript:;">销量
                     <i class="xl-default" ></i>   </a> <a href="javascript:;">推荐
                     <i class="tj-default" ></i>   </a> </span>
								<!--排序-->
							</div>
							<div class="scenic-list-con">
							
								<c:forEach items="${list.items}" var="item">
							
								<div class="list-child">
									<div class="lc-image-text">
										<div class="pic">
											<a href="<%=path %>/detail/${item.id}"  target="_blank" title="九寨沟珍珠滩">
											<img  src="${item.cover}" width="200px" height="150"/>
											</a>
										</div>
										<div class="text">
											<p class="bt">
												<a href="<%=path %>/detail/${item.id}"  target="_blank" title="">${item.name} </a>
											</p>
											<p class="js"></p>
											<p class="attr"> <span>游玩日期：<fmt:formatDate value="${item.beginDate }" type="date" />  至   <fmt:formatDate value="${item.endDate }" type="date" /></span> </p>
											
											<c:if test="${item.weekDate != '' && item.weekDate != null }">
											<p class="ads">
											本票
											<c:if test="${item.weekDate.indexOf('0')>-1 }"> 周日</c:if>
											<c:if test="${item.weekDate.indexOf('1')>-1 }"> 周一</c:if>
											<c:if test="${item.weekDate.indexOf('2')>-1 }"> 周二</c:if>
											<c:if test="${item.weekDate.indexOf('3')>-1 }"> 周三</c:if>
											<c:if test="${item.weekDate.indexOf('4')>-1 }"> 周四</c:if>
											<c:if test="${item.weekDate.indexOf('5')>-1 }"> 周五</c:if>
											<c:if test="${item.weekDate.indexOf('6')>-1 }"> 周六</c:if>
											不可用。
											</p>
											</c:if>
											
											<!-- 
											<p class="attr"> <span>销量：-</span> <span>满意度：-</span> <span>推荐：-</span> </p>
											<p class="js">推荐理由：-</p>
											<p class="ads">-</p>
											 -->
										</div>
										<div class="lowest-jg"> <span><i class="currency_sy">￥</i><b>${item.price}</b></span> </div>
									</div>
									<div class="car-typetable">
										<table width="100%" border="0">
											<tr>
												<th width="200" height="40" scope="col"><span class="pl20">全票</span></th>
												<th width="80" scope="col">原价</th>
												<th width="80" align="center" scope="col">优惠价</th>
												<th width="80" scope="col">支付方式</th>
												<th width="260" scope="col">&nbsp;</th>
												<th scope="col">&nbsp;</th>
											</tr>
											<tr>
												<td height="40"><strong class="type-tit">${item.name}</strong></td>
												<td align="center"><i class="currency_sy">￥</i>${item.shopPrice}</td>
												<td align="center"><span class="price"><i class="currency_sy">￥</i>${item.price} </span></td>
												<td> <span class="fk-way">全款支付</span> </td>
												<td> </td>
												<td>
													<a class="booking-btn" href="<%=path %>/member/order/toBook?ticId=${item.id}"  target="_blank">预订</a>
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
								</c:forEach>
								
								
								
								<div class="main_mod_page clear">
									<p class="page_right">

    									${list.pageStr}
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="st-sidebox">
						<!--member model-->
						<div class="side-userlogin-box mb15">
							<div class="side-userMsg" id="txt1">
								<dl>
									<dt>
										<img src="res/images/user-headimg.png" />
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
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/main/litimg/20150730/20150730091357.jpg"  alt="九寨黄龙 <尊豪> 三日游" /></div>
											<p class="time ticktime">21天08时27分47</p>
											<p class="txt">九寨黄龙
												<尊豪> 三日游</p>
											<p class="price"> <span>&yen;<b>880</b></span> <del>&yen;1200</del> </p>
											<p class="num">0人已购</p>
										</a>
									</li>
									<li> <i>6.7</i>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/main/litimg/20150730/20150730182116.jpg"  alt="九寨黄龙五天四晚游(住:沟内 独立成团)" /></div>
											<p class="time ticktime">21天08时27分47</p>
											<p class="txt">九寨黄龙五天四晚游(住:沟内 独立成团)</p>
											<p class="price"> <span>&yen;<b>800</b></span> <del>&yen;1200</del> </p>
											<p class="num">0人已购</p>
										</a>
									</li>
									<li> <i>8</i>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/main/litimg/20150730/20150730183312.jpg"  alt="九寨沟天堂洲际大饭店" /></div>
											<p class="time ticktime">21天08时27分47</p>
											<p class="txt">九寨沟天堂洲际大饭店</p>
											<p class="price"> <span>&yen;<b>800</b></span> <del>&yen;1000</del> </p>
											<p class="num">0人已购</p>
										</a>
									</li>
									<li> <i>8</i>
										<a href=  target="_blank">
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
						<!--new tuan end-->
						<!--new raider start-->
						<div class="side-other-box mb15">
							<h3>最新攻略</h3>
							<div class="other-con">
								<ul class="newyj-conlist">
									<li>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/2016/1222/d8cdc4d4ce65f9d9803aa6785810cc62.JPG"  alt="九寨沟旅游最佳路线" /></div>
											<div class="bt">九寨沟旅游最佳路线</div>
											<div class="data"> <span class="name"></span> <span class="rq">2014-09-28</span> </div>
										</a>
									</li>
									<li>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/2016/1222/576798500767ef3db5088478ac6aab0f.jpg"  alt="九寨沟跟团好还是自由行好？" /></div>
											<div class="bt">九寨沟跟团好还是自由行好？</div>
											<div class="data"> <span class="name"></span> <span class="rq">2014-06-25</span> </div>
										</a>
									</li>
									<li>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/2016/1222/3e7b3fad9cf6ffb3f26355440c2d3432.JPG"  alt="九寨沟跟团旅游注意事项" /></div>
											<div class="bt">九寨沟跟团旅游注意事项</div>
											<div class="data"> <span class="name"></span> <span class="rq">2014-06-25</span> </div>
										</a>
									</li>
									<li>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/2016/1222/c912e2f5346f7464f93a9f5cd7feddf8.jpg"  alt="九寨沟跟团多少钱？" /></div>
											<div class="bt">九寨沟跟团多少钱？</div>
											<div class="data"> <span class="name">思途智旅</span> <span class="rq">2014-06-26</span> </div>
										</a>
									</li>
									<li>
										<a href=  target="_blank">
											<div class="pic"><img src="uploads/2015/1029/5ee5f6a1be524c475f4bc3e52fcd5888.png"  alt="九寨沟纯玩团多少钱？" /></div>
											<div class="bt">九寨沟纯玩团多少钱？</div>
											<div class="data"> <span class="name">四川省中国青年旅行社</span> <span class="rq">2014-09-17</span> </div>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<!--new raider end-->
						<!--hot spot start-->
						<div class="side-hot-product mb15">
							<h3>热门景点</h3>
							<div class="hp-conlist">
								<ul>
									<li>
										<div class="num-label">1</div>
										<a href=  target="_blank">
											<div class="nr">
												<p class="bt">九寨沟珍珠滩</p>
											</div>
										</a>
									</li>
									<li>
										<div class="num-label">2</div>
										<a href=  target="_blank">
											<div class="nr">
												<p class="bt">九寨沟风景区</p>
											</div>
										</a>
									</li>
									<li>
										<div class="num-label">3</div>
										<a href=  target="_blank">
											<div class="nr">
												<p class="bt">四川九寨沟甘海子风景名胜区</p>
											</div>
										</a>
									</li>
									<li>
										<div class="num-label">4</div>
										<a href=  target="_blank">
											<div class="nr">
												<p class="bt">九寨沟诺日郎瀑布</p>
											</div>
										</a>
									</li>
									<li>
										<div class="num-label">5</div>
										<a href=  target="_blank">
											<div class="nr">
												<p class="bt">九寨沟喇嘛石</p>
											</div>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<script>
							$(function() {
								$('.hp-conlist').each(function() {
									$(this).find('li').eq(0).addClass('hover')
								});
								$('.hp-conlist li').mouseover(function() {
									$(this).addClass('hover').siblings().removeClass('hover')
								})
							})
						</script>
						<!--hot spot end-->
					</div>
					<!--边栏模块-->
				</div>
			</div>
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
					</p>
				</div>
			</div>
			<div class="st-link">
				<div class="wm-1200">
					<div class="st-link-list">
						<dl> <dt>友情链接：</dt>
							<dd>
								<a href="http://www.seelecloud.com" target="_blank">塞拉科技</a>
								<a href="http://www.seelecloud.com" target="_blank">途牛网</a>
								<a href="http://www.seelecloud.com" target="_blank">去哪儿网</a>
								<a href="http://www.seelecloud.com" target="_blank">贵州旅游电子商务协会</a>
								<a href="http://www.seelecloud.com" target="_blank">旅游网站建设</a>
								<a href="http://www.seelecloud.com" target="_blank">古城镇远</a>
							</dd>
						</dl>
					</div>
				</div>
			</div>
	</body>
	<script type="text/javascript">
	
		function query(pageNo,pageSize){
	    	$.ajax({
				url:"<%=path %>/member/order/spotsList",
				type:"GET",
				data:{
					pageNo:pageNo,
					pageSize:pageSize
				},
				cache:false,
				success:function(html){
					$("#body").html(html);
				},
				error:function(){
					
				}
			});
	    }
	</script>
</html>