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
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/timepicker/bootstrap-timepicker.min.css">
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
					<li class="active">
						<a href="#tab_info" data-toggle="tab" aria-expanded="true" style="font-size:1.2em">票务信息</a>
					</li>
					<li>
						<a href="#tab_image" data-toggle="tab" aria-expanded="false" style="font-size:1.2em">景点图片</a>
					</li>
					<li>
						<a href="#tab_intro" data-toggle="tab" aria-expanded="false" style="font-size:1.2em">景点介绍</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane form-horizontal active" id="tab_info">
						<div class="box box-solid">
							<form action="#" id="form" method="post">
							<input type="hidden" name="id" id="id" value="0" />
							<div class="box-body">
								<div class="row">
									<div class="col-md-9">
										<div class="form-group">
											<label for="_author" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>所属景区</span>
											</label>
											<div class="col-sm-9">
												<select  class="form-control" name="scenicId" id="scenicId">
												<option value="16428">高过河风景区</option>
												<option value="16731">舞阳河风景区</option>
												<option value="16735">大型舞蹈史诗《古韵镇远》</option>
												<option value="17403">舞阳河测试</option>
												<option value="17404">高过河测试</option>
												<option value="17405">古韵镇远测试</option>
												<option value="22175">铁溪风景区</option>
												<option value="22182">青龙洞</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="_author" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>groupId</span>
											</label>
											<div class="col-sm-9">
												<input type="text" id="groupId" name="groupId" value="3"  class="form-control"/>
											</div>
										</div>

										<div class="form-group">
											<label for="_name" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>门票名称</span>
											</label>
											<div class="col-sm-9">
												<input type="text" id="name" name="name" value=""  class="form-control" placeholder=""/>
											</div>
										</div>
										
								 		<div class="form-group">
											<label for="_nameEn" class="col-sm-3 control-label">英文名称</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="nameEn" id="nameEn"  value=""/>
											</div>
										</div>

										<div class="form-group">
											<label for="_price" class="col-sm-3 control-label">门票原价</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="price" id="price"  value="0.00"/>
											</div>
										</div>

										<div class="form-group">
											<label for="_shopPrice" class="col-sm-3 control-label">线上特价</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="shopPrice" id="shopPrice"  value="0.00"/>
											</div>
										</div>

										<div class="form-group">
											<label for="_stock" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>库存</span>
											</label>
											<div class="col-sm-9">
												<input type="text" id="stock" name="stock" value="0" />
											</div>
										</div>

										<div class="form-group">
											<label for="_goodsType" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>票类</span>
											</label>
											<div class="col-sm-9">
												<select id="goodsType" class="form-control" name="goodsType" >
													<option value="1" selected="selected">成人票</option>
													<option value="2">儿童票</option>
													<option value="3">特价票</option>
													<option value="4">测试票</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="_groupTickets" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>团体票</span>
											</label>
											<div class="col-sm-9">
												<input type="radio" id="groupTickets" name="groupTickets" checked="checked" value="0" />否
												<input type="radio" id="groupTickets" name="groupTickets" value="1" />是
											</div>
										</div>

										<div class="form-group">
											<label for="_beginDate" class="col-sm-3 control-label">生效日期</label>
											<div class="col-sm-3">
												<input class="datepicker" type="text" name="beginDate" id="beginDate"  value="2017-06-28"/>
											</div>
											<label for="_endDate" class="col-sm-2 control-label">截止日期</label>
											<div class="col-sm-3">
												<input class="datepicker" type="text" name="endDate" id="endDate"  value="2017-06-28"/>
											</div>
										</div>

										<div class="form-group">
											<label for="_checkTime" class="col-sm-3 control-label">开始检票时间</label>
											<div class="col-sm-3">
												<div class="input-group bootstrap-timepicker timepicker">
										            <input id="checkTime" name="checkTime" type="text" class="form-control input-small datepicker">
										        </div>
											</div>
											<label for="_stopCheckTime" class="col-sm-2 control-label">停止检票时间</label>
											<div class="col-sm-3">
										        <div class="input-group bootstrap-timepicker timepicker">
										            <input id="stopCheckTime" name="stopCheckTime" type="text" class="form-control input-small datepicker">
										        </div>
											</div>
										</div>

										<div class="form-group">
											<label for="_con" class="col-sm-3 control-label">有效星期</label>
											<div class="col-sm-9">
