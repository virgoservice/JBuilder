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
		
		<jsp:include page="../index/header.jsp" />
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
											
											<c:if test="${item.weekDate != null && item.weekDate != '' }">
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
					
					
					<jsp:include page="../index/rightFrame.jsp" />
					<!--边栏模块-->
				</div>
			</div>
			<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css"  rel="stylesheet" />
			<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
			<jsp:include page="../index/footer.jsp" />
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
