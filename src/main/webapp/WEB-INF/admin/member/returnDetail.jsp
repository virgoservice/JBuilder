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
		<title>退票状态查询</title>
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
		
		<div class="big">
			<div class="wm-1200">
				<div class="st-guide">
					<a href="/">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;会员中心 </div>
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
					<div class="user-order-box">
						<div class="user-content-wrap fr" style="overflow:hidden">
							<div class="os-term">
								<div class="os-tit">退票信息</div>
								<div class="os-block">
									<div class="order-show-info">
										<table width="100%" border="0" class="order-show-table">
											<tbody>
												<tr>
													<th width="30%" height="40" scope="col"><span class="l-con">产品名称</span></th>
													<th width="15%" scope="col">申请日期</th>
													<th width="15%" scope="col">退款金额</th>
													<th width="10%" scope="col">退票数量</th>
													<th width="15%" scope="col">审核状态</th>
													<th width="15%" scope="col">审核结果</th>
												</tr>
												<c:forEach items="${cancel}" var="item">  
													<tr>
														<td height="40"><span class="l-con">${child.goodsName }</span></td>
														<td><fmt:formatDate value="${item.cancelDate }" type="both" /></td>
														<td>${item.totalPrice }</td>
														<td>${item.num }</td>
														<td><span class="jg"><i class="currency_sy"></i>
														<c:if test="${item.status==0 }">
															待审核
														</c:if>
														<c:if test="${item.status==1 }">
															已审核
														</c:if>
														
														</span>
														</td><td>
														<c:if test="${item.status==1 }">
														<c:if test="${item.result==0 }">
															审核未通过<br/>如有疑问请联系客服
														</c:if>
														<c:if test="${item.result==1 }">
															审核通过<br/>已退款
														</c:if>
														</c:if>
														</td>
														
														
													</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
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

		
	</body>

</html>