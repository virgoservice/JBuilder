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
		<title>景区搜索</title>
		<meta name="description" content="九寨沟旅游景点介绍，包含最详细的九寨沟的人文历史、景观建筑、风景图片等景点信息详细介绍，拥有最新九寨沟景点选择推荐，景点点评等资讯信息。" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=plugins-spot-public-css-scenic.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-delayLoading.min.js" ></script>
	</head>

	<body id="body">
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css"  rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
		
		<jsp:include page="../index/header.jsp" />
		<!--header-->
		
		<div class="big">
			<div class="wm-1200">
				<div class="st-guide">
					<a href="<%=path %>/index"  title="首页">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
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