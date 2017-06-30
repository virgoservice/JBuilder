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
		<title>预订</title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>
		<script>
			window.SITEURL = "/";
			window.CURRENCY_SYMBOL = "￥";
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=plugins-spot-public-css-scenic.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=res-css-base.css,res-css-extend.css,res-css-stcalendar.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-SuperSlide.min.js,-res-js-jquery.validate.js,-res-js-jquery.validate.addcheck.js" ></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-jquery.validate.js,-res-js-jquery.md5.js" ></script>
	</head>

	<body>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<div class="web-top">
			<div class="wm-1200">
				<div class="notice-txt">
					<p>欢迎访问贵州古城文化旅游开发股份有限公司官网</p>
				</div>
				<div class="top-login"> <span id="loginstatus"> </span>
					<a class="dd" href="" ><i></i>订单查询</a>
					<dl class="dh"> <dt><i></i>网站导航</dt>
						<dd>
							<a href=""  title="成都周边旅游线路">线路</a>
							<a href=""  title="旅游目的地">目的地</a>
							<a href=""  title="九寨沟酒店">酒店</a>
							<a href=""  title="九寨沟旅游租车">租车</a>
							<a href=""  title="成都周边旅游景点">景点</a>
							<a href=""  title="九寨沟旅游攻略">攻略</a>
							<a href=""  title="签证">签证</a>
							<a href=""  title="">导游</a>
							<a href=""  title="九寨沟子站">九寨沟子站</a>
							<a href=""  title="供应商">供应商</a>
						</dd>
					</dl>
				</div>
				<div class="scroll-order">
					<ul>
						<li>背包客29分钟前评论了
							<a href=""  target="_blank">西安兵马俑+华山+明城墙+高家大院+永兴坊+回民街双飞4日跟团游</a>
						</li>
						<li>背包客50分钟前评论了
							<a href=""  target="_blank">九寨沟星宇国际大酒店</a>
						</li>
						<li>背包客30分钟前评论了
							<a href=""  target="_blank">云南昆明+大理+丽江+洱海+玉龙雪山6日5晚跟团游</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--顶部-->
		<div class="st-header">
			<div class="wm-1200">
				<div class="st-logo">
					<a href="index.htm"  title="贵州古城文化旅游开发股份有限公司官方网站">
						<img src="<%=path %>/resources/index/img/logo.png"  alt="贵州古城文化旅游开发股份有限公司官方网站" />
					</a>
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
							<h3> <strong><em><img src="http://www.situcms.com/uploads/main/allimg/20161116/20161116145458_20x20.png" /></em><a href="javascript:;"target="_blank">产品功能</a></strong> <p>   <a href="/ship/" target="_blank">邮轮</a>  <a href="/notes/" target="_blank">游记</a>  <a href="/jieban/" target="_blank">结伴</a>  <a href="/tuan/" target="_blank">团购</a>  <a href="/customize/" target="_blank">私人定制</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="/ship/" target="_blank">邮轮</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="/notes/" target="_blank">游记</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="/jieban/" target="_blank">结伴</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="/tuan/" target="_blank">团购</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="/customize/" target="_blank">私人定制</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="/campaign/" target="_blank">活动</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="/techan/" target="_blank">特产</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="/member/club/" target="_blank">积分俱乐部</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="/duobao/" target="_blank">夺宝</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="/insurance/" target="_blank">保险</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="http://www.situcms.com/uploads/2016/0614/9bfc143523607fb073e9c2505da6af4e.png" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="http://www.situcms.com/uploads/main/allimg/20161116/20161116145528_20x20.png" /></em><a href="/lines/" target="_blank">国内旅游</a></strong> <p>   <a href="/sichuan1/" target="_blank"><span style='color:#FF6600'>四川</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>西藏</span></a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="/sichuan1/" target="_blank"><span style='color:#FF6600'>四川</span></a></dt>
										<dd>
											<a href="/jiuzhaigou/" target="_blank"><span style='color:#000000'>九寨沟</span></a>
											<a href="/emeileshan/" target="_blank"><span style='color:#000000'>峨眉山</span></a>
											<a href="/daochengyading/" target="_blank"><span style='color:#000000'>稻城亚丁</span></a>
											<a href="/shunanzhuhai/" target="_blank"><span style='color:#000000'>蜀南竹海</span></a>
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
									<a href="javascript:;" target="_blank"><img src="http://www.situcms.com/uploads/2016/0614/2f5a635683781849c933d21e13684026.png" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="http://www.situcms.com/uploads/main/allimg/20161116/20161116145554_20x20.png" /></em><a href="#" target="_blank">出境旅游</a></strong> <p>   <a href="#" target="_blank"><span style='color:#FF6600'>美洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>欧洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>澳洲</span></a>  </p> <i class="arrow-rig"></i> </h3>
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
									<a href="javascript:;" target="_blank"><img src="http://www.situcms.com/uploads/2016/0614/2f5a635683781849c933d21e13684026.png" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="http://www.situcms.com/uploads/main/allimg/20161116/20161116145618_20x20.png" /></em><a href="/lines/" target="_blank">主题旅游</a></strong> <p>   <a href="/lines/" target="_blank"><span style='color:#996600'>亲子游</span></a>  <a href="/lines/" target="_blank">蜜月游</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="/lines/" target="_blank"><span style='color:#996600'>亲子游</span></a></dt>
										<dd>
											<a href="javascript:;" target="_blank">夏令营</a>
										</dd>
									</dl>
									<dl> <dt><a href="/lines/" target="_blank">蜜月游</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="http://www.situcms.com/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="http://www.situcms.com/uploads/main/allimg/20161116/20161116145644_20x20.png" /></em><a href="/hotels/" target="_blank">周边旅游</a></strong> <p>   <a href="null" target="_blank">九寨沟</a>  <a href="javascript:;" target="_blank">峨眉山</a>  <a href="javascript:;" target="_blank">西岭雪山</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="null" target="_blank">九寨沟</a></dt>
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
									<a href="javascript:;" target="_blank"><img src="http://www.situcms.com/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="http://www.situcms.com/res/images/usernav.png" /></em><a href="/spots/" target="_blank">海岛游</a></strong> <p>   <a href="/spots/" target="_blank">普吉岛</a>  <a href="/spots/" target="_blank">苏梅岛</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="/spots/" target="_blank">普吉岛</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="/spots/" target="_blank">苏梅岛</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="http://www.situcms.com/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png" title="" width="980" height="100"></a>
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
							<a href="/">首页<s></s></a>
						</li>
						<li class="nav_header_1"> <i class="st-new-ico"></i><s></s> <s></s>
							<a href="http://www.situcms.com/lines/" title="成都周边旅游线路">线路 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="/lines/jiuzhaigou/">周边游</a>
									<a href="/lines/jiuzhaigou-0-0-0-0-0-142-1">自驾游</a>
									<a href="/emeileshan/">省内特价游</a>
								</div>
							</div>
						</li>
						<li class="nav_header_12"> <s></s>
							<a href="http://www.situcms.com/destination/" title="旅游目的地">目的地 </a>
						</li>
						<li class="nav_header_2"> <s></s>
							<a href="http://www.situcms.com/hotels/" title="九寨沟酒店">酒店 </a>
						</li>
						<li class="nav_header_3"> <s></s>
							<a href="http://www.situcms.com/cars/" title="九寨沟旅游租车">租车 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="/cars/all-1-0-0-1">越野租车</a>
									<a href="/cars/all-2-0-0-1">商务租车</a>
									<a href="/cars/all-3-0-0-1">旅游大巴租车</a>
								</div>
							</div>
						</li>
						<li class="nav_header_5"> <s></s>
							<a href="http://www.situcms.com/spots/" title="成都周边旅游景点">景点 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="/spots/jiuzhaigou/">四川景点</a>
									<a href="/spots/emeileshan/">国内景点</a>
									<a href="/spots/jiuzhaigou-0-0-5-1">出境景点</a>
								</div>
							</div>
						</li>
						<li class="nav_header_4"> <s></s>
							<a href="http://www.situcms.com/raiders/" title="九寨沟旅游攻略">攻略 </a>
						</li>
						<li class="nav_header_8"> <s></s>
							<a href="http://www.situcms.com/visa/" title="签证">签证 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="/visa/taiguo/">商务签证</a>
									<a href="/visa/taiguo-0-0-6-1">旅游签证</a>
								</div>
							</div>
						</li>
						<li class="nav_header_106"> <s></s>
							<a href="http://www.situcms.com/guide/" title="导游">导游 </a>
						</li>
						<li class="nav_header_"> <i class="st-jian-ico"></i><s></s> <s></s>
							<a href="http://jiuzhaigou.situcms.com/" title="九寨沟子站">九寨沟子站 </a>
						</li>
						<li class="nav_header_"> <i class="st-hot-ico"></i><s></s> <s></s>
							<a href="/plugins/supplier/pc/login" title="供应商">供应商 </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
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
				var typeid = "5";
				if(typeid != '') {
					$('.nav_header_' + typeid).addClass('active');
				}
			})
		</script>
		<div class="big">
			<div class="wm-1200">
				<div class="st-guide">
					<a href="/">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;景点 </div>
				<!--面包屑-->
				<div class="st-main-page">
					<div class="order-content">
						<form id="orderfrm" method="post" action="<%=path %>/member/order/add">
							<div class="con-order-box">
								<div class="product-msg">
									<h3 class="pm-tit"><strong class="ico01">预定信息</strong></h3>
									<dl class="pm-list"> <dt>产品编号：</dt>
										<dd>${ticket.goodsCode }</dd>
									</dl>
									<dl class="pm-list"> <dt>产品名称：</dt>
										<dd>${ticket.name }</dd>
									</dl>
									<dl class="pm-list"> <dt>门票类型：</dt>
										<dd>${ticket.goodsType }</dd>
									</dl>
									<div class="table-msg">
										<table width="100%" border="0" class="people_info" strong_margin=lkhmVs>
											<tr>
												<th width="33%" height="40" scope="col"><span class="l-con">使用日期</span></th>
												<th width="33%" scope="col">购买数量</th>
												<th width="33%" scope="col">总价格</th>
											</tr>
											<tr>
												<td height="40"> <span>
													<input type="hidden" name="list[0].ticketId" value="${ticket.id }">
													<input type="text" class="inputdate" id="inputdate" name="list[0].occDate" value="2017/06/29"/>
												
												</span> </td>
												<td>
													<div class="control-box"> <span class="add-btn" onclick="less()">-</span> 
													
													<input type="text" id="dingnum" name="list[0].quantity" class="number-text" value="1" onchange="updateMes()"/> 
													
													<span class="sub-btn" onclick="add()">+</span> </div>
												</td>
												<td><span class="price suit-totalprice" id="total">${ticket.price }</span></td>
											</tr>
										</table>
									</div>
								</div>
								<!--预定信息-->
								<div class="product-msg">
									<h3 class="pm-tit"><strong class="ico02">联系人信息</strong></h3>
									<dl class="pm-list"> <dt><span class="st-star-ico">*</span>联系人：</dt>
										<dd><input type="text" class="linkman-text" id="linkName" name="linkName" value="" /><span class="st-ts-text hide"></span></dd>
									</dl>
									<dl class="pm-list"> <dt><span class="st-star-ico">*</span>手机号码：</dt>
										<dd><input type="text" class="linkman-text" id="linkMobile" name="linkMobile" value="" /><span class="st-ts-text hide"></span></dd>
									</dl>
									<dl class="pm-list"> <dt>电子邮箱：</dt>
										<dd><input type="text" class="linkman-text" name="linkemail" value="" /></dd>
									</dl>
									<dl class="pm-list"> <dt>订单留言：</dt>
										<dd><textarea class="order-remarks" name="buyerRemark" cols="" rows=""></textarea></dd>
									</dl>
								</div>
								<div class="order-js-box">
									<div class="total">订单结算总额：<span class="totalprice" id="total3">${ticket.price }</span></div>
									<div class="yz"> <input type="button" class="tj-btn" value="提交订单" onclick="save()"/> 
									<input type="text" name="checkcode" id="checkcode" class="ma-text" /> <span class="pic"><img src="<%=path %>/member/order/verifyCode?time='+Math.random()" onClick="this.src=this.src+'?math='+ Math.random()" width="80" height="32" /></span> <span class="bt">验证码：</span> </div>
								</div>
								<!--提交订单-->
							</div>
							<div class="clear"></div>
						<div class="booking-need-term">
							<div class="term-tit"><strong>我已阅读预定须知，同意则提交订单</strong></div>
							<div class="term-block">
								<p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">预订限制</span></strong></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 本产品不接受75岁以上(含)客人预订，敬请原谅。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 70周岁（含）以上老年人预订出行需确保身体健康适宜旅游，并有18周岁以上家属或朋友（因服务能力所限无法接待及限制接待的人除外）全程陪同出行。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 本产品不接受18周岁以下(含)的客人单独报名出游，敬请谅解！</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 报价是按照2成人入住1间房计算的价格，本产品不接受拼房,如您的订单产生单房，请在预订时选择单房差，携程将向您收取相应的费用。由于12岁以下儿童费用为不占床、不含早餐之报价，若儿童需占床含早，请在预订时选择单房差。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">预订说明</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 请您在预订时务必提供准确、完整的信息（姓名、性别、证件号码、国籍、联系方式、是否成人或儿童等），以免产生预订错误，影响出行。如因客人提供错误个人信息而造成损失，我社不承担任何责任。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 本产品目的地海拔较高，有严重高血压、心脏病等疾病的客人及老年客人，请根据自身条件，遵医嘱，谨慎决定是否出行。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 儿童门票不接受预订，请自行在景区购买。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p>
								<p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">产品说明</span></strong></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 本线路在不影响您行程的情况下，部分行程段可能会和其他线路合并用车、共同游玩，具体以当天陪同工作人员协调安排为准。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 团队中可能会有入住不同酒店的其他携程团友一同出行，如涉及不同酒店客人的接送事宜，当地司导人员会根据团队实际情况进行合理安排，敬请理解、配合，谢谢。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 本产品行程实际出行中，在不减少景点且征得客人同意的前提下，导游、司机可能会根据天气、交通等情况，对您的行程进行适当调整（如调整景点游览顺序等），以确保行程顺利进行。如因不可抗力等因素确实无法执行原行程计划，对于因此而造成的费用变更，我社实行多退少补，敬请配合。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 行程中的赠送项目，如因交通、天气等不可抗因素导致不能赠送的、或因您个人原因不能参观的，费用不退，敬请谅解。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 持老年证、军官证、学生证等优惠证件的游客可享受景区门票优惠政策，具体以出行当日景区公布政策为准。请具备条件的游客携带好相关证件，届时由导游统一安排，按打包行程中客人已享的优惠价格，现场退还差价门票优惠（4月1日-11月15日）：半票九寨单次退50元/人，黄龙退50元/人,免票九寨单次退100元/人，黄龙退100元/人。九寨沟为免票的客人，景区内保险费10元/人，18周岁以下无优惠票退还。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 当地酒店条件有限，请勿以城市标准衡量。酒店定时供应热水及空调，敬请理解！</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 因当地经济条件有限，交通、酒店服务及设施、餐饮等方面与发达城市相比会有一定的差距，敬请谅解。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p>
								<p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">违约条款</span></strong></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 旅行社违约：<br/>行程前7日至4日，退还全额旅游费用，支付旅游费用总额10％的违约金。<br/>行程前3日至1日，退还全额旅游费用，支付旅游费用总额15％的违约金。<br/>行程开始当日，退还全额旅游费用，支付旅游费用总额20％的违约金。<br/></span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 旅游者违约：<br/>在行程前解除合同的，机（车、船）票费用按实结算后，其余必要的费用扣除标准为：<br/>行程前7日至4日，收取旅游费用总额10％的违约金。<br/>行程前3日至1日，收取旅游费用总额20％的违约金。<br/>行程开始当日，收取旅游费用总额30％的违约金。<br/></span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p>
								<p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">出行须知</span></strong></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 最晚在出行前1天，导游或我司工作人员会短信联系您，告知导游、司机联系方式及其他具体出行事宜，请保持手机畅通。如您在时间之前仍未接到通知，请速来电咨询电话。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 在旅游旺季或者其他一些特殊情况下，为了保证您的行程游览不受影响，行程的出发时间可能会提早（具体出发时间以导游通知为准），导致您不能正常享用酒店早餐。我们建议您跟酒店协调打包早餐或者自备早餐，敬请谅解。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 请在导游约定的时间到达上车地点集合，切勿迟到，以免耽误其他游客行程。若因迟到导致无法随车游览，责任自负，敬请谅解。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 为普及旅游安全知识及旅游文明公约，使您的旅程顺利圆满完成</span><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">服液等。不建议您到当地购买相关产品。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 逢周末和节假日出行，可能因景区、道路交通拥堵等原因造成回程时间延误，为避免造成不必要的损失，不建议客人预订返程当天的大交通（如飞机、火车、轮船等）。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 旅游团队用餐，旅行社按承诺标准确保餐饮卫生及餐食数量，但不同地区餐食口味有差异，不一定满足游客口味需求，敬请见谅。</span></p>
								<p style="white-space: normal;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">* 在旅游行程中，个别景点景区、餐厅、休息区等场所存在商场等购物场所，上述场所非旅行社安排的指定购物场所。携程提醒旅游者根据自身需要，理性消费并索要必要票据。如产生消费争议，请自行承担相关责任义务，由此带来的不便，敬请谅解！</span></p>
								<div style="white-space: normal;">
									<h5></h5></div>
							</div>
						</div>
					</div>
					<div class="st-sidebox">
						<div class="side-order-box">
							<div class="order-total-tit">结算信息</div>
							<div class="show-con">
								<ul class="ul-cp">
									<li>
										<a class="pic" href="http://www.situcms.com/spots/show_130.html"><img src="uploads/2016/1229/5994efc163e76d27e69cc9d00e2a2190_283x193.jpg" alt="花湖"></a>
									</li>
									<li>
										<a class="txt" href="http://www.situcms.com/spots/show_130.html">${ticket.name }</a>
										<p class="address"></p>
									</li>
								</ul>
								<ul class="ul-list">
									<li>使用日期：<span class="usedate">2017-06-29</span></li>
									<li>数量：<span class="dingnum">1</span></li>
									<li>单价：<i class="currency_sy">￥</i>${ticket.price }</li>
								</ul>
								<div class="total-price">订单总额：<span class="totalprice" id="total2">${ticket.price }</span></div>
							</div>
						</div>
					</div>
				</div>
				<!--订单结算信息-->
			</div>
		</div>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
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
							<a href=""  target="_blank" rel="nofollow">什么是独立团</a>
						</dd>
					</dl>
					<dl> <dt><a href=""  rel="nofollow">支付定金</a></dt>
						<dd>
							<a href=""  target="_blank" rel="nofollow">旅游为什么要支付定金</a>
							<a href=""  target="_blank" rel="nofollow">游客如何支付定金</a>
						</dd>
					</dl>
					<dl> <dt><a href=""  rel="nofollow">签订旅游合同</a></dt>
						<dd>
							<a href=""  target="_blank" rel="nofollow">是正规旅游合同吗？</a>
							<a href=""  target="_blank" rel="nofollow">传真能签合同吗？</a>
						</dd>
					</dl>
					<dl> <dt><a href=""  rel="nofollow">正式出团</a></dt>
						<dd>
							<a href=""  target="_blank" rel="nofollow">接客正式出团</a>
							<a href=""  target="_blank" rel="nofollow">什么是纯玩团？</a>
						</dd>
					</dl>
					<dl> <dt><a href=""  rel="nofollow">电话回访</a></dt>
						<dd>
							<a href=""  target="_blank" rel="nofollow">信件回访</a>
							<a href=""  target="_blank" rel="nofollow">电话回访</a>
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
			</div>
		</div>
		<script type="text/javascript" src="<%=path %>/resources/index/res/js/layer/layer.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/index/min/js/datepicker/WdatePicker.js"></script>
		<div id="calendar"></div>
		
		<script type="text/javascript">
			var tempPirce="${ticket.price}";	
		
			function less(){
				var num=$("#dingnum").val();
				if(num-1<1)
					return;
				$("#dingnum").val(num-1);
				updateMes();
			}
			
			function add(){
				var num=$("#dingnum").val();
				$("#dingnum").val(Number(num)+1);
				updateMes();
			}
			
			function updateMes(){
				var num=$("#dingnum").val();
				var total=Number(num)*Number(tempPirce); 
				$("#total").html(total);
				$("#total2").html(total);
				$("#total3").html(total);
			}
			
			function save(){
				var name=$("#linkName").val();
				var linkMobile=$("#linkMobile").val();
				
				if(name==""){
					layer.alert("联系人不能为空")
					return false;
				}else if(linkMobile==""){
					layer.alert("手机号不能为空")
					return false;
				}
				
				if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(linkMobile))){ 
					layer.alert("手机号格式不正确！")
					return false; 
				} 
				
				var formdata = $("#orderfrm").serialize();
				
		    	$.ajax({
					url:"<%=path %>/member/order/add",
					type:"post",
					contentType:"application/x-www-form-urlencoded",
		            encoding:"utf-8",
					data:formdata,
					success:function(data){
						if(data.success){
							window.location.href="<%=path %>/member/order/toPay?orderId="+data.obj.id;
						}else{
							layer.alert("预订失败:"+data.errorMsg);
						}
					},
					error:function(){
						layer.alert("通讯错误！")
					}
				});
			}
			 
		</script>
	</body>

</html>