<?xml version="1.0" encoding="UTF-8" ?>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
%>
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
			<jsp:include page="../../common/header.jsp" />
			<jsp:include page="../../common/menu.jsp" />
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

			<jsp:include page="../../common/footer.jsp" />
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
		<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
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
