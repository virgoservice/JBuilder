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
		<div class="web-top">
			<div class="wm-1200">
				<div class="notice-txt">
					<p>欢迎访问贵州古城文化旅游开发股份有限公司官网</p>
				</div>
				<div class="top-login"> <span id="loginstatus"> </span>
					<a class="dd" href="" ""><i></i>订单查询</a>
					<dl class="dh"> <dt><i></i>网站导航</dt>
						<dd>
							<a href="" title="成都周边旅游线路">线路</a>
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
						<li>背包客2小时前评论了
							<a href="" "" target="_blank">西安兵马俑+华山+明城墙+高家大院+永兴坊+回民街双飞4日跟团游</a>
						</li>
						<li>背包客1小时前评论了
							<a href="" "" target="_blank">九寨沟星宇国际大酒店</a>
						</li>
						<li>背包客3小时前评论了
							<a href="" "" target="_blank">云南昆明+大理+丽江+洱海+玉龙雪山6日5晚跟团游</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--顶部-->
		<div class="st-header">
			<div class="wm-1200">
				<div class="st-logo">
					<a href="index.htm"><img src="<%=path %>/resources/index/img/logo.png" alt="欢迎访问贵州古城文化旅游开发股份有限公司官网" /></a>
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
					</div> <input type="text" id="st-top-search" class="st-txt searchkeyword" placeholder="输入目的地、酒店、攻略" /> <input type="button" value="搜索" class="st-btn" /> <span id="dt-top-search-span">   <a href="" "" target="_blank">是打发</a>  <a href="" "" target="_blank">九寨沟酒店</a>  <a href="" "" target="_blank">九寨沟跟团游</a>  </span>
					<div class="st-hot-dest-box" id="stHotDestBox">
						<div class="block-tit"><strong>热门搜索</strong><i class="close-ico"></i></div>
						<div class="block-nr">
							<dl> <dt>热搜词</dt>
								<dd class="clearfix">
									<a href="" "" target="_blank">是打发</a>
									<a href="" "" target="_blank">九寨沟酒店</a>
									<a href="" "" target="_blank">九寨沟跟团游</a>
									<a href="" "" target="_blank">九寨沟自助游</a>
									<a href="" "" target="_blank">九寨沟租车</a>
									<a href="" "" target="_blank">九寨黄龙双飞</a>
									<a href="" "" target="_blank">九寨沟酒</a>
								</dd>
							</dl>
							<dl> <dt>目的地</dt>
								<dd class="clearfix">
									<a href="" "" target="_blank">国内旅游</a>
									<a href="" "" target="_blank">拉萨</a>
									<a href="" "" target="_blank">峨眉乐山</a>
									<a href="" "" target="_blank">九寨沟</a>
									<a href="" "" target="_blank">出境旅游</a>
									<a href="" "" target="_blank">稻城亚丁</a>
									<a href="" "" target="_blank">周边旅游</a>
									<a href="" "" target="_blank">那曲</a>
									<a href="" "" target="_blank">昌都</a>
									<a href="" "" target="_blank">蜀南竹海</a>
									<a href="" "" target="_blank">西昌泸沽湖</a>
									<a href="" "" target="_blank">阆中古城</a>
									<a href="" "" target="_blank">红原若尔盖</a>
									<a href="" "" target="_blank">北京</a>
									<a href="" "" target="_blank">四川</a>
									<a href="" "" target="_blank">贵州</a>
									<a href="" "" target="_blank">西藏</a>
									<a href="" "" target="_blank">西城</a>
									<a href="" "" target="_blank">朝阳</a>
									<a href="" "" target="_blank">石景山</a>
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
				<div class="st-link-way"> <img class="link-way-ico" src="<%=path %>/resources/index/res/images/24hours-ico.png" "" width="45" height="45" />
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
							<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145458_20x20.png" "" /></em><a href="javascript:;"target="_blank">产品功能</a></strong> <p>   <a href="" "" target="_blank">邮轮</a>  <a href="" "" target="_blank">游记</a>  <a href="" "" target="_blank">结伴</a>  <a href="" "" target="_blank">团购</a>  <a href="" "" target="_blank">私人定制</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="" "" target="_blank">邮轮</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="" "" target="_blank">游记</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="" "" target="_blank">结伴</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="" "" target="_blank">团购</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="" "" target="_blank">私人定制</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="" "" target="_blank">活动</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="" "" target="_blank">特产</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="" "" target="_blank">积分俱乐部</a></dt>
										<dd> </dd>
									</dl>
									<dl class="clear"> <dt><a href="" "" target="_blank">夺宝</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/9bfc143523607fb073e9c2505da6af4e.png" "" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145528_20x20.png" "" /></em><a href="" "" target="_blank">国内旅游</a></strong> <p>   <a href="" "" target="_blank"><span style='color:#FF6600'>四川</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>西藏</span></a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="" "" target="_blank"><span style='color:#FF6600'>四川</span></a></dt>
										<dd>
											<a href="" "" target="_blank"><span style='color:#000000'>九寨沟</span></a>
											<a href="" "" target="_blank"><span style='color:#000000'>峨眉山</span></a>
											<a href="" "" target="_blank"><span style='color:#000000'>稻城亚丁</span></a>
											<a href="" "" target="_blank"><span style='color:#000000'>蜀南竹海</span></a>
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
									<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/2f5a635683781849c933d21e13684026.png" "" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145554_20x20.png" "" /></em><a href="#" target="_blank">出境旅游</a></strong> <p>   <a href="#" target="_blank"><span style='color:#FF6600'>美洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>欧洲</span></a>  <a href="javascript:;" target="_blank"><span style='color:#FF6600'>澳洲</span></a>  </p> <i class="arrow-rig"></i> </h3>
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
									<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/2f5a635683781849c933d21e13684026.png" "" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145618_20x20.png" "" /></em><a href="" "" target="_blank">主题旅游</a></strong> <p>   <a href="" "" target="_blank"><span style='color:#996600'>亲子游</span></a>  <a href="" "" target="_blank">蜜月游</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="" "" target="_blank"><span style='color:#996600'>亲子游</span></a></dt>
										<dd>
											<a href="javascript:;" target="_blank">夏令营</a>
										</dd>
									</dl>
									<dl> <dt><a href="" "" target="_blank">蜜月游</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png" "" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="<%=path %>/resources/index/uploads/main/allimg/20161116/20161116145644_20x20.png" "" /></em><a href="" "" target="_blank">周边旅游</a></strong> <p>   <a href="" "" target="_blank">九寨沟</a>  <a href="javascript:;" target="_blank">峨眉山</a>  <a href="javascript:;" target="_blank">西岭雪山</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="" "" target="_blank">九寨沟</a></dt>
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
									<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png" "" title="" width="980" height="100"></a>
								</div>
							</div>
						</div>
						<div class="gl-list-tabbox">
							<h3> <strong><em><img src="<%=path %>/resources/index/res/images/usernav.png" "" /></em><a href="" "" target="_blank">海岛游</a></strong> <p>   <a href="" "" target="_blank">普吉岛</a>  <a href="" "" target="_blank">苏梅岛</a>  </p> <i class="arrow-rig"></i> </h3>
							<div class="tabcon-item">
								<div class="item-list">
									<dl> <dt><a href="" "" target="_blank">普吉岛</a></dt>
										<dd> </dd>
									</dl>
									<dl> <dt><a href="" "" target="_blank">苏梅岛</a></dt>
										<dd> </dd>
									</dl>
								</div>
								<div class="ad-box">
									<a href="javascript:;" target="_blank"><img src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef.png" "" title="" width="980" height="100"></a>
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
							<a href="index.htm">首页<s></s></a>
						</li>
						<li class="nav_header_1"> <i class="st-new-ico"></i><s></s> <s></s>
							<a href="" "" title="成都周边旅游线路">线路 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="" "">周边游</a>
									<a href="" "">自驾游</a>
									<a href="" "">省内特价游</a>
								</div>
							</div>
						</li>
						<li class="nav_header_12"> <s></s>
							<a href="" "" title="旅游目的地">目的地 </a>
						</li>
						<li class="nav_header_2"> <s></s>
							<a href="" "" title="九寨沟酒店">酒店 </a>
						</li>
						<li class="nav_header_3"> <s></s>
							<a href="" "" title="九寨沟旅游租车">租车 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="" "">越野租车</a>
									<a href="" "">商务租车</a>
									<a href="" "">旅游大巴租车</a>
								</div>
							</div>
						</li>
						<li class="nav_header_5"> <s></s>
							<a href="" "" title="成都周边旅游景点">景点 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="" "">四川景点</a>
									<a href="" "">国内景点</a>
									<a href="" "">出境景点</a>
								</div>
							</div>
						</li>
						<li class="nav_header_4"> <s></s>
							<a href="" "" title="九寨沟旅游攻略">攻略 </a>
						</li>
						<li class="nav_header_8"> <s></s>
							<a href="" "" title="签证">签证 <i class="st-arrow-ico"></i> </a>
							<div class="down-nav">
								<div class="sub-list">
									<a href="" "">商务签证</a>
									<a href="" "">旅游签证</a>
								</div>
							</div>
						</li>
						<li class="nav_header_106"> <s></s>
							<a href="" "" title="导游">导游 </a>
						</li>
						<li class="nav_header_"> <i class="st-jian-ico"></i><s></s> <s></s>
							<a href="" "" title="九寨沟子站">九寨沟子站 </a>
						</li>
						<li class="nav_header_"> <i class="st-hot-ico"></i><s></s> <s></s>
							<a href="" "" title="供应商">供应商 </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js" ""></script>
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
							$txt += '<a class="zc" href="register.htm"/*tpa=http://www.situcms.com/member/register*/>免费注册</a>';
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
						<form id="phonefrm" method="post" action="#">
							<ul id="phone_reg">
								<li> 
									<span class="bt-sp">登录帐号</span> 
									<input type="text" class="reg-text w230" id="mobile" name="mobile" placeholder="请输入手机号" /> 
									<span class="msg_contain"></span> 
								</li>
								<li> 
									<span class="bt-sp">验证码</span> 
									<input type="text" class="reg-text w105" id="p_checkcode" name="p_checkcode" /> 
									<span class="reg-yzm"><img src="<%=path %>/member/verifyCode" style='cursor: pointer;' alt='请输入图片验证码' onclick="this.src='<%=path %>/member/verifyCode?time='+Math.random()" width="114" height="31"/></span> 
									<span class="reg-change">
										<a href="javascript:;">换一张</a>
									</span> 
									<span class="msg_contain"></span> 
								</li>
								<li> 
									<span class="bt-sp">密码</span> 
									<input type="password" name="password1" id="password1" class="reg-text w230" placeholder="请输入登录密码" /> 
									<span class="msg_contain"></span> 
									<span class="complex_contain"></span> 
								</li>
								<li> 
									<span class="bt-sp">确认密码</span> 
									<input type="password" name="password2" id="password2" class="reg-text w230" placeholder="请再次输入登录密码" /> 
									<span class="msg_contain"></span> 
								</li>
								<li> </li>
							</ul> 
						</form>
						<div class="now-reg-btn">
							<a href="javascript:;">立即注册</a>
						</div>
					</div>
					<div class="reg-tig-box">
						<p>已有账号，
							<a href="<%=path %>/member/login">立即登录</a>
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
				//发送短信验证码
				$('.sendmsg').click(function() {
					var mobile = $("#mobile").val();
					var regPartton = /^1[3-8]+\d{9}$/;
					if(!regPartton.test(mobile)) {
						layer.alert('请输入正确的手机号码', {
							icon: 5
						});
						return false;
					}
					var pcode = $("#p_checkcode").val();
					if(pcode == '') {
						layer.alert('请填写验证码', {
							icon: 5
						});
						return false;
					}
					var t = this;
					t.disabled = true;
					//发送次数判断
					var sendnum = $.cookie('sendnum') ? $.cookie('sendnum') : 0;
					if(sendnum > 3) {
						layer.alert("验证码发送请求过于频繁,请过15分钟后再试", {
							icon: 5
						});
						return false;
					}
					if(sendnum != 0) {
						$.cookie('sendnum', sendnum++);
					} else {
						$.cookie('sendnum', 1, {
							expires: 1 / 96
						});
					}
					var token = "c95bddfff159fe12a7d41ae692b50a8f";
					var url = SITEURL + 'member/register/ajax_send_msgcode';
					$.post(url, {
						mobile: mobile,
						token: token,
						pcode: pcode
					}, function(data) {
						if(data.status) {
							var t = this;
							t.disabled = true;
							code_timeout(60);
							return false;
						} else {
							t.attr("disabled", false);
							layer.alert(data.msg, {
								icon: 5
							});
							return false;
						}
					}, 'json');
				})
				//发送邮箱验证码
				$('.sendemail').click(function() {
					var email = $("#email").val();
					var regPartton = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
					if(!regPartton.test(email)) {
						layer.alert('请输入正确的邮箱', {
							icon: 5
						});
						return false;
					}
					var pcode = $("#e_checkcode").val();
					if(pcode == '') {
						layer.alert('请填写验证码', {
							icon: 5
						});
						return false;
					}
					var t = this;
					t.disabled = true;
					var token = "c95bddfff159fe12a7d41ae692b50a8f";
					var url = SITEURL + "member/register/ajax_send_emailcode";
					var sendnum = $.cookie('email_sendnum') ? $.cookie('email_sendnum') : 0;
					if(sendnum > 3) {
						layer.alert('验证码发送请求过于频繁,请过15分钟后再试', {
							icon: 5
						});
						t.attr("disabled", false);
						return false;
					}
					if(sendnum != 0) {
						$.cookie('email_sendnum', sendnum++);
					} else {
						$.cookie('email_sendnum', 1, {
							expires: 1 / 96
						});
					}
					$.post(url, {
						email: email,
						token: token,
						pcode: pcode
					}, function(data) {
						if(data.status) {
							email_code_timeout(60);
							return false;
						} else {
							t.attr("disabled", false);
							layer.alert(data.msg, {
								icon: 5
							});
							return false;
						}
					}, 'json');
				});
				/*手机注册验证开始*/
				jQuery.validator.addMethod("mobile", function(value, element) {
					var pattern = /^1+\d{10}$/;
					return pattern.test(value);
				}, "请输入正确的手机号");
				$("#phonefrm").validate({
					rules: {
						'mobile': {
							required: true,
							mobile: true,
							remote: {
								url: SITEURL + 'member/register/ajax_reg_checkmobile',
								type: 'post'
							}
						},
						'password1': {
							required: true,
							minlength: 6
						},
						'password2': {
							required: true,
							equalTo: '#password1'
						},
						'p_checkcode': {
							required: true,
							remote: {
								url: SITEURL + 'pub/ajax_check_code',
								type: 'post',
								data: {
									checkcode: function() {
										return $("#p_checkcode").val();
									}
								}
							}
						},
						'msgcode': {
							required: true,
							remote: {
								url: SITEURL + 'member/register/ajax_check_msgcode',
								type: 'post',
								data: {
									mobile: function() {
										return $("#mobile").val();
									}
								}
							}
						},
						agreement: {
							required: true
						}
					},
					messages: {
						'mobile': {
							required: '手机号不能为空',
							remote: '该手机号已被注册,您可以<a href="http://www.situcms.com/member/login">直接登陆</a>'
						},
						'password1': {
							required: '密码不能为空',
							minlength: '密码不得小于6位'
						},
						'password2': {
							required: '密码前后不一致',
							equalTo: '密码前后不一致'
						},
						'p_checkcode': {
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
					submitHandler: function(form) {
						var frmdata = $("#phonefrm").serialize();
						$.ajax({
							type: 'POST',
							url: SITEURL + 'member/register/ajax_doreg',
							data: frmdata,
							dataType: 'json',
							success: function(data) {
								if(data.status) {
									var url = $("#backurl").val();
									$('body').append(data.js); //同步登陆js
									layer.msg(data.msg, {
										icon: 6,
										time: 1000
									})
									setTimeout(function() {
										window.open(url, '_self');
									}, 500);
								} else {
									layer.msg(data.msg, {
										icon: 5,
										time: 1000
									})
								}
							}
						})
					}
				});
				//邮箱注册验证
				$("#emailfrm").validate({
					rules: {
						'email': {
							required: true,
							email: true,
							remote: {
								url: SITEURL + 'member/register/ajax_check_email',
								type: 'post'
							}
						},
						'e_password1': {
							required: true,
							minlength: 6
						},
						'e_password2': {
							required: true,
							equalTo: '#e_password1'
						},
						'e_checkcode': {
							required: true,
							remote: {
								url: SITEURL + 'pub/ajax_check_code',
								type: 'post',
								data: {
									checkcode: function() {
										return $("#e_checkcode").val();
									}
								}
							}
						},
						e_email_code: {
							required: true,
							remote: {
								url: SITEURL + 'member/register/ajax_check_email_code',
								type: 'post',
								data: {
									email: function() {
										return $("#email").val();
									}
								}
							}
						},
						'e_agreement': {
							required: true
						}
					},
					messages: {
						'email': {
							required: '邮箱不能为空',
							email: '邮箱格式错误',
							remote: '该邮箱已经被注册,您可以<a href="http://www.situcms.com/member/login">直接登陆</a>'
						},
						'e_password1': {
							required: '密码不能为空',
							minlength: '密码不得小于6位'
						},
						'e_password2': {
							required: '密码前后不一致',
							equalTo: '密码前后不一致'
						},
						'e_email_code': {
							required: '邮箱验证码不能为空',
							remote: '验证码错误'
						},
						'e_checkcode': {
							required: '验证码不能为空',
							remote: '验证码错误'
						},
						'e_agreement': {
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
						if($(element).is('#e_password1')) {
							set_pwd_safe('#emailfrm', '#e_password1');
						}
					},
					onkeyup: function(element, event) {
						set_pwd_safe('#emailfrm', '#e_password1');
						$(element).valid();
					},
					submitHandler: function(form) {
						var frmdata = $("#emailfrm").serialize();
						$.ajax({
							type: 'POST',
							url: SITEURL + 'member/register/ajax_doreg',
							data: frmdata,
							dataType: 'json',
							success: function(data) {
								if(data.status) {
									var url = $("#backurl").val();
									$('body').append(data.js); //同步登陆js
									layer.msg(data.msg, {
										icon: 6,
										time: 1000
									})
									setTimeout(function() {
										window.open(url, '_self');
									}, 500);
								} else {
									layer.msg(data.msg, {
										icon: 5,
										time: 1000
									})
								}
							}
						})
					}
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
			//短信发送倒计时
			function code_timeout(v) {
				if(v > 0) {
					$('.sendmsg').val((--v) + '秒后重发');
					setTimeout(function() {
						code_timeout(v)
					}, 1000);
				} else {
					$('.sendmsg').val('重发验证码');
					$('.sendmsg').attr("disabled", false);
				}
			}
			//邮箱发送倒计时
			function email_code_timeout(v) {
				if(v > 0) {
					$('.sendemail').val((--v) + '秒后重发');
					setTimeout(function() {
						email_code_timeout(v)
					}, 1000);
				} else {
					$('.sendemail').val('重发验证码');
					$('.sendemail')[0].disabled = false;
				}
			}
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" "" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" "" rel="stylesheet" />
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
						<img class="fl" src="<%=path %>/resources/index/img/liantu.png" width="94" height="94"/> 
						<span>微信扫一扫，<br />优惠多多！</span> 
					</div>
				</div>
			</div>
		</div>
			
		<!--助 扫码-->
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
						<img src="<%=path %>/resources/index/uploads/arcimgs73241402466888.jpg" title="1.jpg" alt="" style="float: none;" />
						<img src="<%=path %>/resources/index/uploads/arcimgs59811402466888.jpg" title="2.jpg" alt="" style="float: none;" /><br/></p>
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
		<script src="<%=path %>/resources/index/plugins/qq_kefu/public/js/qqkefu.js" ""></script>
	</body>

</html>