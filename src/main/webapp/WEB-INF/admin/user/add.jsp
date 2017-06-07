<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>JBuilder 2 | 添加用户</title>
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
									<img src="<%=path %>/resources/admin/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
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
								<li class="active">
									<a href="<%=path %>/admin/user/add"><i class="fa fa-user-plus"></i> 添加用户</a>
								</li>
								<li>
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

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>用户资料</h1>
				</section>
				<section class="content">
					<form id="form" method="post">
						<div class="row">
							<div class="col-md-9">
								<div class="box box-solid">
									<div class="box-body">
										<div class="form-horizontal">
											<h4>用户姓名</h4>
											<hr />
											<div class="form-group">
												<label for="username" class="col-md-2 control-label">姓名（必填）</label>
												<div class="col-md-9">
													<input type="text" class="form-control" name="username" id="username"  value=""/>
												</div>
											</div>
											<div class="form-group">
												<label for="nickname" class="col-sm-2 control-label">昵称（必填）</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="nickname" id="nickname"  value=""/>
												</div>
											</div>
										</div>
										<div class="form-horizontal">
											<h4>联系信息</h4>
											<hr />
											<div class="form-group">
												<label for="email" class="col-md-2 control-label">电子邮件（必填）</label>
												<div class="col-md-9">
													<input type="email" class="form-control" name="email" id="email"  value=""/>
												</div>
											</div>
											<div class="form-group">
												<label for="phone" class="col-sm-2 control-label">联系电话</label>
												<div class="col-sm-9">
													<input type="tel" class="form-control" name="phone" id="phone"  value=""/>
												</div>
											</div>
											<div class="form-group">
												<label for="qq" class="col-sm-2 control-label">QQ号码</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="qq" id="qq"  value=""/>
												</div>
											</div>
											<div class="form-group">
												<label for="weibo" class="col-sm-2 control-label">微博号码</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="weibo" id="weibo"  value=""/>
												</div>
											</div>
										</div>
										<div class="form-horizontal">
											<h4>用户密码</h4>
											<hr />
											<div class="form-group">
												<label for="password" class="col-md-2 control-label">密码（必填）</label>
												<div class="col-md-9">
													<input type="password" class="form-control" name="password" id="password"  value=""/>
												</div>
											</div>
										</div>
										<div class="form-horizontal">
											<h4>个人说明</h4>
											<hr />
											<div class="form-group">
												<label for="signature" class="col-md-2 control-label">个性签名</label>
												<div class="col-md-9">
													<textarea rows="4" id="signature" name="signature"  id="signature" class="form-control" placeholder="分享你的一些心情或者公开信息"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box box-solid" style="display: block;padding: 10px 15px; position: relative;">
									<div class="box-body">
										<button type="button" class="btn btn-primary btn-sm " onclick="submitDo()">保存</button>
										<button type="button" class="btn btn-default btn-sm pull-right">重置</button>
									</div>
								</div>
								
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">角色</h3>
										<div class="box-tools">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body" style="padding: 10px 3px;">
										<c:forEach items="${roles}" var="role">
											<div class="col-sm-6">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="roleIds" value="${role.id }"/>${role.name}
													</label>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">头像</h3>
										<div class="box-tools">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body no-padding">
										<ul class="nav">
											<li class="">
												<div style="min-height: 100px;">
													<img src="<%=path %>/resources/admin/dist/img/avatar5.png" id="thumbnail" class="img-responsive img-circle center-block"/>
													<input type="hidden" name="avatar" value="resources/admin/dist/img/avatar5.png" id="avatar" />
												</div>
												<div style="clear: both;"></div>
											</li>
											<li style="border-top: 1px solid #f4f4f4; display: block;padding: 10px 15px;position: relative;">
												<button type="button" class="btn btn-default btn-sm" onclick="selectThumbnail()">上传头像</button>
												<a href="javascript:;" style="display: inline;" onclick="removeThumbnail()">移除头像</a>
												<div style="clear: both;"></div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>							
					</form>
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
		<script src="<%=path %>/resources/admin/plugins/editormd/editormd.min.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script type="text/javascript">
			var testEditor;
            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "100%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "./plugins/editormd/lib/",
                    //theme : "dark",
                    //previewTheme : "dark",
                    //editorTheme : "pastel-on-dark",
                    //markdown : md,
                    codeFold : true,
                    //saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
                    //searchReplace : true,
                    //htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启    
                    emoji : true,
                    taskList : true,
                    tocm            : true,         // Using [TOCM]
                    tex : true,                   // 开启科学公式TeX语言支持，默认关闭
                    flowChart : true,             // 开启流程图支持，默认关闭
                    sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
                    imageUpload : true,
                    imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                    imageUploadURL : "./php/upload.php",
                });
            });
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
		<!-- Sparkline -->
		<script src="<%=path %>/resources/admin/plugins/sparkline/jquery.sparkline.min.js"></script>
		<!-- jvectormap -->
		<script src="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<!-- jQuery Knob Chart -->
		<script src="<%=path %>/resources/admin/plugins/knob/jquery.knob.js"></script>
		<!-- daterangepicker -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
		<script type="text/javascript">
		
		function submitDo(){
			var data = $("#form").serialize();
			data = decodeURIComponent(data,true);
			$.ajax({
				url:"<%=path%>/admin/user/add",
				type:'POST',
				data:data,
				contentType:"application/x-www-form-urlencoded",
				encoding:"utf-8",
				cache:false,
				success:function(html){
					layer.open({
						content:"用户已经成功创建！",	
						btn:['我知道了'],
						yes:function(index){
							layer.close(index);
							$(location).attr("href","<%=path%>/admin/user/index");
						},
					});
				}
			});
		}	
		
			function selectThumbnail(){
				layer.open({
					type:2,
					title:'上传头像',
					shadeClose:true,
					shade:0.8,
					area:['60%','60%'],
					content:'face_upload.html',
					end:function(){
						if(''!=data.url && null != data.url){
							$("#thumbnail").attr('src',data.url);
							$("#content_thumbnail").attr("value",data.url);
						}
					}
				});
			}
		</script>
	</body>
</html>