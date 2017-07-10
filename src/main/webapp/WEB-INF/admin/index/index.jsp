<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>
	<head html_margin=XzhmVs>
		<meta charset="utf-8">
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>
		<title>贵州古城文化旅游开发股份有限公司官网</title>
		<meta name="keywords" content="贵州古城文化旅游开发股份有限公司官网" />
		<meta name="description" content="贵州古城文化旅游开发股份有限公司官网" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-base.css,-res-css-index.css,-res-css-extend.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-SuperSlide.min.js,-res-js-delayLoading.min.js"></script>
	</head>

	<body>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
		
		<jsp:include page="header.jsp" />
		
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js"></script>
		
		<div class="st-focus-banners">
			<div class="banners">
				<ul>
				<c:forEach items="${banner}" var="item">  
					<li class="banner">
						<a href="<%=path %>/detail/${item.alt}" target="_blank">
						<img src="${item.image}" height="420px"/>
						</a>
					</li>
				</c:forEach>
				</ul>
			</div>
			<div class="focus">
				<ul>
				<c:forEach items="${banner}" var="item">  
					<li></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<!--滚动焦点图结束-->
		<div class="big">
			<div class="wm-1200">
				
				
				<!--循环分组-->
				<c:forEach items="${list}" var="group">  
				
				<div class="st-slideTab">
					<div class="st-tabnav">
						<h3 class="xl-bt">${tgMap.get(group.ticketGroup).name }</h3> 
						
						<!--循环分组内的景区${group.forscMap}-->
						<c:forEach items="${group.forscMap}" var="sc">  
							<span >${sc.value.name}</span> 
						</c:forEach>
						
						<a href="<%=path %>/spotsList/${tgMap.get(group.ticketGroup).id}" class="more">更多线路</a>
					</div>
					
					<!--循环分组内景区的tab-->
					<c:forEach items="${group.tempTicket}" var="tmap">
							
					<div class="st-tabcon">
						<ul class="st-cp-list">
						
							<!--循环分组内景区的商品-->
								<c:forEach items="${tmap.value}" var="ticket">
									<li>
										<div class="pic"> 
										<img src="${ticket.cover }"  alt="${ticket.name }" />
											<div class="buy">
												<a href="<%=path %>/member/order/toBook?ticId=${ticket.id}" target="_blank" title="${ticket.name }">立即预定</a>
											</div>
										</div>
										<div class="js">
											<a class="tit" href="<%=path %>/detail/${ticket.id }" target="_blank" title="${ticket.name }">${ticket.name } </a>
											<p class="attr"> </p>
											<p class="num"> <del>原价：<i class="currency_sy">￥</i>${ticket.shopPrice }</del> <span>  <b><i class="currency_sy">￥</i>${ticket.price }</b>起  </span> </p>
										</div>
									</li>
								</c:forEach>
						</ul>
					</div>
					</c:forEach>
					
					
					<div class="st-adimg">
						<a href="" target="_blank"><img class="fl" src="<%=path %>/resources/index/res/images/grey.gif"  st-src="<%=path %>/resources/index/uploads/2016/0614/675118e44ee27c8ce665f512f77bd55e_279x610.jpg" alt="" /></a>
					</div>
				</div>
				<!--旅游线路结束-->
				<div class="st-list-sd">
					<a href="" target="_blank"><img class="fl" src="<%=path %>/resources/index/res/images/grey.gif"  st-src="<%=path %>/resources/index/uploads/2016/0614/163df1f9caf22dbe0ce43857fb115eef_1200x110.png" alt=""></a>
				</div>
				
				</c:forEach>
				
				
				
				
				<!-- 导游 -->
			</div>
		</div>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"rel="stylesheet" />
		
		<jsp:include page="footer.jsp" />
		
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-fcous.js,-res-js-slideTabs.js" ></script>
		<script>
			$(function() {
				var offsetLeft = new Array();
				var windowWidth = $(window).width();

				function get_width() {
					//设置"down-nav"宽度为浏览器宽度
					$(".down-nav").width($(window).width());
					$(".st-menu li").hover(function() {
						var liWidth = $(this).width() / 2;
						$(this).addClass("this-hover");
						offsetLeft = $(this).offset().left;
						//获取当前选中li下的sub-list宽度
						var sub_list_width = $(this).children(".down-nav").children(".sub-list").width();
						$(this).children(".down-nav").children(".sub-list").css("width", sub_list_width);
						$(this).children(".down-nav").css("left", -offsetLeft);
						$(this).children(".down-nav").children(".sub-list").css("left", offsetLeft - sub_list_width / 2 + liWidth);
						var offsetRight = windowWidth - offsetLeft;
						var side_width = (windowWidth - 1200) / 2;
						if(sub_list_width > offsetRight) {
							$(this).children(".down-nav").children(".sub-list").css({
								"left": offsetLeft - sub_list_width / 2 + liWidth,
								"right": side_width,
								"width": "auto"
							});
						}
						if(side_width > offsetLeft - sub_list_width / 2 + liWidth) {
							$(this).children(".down-nav").children(".sub-list").css({
								"left": side_width,
								"right": side_width,
								"width": "auto"
							});
						}
					}, function() {
						$(this).removeClass("this-hover");
					});
				};
				get_width();
				$(window).resize(function() {
					get_width();
				});
				$('.st-slideTab').switchTab();
				//首页焦点图
				$('.st-focus-banners').slide({
					mainCell: ".banners ul",
					titCell: ".focus li",
					effect: "fold",
					interTime: 5000,
					delayTime: 1000,
					autoPlay: true,
					switchLoad: "original-src"
				});
			})
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-style_switch.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/res/js/jquery.colorpicker.js" ></script>
	</body>

</html>