<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>JBuilder 2 | 我的资料</title>
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/editormd/css/editormd.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css"/>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.6 -->
	<link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
      folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/iCheck/flat/blue.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
	<!-- bootstrap wysihtml5 - text editor -->
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

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
					<span class="logo-mini"><b>J</b>BC</span>
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
									<img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
									<span class="hidden-xs">谭朝红，&nbsp;你好！</span>
								</a>
								<ul class="dropdown-menu">
									<li class="user-header">
										<img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
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
			<aside class="main-sidebar">
				<section class="sidebar">
					<ul class="sidebar-menu">
						<li class="treeview">
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
									<a href="article_list.html"><i class="fa fa-align-justify"></i>所有文章</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-pencil-square-o"></i> 撰写文章</a>
								</li>
								<li>
									<a href="category_list.html"><i class="fa fa-map-signs"></i> 所有栏目</a>
								</li>
								<li>
									<a href="pages/UI/sliders.html"><i class="fa fa-safari"></i> 新建栏目</a>
								</li>
								<li>
									<a href="pages/UI/timeline.html"><i class="fa fa-object-group"></i> 所有轮播</a>
								</li>
								<li>
									<a href="pages/UI/modals.html"><i class="fa fa-object-ungroup"></i> 新建轮播</a>
								</li>
								<li>
									<a href="pages/UI/timeline.html"><i class="fa fa-share-alt-square"></i> 所有友链</a>
								</li>
								<li>
									<a href="pages/UI/modals.html"><i class="fa fa-share-alt"></i> 新建友链</a>
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
									<a href="pages/UI/buttons.html"><i class="fa fa-list"></i> 栏目页面</a>
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
									<a href="attachment_list.html"><i class="fa fa-copy"></i> 所有附件</a>
								</li>
								<li>
									<a href="attachment_upload.html"><i class="fa  fa-upload"></i> 上传附件</a>
								</li>
							</ul>
						</li>
						<li class="active treeview">
							<a href="#">
								<i class="fa  fa-user"></i>
								<span>用户</span>
								<span class="pull-right-container">
					              	<i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="<%=path %>/admin/user/index"><i class="fa fa-users"></i> 所有用户</a>
								</li>
								<li>
									<a href="<%=path %>/admin/user/add"><i class="fa fa-user-plus"></i> 添加用户</a>
								</li>
								<li class="active">
									<a href="<%=path %>/admin/user/profile"><i class="fa fa-clipboard"></i> 我的资料</a>
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
									<a href="pages/UI/general.html"><i class="fa fa-clone"></i> 所有模板</a>
								</li>
								<li>
									<a href="pages/UI/icons.html"><i class="fa  fa-hdd-o"></i> 安装模板</a>
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
									<a href="pages/UI/general.html"><i class="fa fa-dropbox"></i> 所有插件</a>
								</li>
								<li>
									<a href="pages/UI/icons.html"><i class="fa  fa-retweet"></i> 安装插件</a>
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
									<a href="<%=path %>/admin/site/index"><i class="fa fa-gear"></i> 常规设置</a>
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

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>用户个人信息</h1>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-3">
							<div class="box box-solid" style="padding: 5px;">
								<div class="box-header with-border">
									<h3 class="box-title">简介</h3>
									<div class="box-tools">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body">
									<img src="<%=path %>/resources/admin/dist/img/user2-160x160.jpg" class="profile-user-img img-responsive img-circle" alt="谭朝红"/>
									<h3 class="profile-username text-center">谭朝红</h3>
									<p class="text-muted text-center">Administrator</p>
									<ul class="list-group list-group-unbordered">
										<li class="list-group-item">
											<b>发布文章</b>
											<a class="pull-right">103</a>
										</li>
										<li class="list-group-item">
											<b>文章草稿</b>
											<a class="pull-right">15</a>
										</li>
										<li class="list-group-item">
											<b>附件总数</b>
											<a class="pull-right">234</a>
										</li>
									</ul>
									<a href="user_edit.html" class="btn btn-primary btn-block"><b>修改信息</b></a>
								</div>
							</div>
							<div class="box box-solid">
								<div class="box-header with-border">
									<h3 class="box-title">详细信息</h3>
									<div class="box-tools">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body">
									<strong>
										<i class="fa fa-user">用户名</i>
									</strong>
									<p class="text-muted">ramostear</p>
									<hr />
									<strong>
										<i class="fa fa-user-secret">姓名</i>
									</strong>
									<p class="text-muted">谭朝红</p>
									<hr />
									<strong>
										<i class="fa fa-envelope-o">电子邮箱</i>
									</strong>
									<p class="text-muted">ramostear@seele.com</p>
									<hr />
									<strong>
										<i class="fa fa-qq">QQ账号</i>
									</strong>
									<p class="text-muted">845275633</p>
									<hr />
									<strong>
										<i class="fa fa-weibo">微博账号</i>
									</strong>
									<p class="text-muted">ramostear@sina.com</p>
									<hr />
									<strong>
										<i class="fa fa-user">角色信息</i>
									</strong>
									<p class="text-muted">
										<span class="label label-danger">超级管理员</span>
										<span class="label label-success">站点管理员</span>
										<span class="label label-info">文章编辑员</span>
										<span class="label label-primary">文章审核员</span>
									</p>
									<hr />
									<strong>
										<i class="fa fa-file-archive-o">个性签名</i>
									</strong>
									<p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="row">
								<div class="nav-tabs-custom">
									<ul class="nav nav-tabs">
										<li class="active">
											<a href="#publish" data-toggle="tab">已发布</a>
										</li>
										<li>
											<a href="#authing" data-toggle="tab">审核中</a>
										</li>
										<li>
											<a href="#caogao" data-toggle="tab">草稿箱</a>
										</li>
									</ul>
									<div class="tab-content">
										<div class="active tab-pane" id="publish">
											<table class="table">
												<thead>
													<tr>
														<td style="width: 10px;">#</td>
														<td>标题</td>
														<td>栏目</td>
														<td>审核时间</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix">
												<ul class="pagination pagination-sm no-margin pull-right">
													<li>
														<a href="#">&laquo;</a>
													</li>
													<li>
														<a href="#" class="active">1</a>
													</li>
													<li>
														<a href="#">2</a>
													</li>
													<li>
														<a href="#">3</a>
													</li>
													<li>
														<a href="#">&raquo;</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="tab-pane" id="authing">
											<table class="table">
												<thead>
													<tr>
														<td style="width: 10px;">#</td>
														<td>标题</td>
														<td>栏目</td>
														<td>提交时间</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix">
												<ul class="pagination pagination-sm no-margin pull-right">
													<li>
														<a href="#">&laquo;</a>
													</li>
													<li>
														<a href="#" class="active">1</a>
													</li>
													<li>
														<a href="#">2</a>
													</li>
													<li>
														<a href="#">3</a>
													</li>
													<li>
														<a href="#">&raquo;</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="tab-pane" id="caogao">
											<table class="table">
												<thead>
													<tr>
														<td style="width: 10px;">#</td>
														<td>标题</td>
														<td>栏目</td>
														<td>创建时间</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
													<tr>
														<td>1</td>
														<td>spring boot in action</td>
														<td>spring boot</td>
														<td>2017-04-28</td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix">
												<ul class="pagination pagination-sm no-margin pull-right">
													<li>
														<a href="#">&laquo;</a>
													</li>
													<li>
														<a href="#" class="active">1</a>
													</li>
													<li>
														<a href="#">2</a>
													</li>
													<li>
														<a href="#">3</a>
													</li>
													<li>
														<a href="#">&raquo;</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="box box-solid">
									<div class="box-header with-border">
									<h3 class="box-title">已传附件</h3>
									<div class="box-tools">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
									<div class="box-body">
										<ul class="list-unstyled col-xs-12">
											<div class="row">
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
											</div>
											<div class="row">
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
											</div>
											<div class="row">
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
								 						<img src="<%=path %>/resources/admin/dist/img/photo2.png" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
								 				<li class="col-xs-2 margin-bottom">
								 					<a href="javascript:void(0);" onclick="openlayer()">
									 					<img src="<%=path %>/resources/admin/dist/img/photo3.jpg" title="spring3-mvc注解教程.ppt" alt="spring3-mvc注解教程.ppt" class="img-thumbnail img-responsive"/>
								 					</a>
								 				</li>
											</div>
							 			</ul>
									</div>
									<div class="row">
										<div class="col-sm-4">
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
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					<b>Version</b> 2.4.0
				</div>
				<strong>Copyright &copy; 2017-2020 <a href="http://www.ramostear.com">Ramostear Studio</a>.</strong> All rights reserved.
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery.min.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script type="text/javascript">
			var reload = false;
			function openlayer(){
				reload = false;
				layer.open({
					type:2,
					title:'附件详情',
					shadeClose:true,
					shade:0.85,
					area:['70%','80%'],
					content:'attachment_detail.html',
					end:function(){
						if(reload){
							location.reload();
						}
					}
				});
			}
		</script>
		<!-- jQuery UI 1.11.4 -->
		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button);
		</script>
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<!-- Morris.js charts -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
		<!-- jvectormap -->
		<script src="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<!-- FastClick -->
		<!-- AdminLTE App -->
		<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
		
	</body>
</html>
