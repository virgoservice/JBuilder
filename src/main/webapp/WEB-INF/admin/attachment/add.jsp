<?xml version="1.0" encoding="UTF-8" ?>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
		<title>JBuilder|控制台</title>
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
		
		<!--  -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/admin/plugins/h5fileupload/css/fileinput.css"/>
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
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1> 上传附件</h1>
				</section>
				<section class="content">
					<form action="#" method="post" class="form-horizontal" style="padding: 0 15px 0 15px;" id="article-form">
			 			<div class="form-group">
			 				<input type="file" id="file" name="file" multiple="multiple"/>
			 			</div>
			 			<p class="text-center" style="color:#808080;font-size: 16px;">最大上传文件大小为100MB</p>
			 		</form>
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

		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/admin/plugins/h5fileupload/js/fileinput.js" ></script>
		<script type="text/javascript">
			$(function(){
				$("#file").fileinput({
					 language: 'zh',
			         uploadUrl: '#',
			         allowedFileExtensions : ['jpg', 'png','bmp','gif','pdf','doc','zip','rar'],
			         minFileCount:1,
			         maxFileCount:1
				}).on("fileuploaded",function(even,data){
					var res = $.parseJSON(data.response);
				});
			});
		</script>
	</body>
</html>