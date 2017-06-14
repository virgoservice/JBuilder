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
		<title>票务管理| 贵州古城</title>
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
		<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
		<!-- iCheck -->
		<!-- Date Picker -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/datepicker/datepicker3.css">
		<!-- Daterange picker -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/daterangepicker/daterangepicker.css">
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
									<a href="jingqu_chanpin.html"><i class="fa fa-list-ul"></i>景区产品管理</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 产品组管理</a>
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
							<h3 class="box-title text-bold">景区门票</h3>
						</div>
						<div class="box-body" style="padding: 10px 0;">
							<form action="" method="post" id="" class="form-horizontal form-inline">
								<label class="control-label" style="margin-left: 15px;">商品名称:</label>
								<input id="" class="form-control input-sm" style="border-radius: 4px;" />	
								<label class="control-label" style="margin-left: 15px;">商品编码: </label>
								<input id="" class="form-control input-sm" style="border-radius: 4px;" />	
								<label class="control-label" style="margin-left: 15px;">景区名称: </label>
								<input id="" class="form-control input-sm" style="border-radius: 4px;" />
								<label class="control-label" style="margin-left: 15px;">状态: </label>
								<select id="" class="form-control input-sm" style="border-radius: 4px;">
									<option value="-1">全选</option>
									<option value="1">启用</option>
									<option value="0">禁用</option>
								</select>
								<button type="button" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">查询</button>
							</form>
						</div>
					</div>
				</section>
				<section class="row content-header">
					<div class="col-lg-12">
						<button class="btn btn-primary btn-sm">所有</button>
						<button class="btn btn-primary btn-sm">直通车产品</button>	
						<button class="btn btn-primary btn-sm">高过河</button>	
						<button class="btn btn-primary btn-sm">舞阳河</button>	
						<button class="btn btn-primary btn-sm">双11产品</button>	
						<button class="btn btn-primary btn-sm">春节特惠</button>	
						<button class="btn btn-primary btn-sm">旅行社</button>	
						<button class="btn btn-primary btn-sm">美团</button>	
						<button class="btn btn-primary btn-sm">6.18</button>	
						<button class="btn btn-primary btn-sm">微信</button>	
					</div>
				</section>
				<div class="content">
						<div class="box box-solid">
						<div class="box-header with-border">
							<div class="col-lg-12">
								<input type="checkbox"/>全选
								<button class="btn btn-primary btn-sm">新增</button>
								<button class="btn btn-primary btn-sm">新增分组</button>	
							</div>
						</div>
						<div class="box-body" style="padding: 10px 0;">
							<table class="table table-responsive">
								<thead>
									<tr>
										<td></td>
										<td>NO.</td>
										<td>景区名称</td>
										<td>商品名称</td>
										<td>商品编码</td>
										<td>有效期</td>
										<td>状态</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="checkbox"/></td>
										<td>1</td>
										<td>舞阳河景区</td>
										<td>舞阳河船票优惠购</td>
										<td>PST20170526116558</td>
										<td>
											开始时间：2017-05-26<br/>
											结束时间：2017-12-31
										</td>
										<td>启用</td>
										<td>
											<a href="#">禁用</a>
											<a href="#">修改</a>
											<a href="#">购买规则</a>
											<a href="#">分组</a>
											<a href="#">删除</a>
											<a href="#">复制</a>
										</td>
									</tr>
									<tr>
										<td><input type="checkbox"/></td>
										<td>1</td>
										<td>舞阳河景区</td>
										<td>舞阳河船票优惠购</td>
										<td>PST20170526116558</td>
										<td>
											开始时间：2017-05-26<br/>
											结束时间：2017-12-31
										</td>
										<td>启用</td>
										<td>
											<a href="#">禁用</a>
											<a href="#">修改</a>
											<a href="#">购买规则</a>
											<a href="#">分组</a>
											<a href="#">删除</a>
											<a href="#">复制</a>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="box-footer">
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
							</div>
						</div>
					</div>	
				</div>
			</div>
			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					<b>技术支持</b> <a href="#">贵州桃李云科技有限公司</a>
				</div>
				<strong>Copyright &copy; 2017-2020 <a href="http://www.gogc.cn">贵州古城文化旅游开发股份有限公司</a>.</strong> All rights reserved.
			</footer>
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button);
		</script>
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<!-- Morris.js charts -->
		<!-- Slimscroll -->
		<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
		<!-- AdminLTE for demo purposes -->







<%-- <script type="text/javascript">
    
    function save(){
    	//表单验证
    	var detect = new Detect();
	    detect.add('名称',$(":input[name='name']").val(),["nameLength"]);  
	    detect.add('关键词',$(":input[name='keyword']").val(),["nameLength"]);
	    detect.add('排序',$(":input[name='showOrder']").val(),["isNumber"]);
	    var result=detect.getResult();
	    if(result){
	    	alert(result)
	    	return;
	    }
    	
    	var id=$(":input[name='id']").val();
    	var formdata = id?$("#form").serialize():$("#form").serialize().replace('id=','')
    	var orp=id?'edit':'add';
    	
    	$.ajax({
			url:"<%=path %>/admin/category/"+orp,
			type:"post",
			contentType:"application/x-www-form-urlencoded",
            encoding:"utf-8",
			data:formdata,
			success:function(html){
				query();
				remove();
			},
			error:function(){
				
			}
		});
    }
    
    function edit(obj){
    	window.location.href="<%=path %>/admin/article/edit?id="+obj.id;
    }
    
    function del(id){
    	$.ajax({
			url:"<%=path %>/admin/article/delete",
			type:"get",
			data:{'id':id},
			success:function(html){
				query();
			},
			error:function(){
				
			}
		});
    }
    
    function query(pageNo,pageSize){
    	$.ajax({
			url:"<%=path %>/admin/article/list",
			type:"GET",
			data:{
				pageNo:pageNo,
				pageSize:pageSize,
				search:$('#search').val()
			},
			cache:false,
			success:function(html){
				$("#table").html(html);
			},
			error:function(){
				
			}
		});
    }
    
    function remove(){
    	$('#form')[0].reset();
    	$('#id').val('');
    }
    
    query();

</script> --%>
</body>

</html>