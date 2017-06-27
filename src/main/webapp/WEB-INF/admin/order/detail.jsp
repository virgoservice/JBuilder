<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>JBuilder| 系统首页</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.6 -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/font-awesome-4.7.0/css/font-awesome.min.css" />
		<!-- Ionicons -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/ionicons-2.0.1/css/ionicons.min.css" />
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  		<![endif]-->
	</head>
	<body>
		<section>
			<div class="box-header">
				<h4>订单信息</h4>
			</div>
			<div class="box-body">
				<table class="table table-bordered table-responsive dataTable">
					<tr>
						<td>订单编号：</td><td>${order.orderCode }</td><td>订单类型:</td><td>门票订单</td>
					</tr>
					<tr>
						<td>联系人：</td><td>${order.linkName }</td><td>联系电话:</td><td>${order.linkMobile }</td>
					</tr>
					<tr>
						<td>开始日期：</td><td>2017-06-26 00:16:09</td><td>结束日期:</td><td>2017-12-31 23:59:59</td>
					</tr>
					<tr>
						<td>支付方法：</td><td>支付宝</td><td>商品名称:</td><td>${ticket.name }</td>
					</tr>
					<tr>
						<td>景区商品名称：</td><td>${scenic.name }</td><td>身份证号码:</td><td></td>
					</tr>
					<tr>
						<td>游玩日期：</td><td><fmt:formatDate value="${child.occDate }" type="date" /></td><td>数量:</td><td>${child.quantity }</td>
					</tr>
					<tr>
						<td>单价：</td><td>${child.price }</td><td>总价:</td><td>${child.totalPrice }</td>
					</tr>
					<tr>
						<td>费用：</td><td>0</td><td>商品编码:</td><td>${ticket.goodsCode }</td>
					</tr>
					<tr>
						<td>支付状态：</td><td>						<c:if test="${order.payStatus=='1'}">
																	已支付
																</c:if> <c:if test="${order.payStatus=='0'}">
																	未支付
																</c:if></td>
					<td>星期:</td>
					<td>${ticket.weekDate}</td>
				</tr>
					<tr>
						<td>创建人：</td><td>${user.username}</td><td>创建时间:</td><td><fmt:formatDate value="${order.createTime}" type="both" /></td>
					</tr>
				</table>
			</div>
		</section>
		<section>
			<div class="box-header">
				<h4>检票信息</h4>
			</div>
			<div class="box-body">
				<table class="table table-bordered table-responsive dataTable">
					<tr>
						<td>已检票量：</td><td>${order.checkNum }</td><td>需检票量:</td><td>${order.total }</td>
					</tr>
					<tr>
						<td>检票状态：</td><td>						<c:if test="${child.checkStatus==0}">
																	未检票
																</c:if>	
																<c:if test="${child.checkStatus==1}">
																	检票中
																</c:if>	
																<c:if test="${child.checkStatus==2}">
																	已检票
																</c:if>	</td><td>检票时间:</td><td></td>
					</tr>
				</table>
			</div>
		</section>
		<section>
			<div class="box-header">
				<h4>退票信息</h4>
			</div>
			<div class="box-body">
				<table class="table table-bordered table-responsive dataTable">
					<tr>
						<td>退票数量：</td><td>${order.returnNum}</td><td>退票金额:</td><td>${order.returnNum*ticket.price}</td>
					</tr>
				</table>
			</div>
		</section>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<!-- AdminLTE App -->
	</body>

</html>