<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>景区管理| 贵州古城</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/font-awesome-4.7.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/ionicons-2.0.1/css/ionicons.min.css" />
	<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/datepicker/datepicker3.css">
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/daterangepicker/daterangepicker.css">
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->
</head>
	<style type="text/css">
	.table > thead > tr > td {
	  vertical-align: middle;
	}
	.table > tbody > tr > td {
	  vertical-align: middle;
	}
	</style>
	
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">

			<header class="main-header">
				<a href="#" class="logo">
					<span class="logo-mini"><b>JBC</b></span>
					<span class="logo-lg"><b>JBuilder</b></span>
				</a>
				<nav class="navbar navbar-static-top">
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
						<span class="sr-only">Toggle navigation</span>
					</a>
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<img src="<%=path %>/resources/admin/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
									<span class="hidden-xs">谭朝红，&nbsp;你好！</span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
										<img src="<%=path %>/resources/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
										<p>谭朝红 - 超级管理员</p>
									</li>
									<li class="user-footer">
										<div class="pull-left">
											<a href="user_profilet.html" class="btn btn-default btn-flat">资料</a>
										</div>
										<div class="pull-right">
											<a href="#" class="btn btn-default btn-flat">退出</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</header>
			<aside class="main-sidebar ">
				<section class="sidebar">
					<ul class="sidebar-menu">
						<li class=" treeview">
							<a href="index.html">
								<i class="fa fa-dashboard"></i> <span>JBuilder 面板</span>
							</a>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-user"></i>
								<span>个人信息</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="article_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 到付订单列表</a>
								</li>
							</ul>
						</li>
						<li class="treeview active">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>产品管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="<%=path %>/admin/ticket/index"><i class="fa fa-list-ul"></i>景区产品管理</a>
								</li>
								<li class="active">
									<a href="<%=path %>/admin/ticketGroup/index"><i class="fa fa-list-ul"></i> 产品组管理</a>
								</li>
								<li>
									<a href="<%=path %>/admin/scenic/index"><i class="fa fa-list-ul"></i>景区管理</a>
								</li>
							</ul>
						</li>
						<li class="treeview ">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>订单管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="article_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 到付订单列表</a>
								</li>
							</ul>
						</li>
						<li class="treeview ">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>游客管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="article_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 到付订单列表</a>
								</li>
							</ul>
						</li>
						<li class="treeview ">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>角色管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="article_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 到付订单列表</a>
								</li>
							</ul>
						</li>
						<li class="treeview ">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>用户管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="article_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 到付订单列表</a>
								</li>
							</ul>
						</li>
					</ul>
				</section>
				<!-- /.sidebar -->
			</aside>

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<section class="content-header"  style="margin-bottom: 0;">
					<div class="box box-solid">
						<div class="box-header with-border">
							<h3 class="box-title text-bold">我的组列表</h3>
						</div>
						<div class="box-body" style="padding: 10px 0;">
							<form action="" method="post" id="" class="form-horizontal form-inline">
								<label class="control-label" style="margin-left: 15px;">名称:</label>
								<input id="" class="form-control input-sm" style="border-radius: 4px;" />
								<button type="button" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">查询</button>
							</form>
						</div>
					</div>
				</section>

				<section class="content">
					<!--  -->
					
					<div class="box box-solid">
						<div class="box-body" style="padding: 10px 0;">
							<table class="table table-responsive">
								<thead>
									<tr>
										<td colspan="5">
											<input type="checkbox"/>全选
											<button class="btn btn-primary btn-sm" style="margin-left:30px;">批量删除</button>
											<button class="btn btn-primary btn-sm" style="margin-left:15px;">新增分组</button>	
										</td>
									</tr>
									<tr>
										<td></td>
										<td>NO.</td>
										<td>名称</td>
										<td>描述</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pageDto.items}" var="item">
									<tr>
										<td><input type="checkbox" value="${item.id }"/></td>
										<td>${item.id }</td>
										<td>${item.name }</td>
										<td>${item.description }</td>
										<td>
											<a href="javascript:;" onclick="edit(${item.id});">修改</a>
											<a href="javascript:;" onclick="del(${item.id});">删除</a>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="box-footer">
							<div class="row">
								<div class="col-sm-5">
								</div>
								<div class="col-sm-7">
									${pageDto.pageStr}
								</div>
							</div>
						</div>
					</div>	
				</section>

			</div>
			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					<b>技术支持</b> <a href="#">贵州桃李云科技有限公司</a>
				</div>
				<strong>Copyright &copy; 2017-2020 <a href="http://www.gogc.cn">贵州古城文化旅游开发股份有限公司</a>.</strong> All rights reserved.
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>

 		<input type="hidden" value="<%=path %>" id="ctx"/>
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script type="text/javascript">
function query(pageNo, pageSize){
	$.ajax({
		url:"<%=path %>/admin/ticketGroup/list",
		type:"GET",
		data:{
			pageNo:pageNo,
			pageSize:pageSize,
		},
		cache:false,
		success:function(html){
			$("#goods-list").html(html);
		},
		error:function(){
		}
	});		
}
</script>
</body>

</html>