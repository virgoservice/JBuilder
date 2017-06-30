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
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/editormd/css/editormd.css" />
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/h5fileupload/css/fileinput.css"/>
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
							<li class="active">
								<a href="<%=path %>/admin/ticket/index"><i class="fa fa-list-ul"></i>景区产品管理</a>
							</li>
							<li>
								<a href="<%=path %>/admin/group/index"><i class="fa fa-list-ul"></i> 产品组管理</a>
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
			<section class="content-header">
				<h1>添加景点信息</h1>
			</section>

			<section class="content" style="z-index: 9999;">
				<ul class="nav nav-tabs">
					<li>
						<a href="#tab_info" data-toggle="tab" aria-expanded="true" style="font-size:1.2em">票务信息</a>
					</li>
					<li>
						<a href="#tab_image" data-toggle="tab" aria-expanded="false" style="font-size:1.2em">景点图片</a>
					</li>
					<li  class="active">
						<a href="#tab_intro" data-toggle="tab" aria-expanded="false" style="font-size:1.2em">景点介绍</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane form-horizontal" id="tab_info">
						<div class="box box-solid">
							<!--  -->
						</div>
					</div>
					<div class="tab-pane" id="tab_image">
						<div class="box box-solid box-body">
						<!--  -->
						</div>
					</div>
					<div class="tab-pane active" id="tab_intro">
						<div class="box box-solid">
						<form action="./addIntro" method="post" id="ckeditor-form" >
							<input type="hidden" id="ticketId" name="ticketId" value="${ticketId }" />
							<div class="box-body">
							<textarea id="TextArea1" name="content" class="ckeditor"></textarea>
							</div>
							<div class="box-footer">
								<div class="row">
									<div class="col-sm-10">
									</div>
									<div class="col-sm-2">
										<button type="submit" class="btn btn-primary btn-default margin">确定</button>
									</div>
								</div>
							</div>
						</form>
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

<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/h5fileupload/js/fileinput.min.js" ></script>
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script src="<%=path %>/resources/admin/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	$(function(){
		CKEDITOR.replace("TextArea1", { toolbar:'Full', height:500 });
        //示例2：工具栏为自定义类型
/*         CKEDITOR.replace( 'editor1',
        {
			toolbar :
			[
			   //加粗     斜体，     下划线      穿过线      下标字        上标字
			   ['Bold','Italic','Underline','Strike','Subscript','Superscript'],
			   // 数字列表          实体列表            减小缩进    增大缩进
			   ['NumberedList','BulletedList','-','Outdent','Indent'],
			   //左对 齐             居中对齐          右对齐          两端对齐
			   ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			   //超链接  取消超链接 锚点
			   ['Link','Unlink','Anchor'],
			   //图片    flash    表格       水平线            表情       特殊字符        分页符
			   ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
			   '/',
			   // 样式       格式      字体    字体大小
			   ['Styles','Format','Font','FontSize'],
			   //文本颜色     背景颜色
			   ['TextColor','BGColor'],
			   //全屏           显示区块
			   ['Maximize', 'ShowBlocks','-']
			]
	      }); */
	});
</script>
<script type="text/javascript">
	getExtraData = function() {
    	return $("#ticketId").val();
	};
	$(function(){
		$("#file").fileinput({
			 language: 'zh',
	         uploadUrl: '<%=path%>/admin/ticket/addImage',
	         allowedFileExtensions : ['jpg', 'png','bmp','gif'],
	         minFileCount:1,
	         maxFileCount:10,
             uploadExtraData: function(previewId, index) {   //额外参数的关键点
                 var obj = {ticketId:"1", useof:"1"};
                 console.log(obj);
                 return obj;
             }
		}).on("fileuploaded",function(even,data){
			var res = $.parseJSON(data.response);
		});
	});
</script>
</body>
</html>