<!-- 												<input type="checkbox" id="weekDate" name="weekDate" value="1" checked="checked">每周一
												<input type="checkbox" id="weekDate" name="weekDate" value="2" checked="checked">每周二
												<input type="checkbox" id="weekDate" name="weekDate" value="3" checked="checked">每周三
												<input type="checkbox" id="weekDate" name="weekDate" value="4" checked="checked">每周四
												<input type="checkbox" id="weekDate" name="weekDate" value="5" checked="checked">每周五
												<input type="checkbox" id="weekDate" name="weekDate" value="6" checked="checked">每周六
												<input type="checkbox" id="weekDate" name="weekDate" value="7" checked="checked">每周日 -->
												<select id="weekDate" class="form-control" name="weekDate">
													<option value="1" selected="selected">每周一</option>
													<option value="2" >每周二</option>
													<option value="3" >每周三</option>
													<option value="4" >每周四</option>
													<option value="5" >每周五</option>
													<option value="6" >每周六</option>
													<option value="7" >每周日</option>
													
												</select>
												<!-- <div class="btn-group">
												<button type="button" class="multiselect dropdown-toggle btn" data-toggle="dropdown">
												每周日, 每周一, 每周二, 每周三, 每周四, 每周五, 每周六
												<b class="caret"></b>
												</button>
												<ul class="multiselect-container dropdown-menu">
													<li>
														<label class="checkbox"><input type="checkbox" value="1"> 每周日</label></a></li>
													<li>
														<label class="checkbox"><input type="checkbox" value="2"> 每周一</label></a></li>
													<li>
														<label class="checkbox"><input type="checkbox" value="3"> 每周二</label></a></li>
													<li>
														<label class="checkbox"><input type="checkbox" value="4"> 每周三</label></a></li>
													<li>
														<label class="checkbox"><input type="checkbox" value="5"> 每周四</label></a></li>
													<li>
														<label class="checkbox"><input type="checkbox" value="6"> 每周五</label></a></li>
													<li>
														<label class="checkbox"><input type="checkbox" value="7"> 每周六</label></a></li>
												</ul>
												</div>
												<button type="button" id="weekDay-toggle" class="btn btn-small">全不选</button> -->
											</div>
										</div>

										<div class="form-group">
											<label for="_status" class="col-sm-3 control-label">启用/禁用</label>
											<div class="col-sm-9">
												<input type="radio" name="status" id="status" value="0"/>禁用
												<input type="radio" name="status" id="status" checked="checked" value="1"/>启用
											</div>
										</div>

<!-- 										<div class="form-group">
											<label for="_description" class="col-sm-3 control-label">description</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="description" id="description"  value=""/>
											</div>
										</div> -->
										<!-- <div class="form-group">
											<label for="_description" class="col-sm-3 control-label">sellout</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="sellout" id="sellout"  value=""/>
											</div>
										</div> -->
									</div>
								</div>
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
					<div class="tab-pane" id="tab_image">
					</div>
					<div class="tab-pane" id="tab_intro">
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
<script src="<%=path %>/resources/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<%=path %>/resources/admin/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="<%=path %>/resources/admin/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
    $(function () {
         $("#beginDate").datepicker({
            language: "zh-CN",
            autoclose: true,//选中之后自动隐藏日期选择框
            clearBtn: true,//清除按钮
            todayBtn: true,//今日按钮
            startDate: "2017-01-01",
            format: "yyyy-mm-dd"
        });
        $("#endDate").datepicker({
            language: "zh-CN",
            autoclose: true,//选中之后自动隐藏日期选择框
            clearBtn: true,//清除按钮
            todayBtn: true,//今日按钮
            startDate: "2017-01-01",
            format: "yyyy-mm-dd"
        });

        $("#checkTime").timepicker({
            minuteStep: 1,
            showSeconds: false,
            showMeridian: false,
            defaultTime: false
        });
        $("#stopCheckTime").timepicker({
            minuteStep: 1,
            showSeconds: false,
            showMeridian: false,
            defaultTime: false
        });
    });
</script>
</body>
</html>
