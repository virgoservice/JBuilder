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
		<title>退票列表</title>
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
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css" />
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  		<![endif]-->
	</head>
	<body class="hold-transition skin-blue sidebar-mini" id="body">
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
						<li class="treeview">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>产品管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="jingqu_chanpin.html"><i class="fa fa-list-ul"></i>景区产品管理</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 产品组管理</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>订单管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="order_sold_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
								</li>
								<li>
									<a href="article_add.html"><i class="fa fa-list-ul"></i> 到付订单列表</a>
								</li>
							</ul>
						</li>
						<li class="treeview  active">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>检票管理</span>
								<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
							</a>
							<ul class="treeview-menu">
								<li class="active">
									<a href="check_ticket_list.html"><i class="fa fa-list-ul"></i>待检票订单列表</a>
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
									<a href="order_sold_list.html"><i class="fa fa-list-ul"></i>已售订单列表</a>
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
						<li class="treeview ">
							<a href="#">
								<i class="fa fa-reorder"></i>
								<span>系统管理</span>
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
							<h3 class="box-title text-bold">退票列表</h3>
						</div>
						<div class="box-body" style="padding: 10px 0;">
							<form action="" method="" id="" class="form-horizontal form-inline">
								<label class="control-label" style="margin-left: 15px;">退单号:</label>
								<input id="orderCode" value="${orderCode }"class="form-control input-sm" style="border-radius: 4px;" />	
								<label class="control-label" style="margin-left: 15px;">订单: </label>
								<input id="hcode" value="${hcode }"class="form-control input-sm" style="border-radius: 4px;" />
								<button type="button" onclick="query()" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">查询</button><button type="button" onclick="clearaaaa()" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">重置</button>
							</form>
						</div>
					</div>
				</section>
				<div class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-solid">
								<div class="box-header">
									<div class="row">
										<div class="col-sm-5">
											
										</div>
										<div class="col-sm-7">
											${list.pageStr }
										</div>
									</div>
								</div>
								<div class="box-body">
									<div class="dataTables_wrapper form-inline dt-bootstrap">
										<div class="row">
										
											<div class="col-sm-12">
												<table class="table table-hover text-center">
													<thead>
														<tr style="background-color: #ECF0F5;">
															<td width="8%">退单号</td>
															<td width="8%">订单编号</td>
															<td>联系人</td>
															<td>辅助码</td>
															<td>商品名称</td>
															<td>检票状态</td>
															<td>单价</td>
															<td>退票数量</td>
															<td>总计</td>
															<td>审核时间</td>
															<td>操作</td>
														</tr>
													</thead>
													<tbody>
													<c:forEach items="${list.items}" var="item">  
													
														<tr>
															<td>
																<p>${item.cancelOrderCode}</p>
															</td>
															<td>
																<span>
																	${item.order.orderCode}	
																</span>
															</td>
															<td >
																<p>${item.order.linkName}	
																</p>
															</td>
															<td >
																<p>${item.order.ziyoubaoCheckNo}	
																</p>
															</td>
															
															<td >
																<p>${item.child.goodsName}	
																</p>
															</td>
															<td >
																<p>
																<c:if test="${item.child.checkStatus==0}">
																	未检票
																</c:if>	
																<c:if test="${item.child.checkStatus==1}">
																	检票中
																</c:if>	
																<c:if test="${item.child.checkStatus==2}">
																	已检票
																</c:if>	
																</p>
															</td>
															<td >
																${item.child.price}	
															</td>
															<td >
																${item.num}	
															</td>
															<td >
																${item.totalPrice}	
															</td>
															<td >
																<p><fmt:formatDate value="${item.checkDate}" type="both" /></p>
															</td>
															<td >
																<a href="javascript:void(0);" onclick="detail(${item.order.id})">明细</a>
															</td>
														</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-5">
												
											</div>
											<div class="col-sm-7">
												${list.pageStr }
											</div>
										</div>
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
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script type="text/javascript">
			
			function detail(id){
				layer.open({
					type:2,
					title:'详细列表',
					offset:'c',
					shade:0.8,
					area:['50%','60%'],
					btn:['关闭'],
					content:'<%=path %>/admin/order/detail?orderid='+id,
					end:function(){			
					},
					cancel:function(index){
						
						layer.close(index);
					}
				});
			}
			
			function query(pageNo,pageSize){
		    	$.ajax({
					url:"<%=path %>/admin/order/returnListDone",
					type:"GET",
					data:{
						pageNo:pageNo,
						pageSize:pageSize,
						orderCode:$('#orderCode').val(),
						hcode:$('#hcode').val(),
					},	
					cache:false,
					success:function(html){
						$("#body").html(html);
					},
					error:function(){
						
					}
				});
		    }
			
			function clearaaaa(){
				$('#orderCode').val("")
				$('#linkMobile').val("")
				$('#hcode').val("")
				
				query();
				
			}
			
			
			function showMes(mes,type){
				layer.open({
					title:'系统提示信息',
					icon:type||1,
					offset:'15px',
					btnAlign:'c',
					content:mes,	
					btn:['我知道了'],
					yes:function(index){
						layer.close(index);
						if(type!=2)
							closew();
					},
				});
			}
		</script>
	</body>
</html>