<?xml version="1.0" encoding="UTF-8" ?>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<title>JBuilder|控制台</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
		<!-- Bootstrap 3.3.6 -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css"/>
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
		<!-- Ionicons -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/dist/css/AdminLTE.min.css" />
		<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/dist/css/skins/_all-skins.min.css" />
		<!-- iCheck -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/iCheck/flat/blue.css" />
		<!-- jvectormap -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css" />
		<!-- Date Picker -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/datepicker/datepicker3.css" />
		<!-- Daterange picker -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/daterangepicker/daterangepicker.css" />
		<!-- bootstrap wysihtml5 - text editor -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" />

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>

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
									<img src="<%=request.getContextPath() %>/resources/admin/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
									<span class="hidden-xs">谭朝红，&nbsp;你好！</span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
										<img src="<%=request.getContextPath() %>/resources/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
										<p>谭朝红 - 超级管理员</p>
									</li>
									<li class="user-footer">
										<div class="pull-left">
											<a href="<%=request.getContextPath() %>/admin/user/profile" class="btn btn-default btn-flat">资料</a>
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
			<aside class="main-sidebar">
				<section class="sidebar">
					<ul class="sidebar-menu">
						<li class="active treeview">
							<a href="index.html">
								<i class="fa fa-dashboard"></i> <span>JBuilder 面板</span>
							</a>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-laptop"></i>
								<span>内容</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="<%=request.getContextPath() %>/admin/article/list"><i class="fa fa-align-justify"></i>所有文章</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/article/add"><i class="fa fa-pencil-square-o"></i> 撰写文章</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/category/list"><i class="fa fa-map-signs"></i> 所有栏目</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/category/add"><i class="fa fa-safari"></i> 新建栏目</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/banner/list"><i class="fa fa-object-group"></i> 所有轮播</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/banner/list"><i class="fa fa-object-ungroup"></i> 新建轮播</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/link/list"><i class="fa fa-share-alt-square"></i> 所有友链</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/link/add"><i class="fa fa-share-alt"></i> 新建友链</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-television"></i>
								<span>页面</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="pages/UI/general.html"><i class="fa  fa-list-ol"></i> 所有页面</a>
								</li>
								<li>
									<a href="pages/UI/icons.html"><i class="fa  fa-file-text"></i> 网站首页</a>
								</li>
								<li>
									<a href="category_list.html"><i class="fa fa-list"></i> 栏目页面</a>
								</li>
								<li>
									<a href="pages/UI/sliders.html"><i class="fa fa-th-large"></i> 文章页面</a>
								</li>
								<li>
									<a href="pages/UI/timeline.html"><i class="fa  fa-search"></i> 搜索页面</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-file-photo-o"></i>
								<span>附件</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="<%=request.getContextPath() %>/admin/attachment/list"><i class="fa fa-copy"></i> 所有附件</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/attachment/add"><i class="fa  fa-upload"></i> 上传附件</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa  fa-user"></i>
								<span>用户</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="user_list.html"><i class="fa fa-users"></i> 所有用户</a>
								</li>
								<li>
									<a href="user_add.html"><i class="fa fa-user-plus"></i> 添加用户</a>
								</li>
								<li>
									<a href="user_profilet.html"><i class="fa fa-clipboard"></i> 我的资料</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-file-code-o"></i>
								<span>模板</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="template_list.html"><i class="fa fa-clone"></i> 所有模板</a>
								</li>
								<li>
									<a href="template_upload.html"><i class="fa  fa-hdd-o"></i> 安装模板</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-puzzle-piece"></i>
								<span>插件</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="<%=request.getContextPath() %>/admin/plugin/list"><i class="fa fa-dropbox"></i> 所有插件</a>
								</li>
								<li>
									<a href="<%=request.getContextPath() %>/admin/plugin/add"><i class="fa  fa-retweet"></i> 安装插件</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-gears"></i>
								<span>设置</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="site_config.html"><i class="fa fa-gear"></i> 常规设置</a>
								</li>
								<li>
									<a href="pages/UI/icons.html"><i class="fa  fa-heartbeat"></i> 所有角色</a>
								</li>
								<li>
									<a href="pages/UI/buttons.html"><i class="fa fa-heart"></i> 新添角色</a>
								</li>
								<li>
									<a href="pages/UI/timeline.html"><i class="fa fa-gavel"></i> SEO设置</a>
								</li>
							</ul>
						</li>
					</ul>
				</section>
				<!-- /.sidebar -->
			</aside>

			<!-- content detail -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1> 附件信息</h1>
				</section>

				<section class="content">
					<!-- search -->
					<div class="row" style="padding: 0 15px 10px 15px;">
						<form class="form-horizontal col-sm-3" method="post" style="float: right;" action="#">
							<div class="input-group input-group-sm">
								<input id="#" class="form-control" type="search"  value="" name="k" placeholder="请输入关键词"/>
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-flat">搜索</button>
								</span>
							</div>
						</form>
					</div>

					<!-- category filter -->
					<div class="row" style="padding: 0 15px 10px 15px;">
						<div style="float: left;">
							<select class="form-control input-sm">
								<option value="">全部分类</option>
							</select>
						</div>
						<div style="float: left;">
							<select class="form-control input-sm">
								<option value="">全部专题</option>
							</select>
						</div>
						<div style="float: left;">
							<form action="#" method="post">
								<input type="hidden" name="cid"/>
								<input type="hidden" name="keyword"/>
								<input type="submit"  class="btn btn-block btn-sm btn-default" value="筛选"/>
							</form>
						</div>
					</div>

					<!-- main body -->
					<div class="row" style="padding: 0 15px 10px 15px;">
						<div class="box box-solid">
							<div class="box-body">
								<ul class="list-unstyled col-xs-12">
									<c:forEach items="${attachmentList }"  begin="0" end="5" var="attachment">
					 				<li class="col-xs-2 margin-bottom">
					 					<a href="javascript:void(0);" onclick="openlayer(${attachment.id })">
					 						<img src="${attachment.url }" title="${attachment.title }" alt="${attachment.title }" class="img-thumbnail img-responsive"/>
					 					</a>
					 				</li>
						 			</c:forEach>
								</ul>

								<ul class="list-unstyled col-xs-12">
									<c:forEach items="${attachmentList }"  begin="6" end="11" var="attachment">
					 				<li class="col-xs-2 margin-bottom">
					 					<a href="javascript:void(0);" onclick="openlayer(${attachment.id })">
					 						<img src="${attachment.url }" title="${attachment.title }" alt="${attachment.title }" class="img-thumbnail img-responsive"/>
					 					</a>
					 				</li>
						 			</c:forEach>
								</ul>

								<ul class="list-unstyled col-xs-12">
									<c:forEach items="${attachmentList }"  begin="12" end="17" var="attachment">
					 				<li class="col-xs-2 margin-bottom">
					 					<a href="javascript:void(0);" onclick="openlayer(${attachment.id })">
					 						<img src="${attachment.url }" title="${attachment.title }" alt="${attachment.title }" class="img-thumbnail img-responsive"/>
					 					</a>
					 				</li>
						 			</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<!-- pager tag -->
					<div class="row">
						<div class="col-sm-5">
						</div>
						<div class="col-sm-7">
							<div class="dataTables_paginate paging_simple_numbers pull-right">
								<ul class="pagination">
									<li class="paginate_button previous disabled">
										<a href="#">上一页</a>
									</li>
									<li class="paginate_button active">
										<a href="#">1</a>
									</li>
									<li class="paginate_button">
										<a href="#">2</a>
									</li>
									<li class="paginate_button">
										<a href="#">3</a>
									</li>
									<li class="paginate_button">
										<a href="#">4</a>
									</li>
									<li class="paginate_button next">
										<a href="#">下一页</a>
									</li>
								</ul>
							</div>
						</div>
					</div><!-- pager tag end -->

				</section>
			</div>

			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					<b>Version</b> 2.4.0
				</div>
				<strong>Copyright &copy; 2017-2020 <a href="javascript:;">Ramostear Studio</a>.</strong> All rights reserved.
			</footer>
			<div class="control-sidebar-bg"></div>

		</div>

		<!-- jQuery 2.2.3 -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button);
		</script>
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=request.getContextPath() %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<!-- Morris.js charts -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
		<!-- Sparkline -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/sparkline/jquery.sparkline.min.js"></script>
		<!-- jvectormap -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<!-- jQuery Knob Chart -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/knob/jquery.knob.js"></script>
		<!-- daterangepicker -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
		<!-- datepicker -->
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=request.getContextPath() %>/resources/admin/dist/js/app.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js"></script>
		<script type="text/javascript">
			var reload = false;
			function openlayer(id){
				reload = false;
				layer.open({
					type:2,
					title:'附件详情',
					shadeClose:true,
					shade:0.85,
					area:['70%','80%'],
					content:'./edit?id=' + id,
					end:function(){
						if(reload){
							location.reload();
						}
					}
				});
			}
		</script>
	</body>
</html>
