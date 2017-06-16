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
		<title>JBuilder 1.2 | 控制台</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
		<!-- Bootstrap 3.3.6 -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css" />
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
		<!-- Ionicons -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css" />
		<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css" />
		<!-- iCheck -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/iCheck/flat/blue.css" />
		<!-- jvectormap -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css" />
		<!-- bootstrap wysihtml5 - text editor -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" />

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<jsp:include page="../common/header.jsp" />
			<jsp:include page="../common/menu.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
			        JBuilder
			       	 <small>控制面板</small>
			     	</h1>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-6">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">概况</h3>
									<div class="box-tools pull-right">
										<button class="btn btn-box-tool" type="button" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body">
									<div class="row chart-row">
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
									</div>
									<div class="row chart-row">
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">最近发布</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body table-responsive no-poadding">
									<table class="table table-hover">
										<thead>
											<tr>
												<td>ID</td>
												<td>User</td>
												<td>Date</td>
												<td>Status</td>
												<td>Reason</td>
											</tr>	
										</thead>
										<tbody>
											<tr>
							                  <td>183</td>
							                  <td>John Doe</td>
							                  <td>11-7-2014</td>
							                  <td><span class="label label-success">Approved</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
							                <tr>
							                  <td>219</td>
							                  <td>Alexander Pierce</td>
							                  <td>11-7-2014</td>
							                  <td><span class="label label-warning">Pending</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
							                <tr>
							                  <td>657</td>
							                  <td>Bob Doe</td>
							                  <td>11-7-2014</td>
							                  <td><span class="label label-primary">Approved</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
							                <tr>
							                  <td>175</td>
							                  <td>Mike Doe</td>
							                  <td>11-7-2014</td>
							                  <td><span class="label label-danger">Denied</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
										</tbody>												
									</table>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">最新评论</h3>
									<div class="box-tools pull-right">
										<button class="btn btn-box-tool" type="button" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body">
									<div class="row chart-row">
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
									</div>
									<div class="row chart-row">
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
										<div class="col-xs-4" style="text-align: center;">
											<a class="chart-item" href="#">
												<p class="chart-item-title">文章总计</p>
												<h3 class="chart-item-amount">0</h3>
												<span class="chart-item-bottom cart-bottom-c3"></span>
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="box box-primary">
								<div class="box-header with-border">
									<h3 class="box-title">当前最热</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="box-body table-responsive no-poadding">
									<table class="table table-hover">
										<thead>
											<tr>
												<td>ID</td>
												<td>User</td>
												<td>Date</td>
												<td>Status</td>
												<td>Reason</td>
											</tr>	
										</thead>
										<tbody>
											<tr>
							                  <td>183</td>
							                  <td>John Doe</td>
							                  <td>11-7-2014</td>
							                  <td><span class="badge bg-red">115</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
							                <tr>
							                  <td>219</td>
							                  <td>Alexander Pierce</td>
							                  <td>11-7-2014</td>
							                  <td><span class="badge bg-yellow">100</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
							                <tr>
							                  <td>657</td>
							                  <td>Bob Doe</td>
							                  <td>11-7-2014</td>
							                  <td><span class="badge bg-aqua">85</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
							                <tr>
							                  <td>175</td>
							                  <td>Mike Doe</td>
							                  <td>11-7-2014</td>
							                  <td><span class="badge bg-blue">15</span></td>
							                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
							                </tr>
										</tbody>												
									</table>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<jsp:include page="../common/footer.jsp"/>
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
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
		<!-- datepicker -->
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
	</body>
</html>