<?xml version="1.0" encoding="UTF-8" ?>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/dist/css/skins/_all-skins.min.css" />
		<!-- iCheck -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/iCheck/flat/blue.css" />
		<!-- jvectormap -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css" />
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
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1> 插件列表</h1>
				</section>

				<!-- database table lack of the status field -->
				<section class="content">
					<div class="row" style="padding: 0 15px 10px 15px;">
						<ul class="list-inline" style="float: left;">
							<li class="all active">
								<a href="#" class="current">
									全部 <span class="count">(10)</span>
								</a>|
							</li>
							<li class="all">
								<a href="#" class="current">
									已启用 <span class="count">(3)</span>
								</a>|
							</li>
							<li class="all">
								<a href="#" class="current">
									未启用 <span class="count">(7)</span>
								</a>
							</li>
						</ul>
						<form class="form-horizontal col-sm-3" method="post" style="float: right;" action="#">
							<div class="input-group input-group-sm">
								<input id="#" class="form-control" type="search"  value="" name="k" placeholder="请输入关键词"/>
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-flat">搜索</button>
								</span>
							</div>
						</form>
					</div>

					<div class="col-xs-12">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="box box-solid">
									<div class="box-body">
									<c:forEach items="${pluginList }" var="plugin">
										<a class="btn btn-app" href="javascript:void(0);"
										 onclick="detail('<%=request.getContextPath() %>/admin/plugin/edit','${plugin.id}')">
											<i class="fa fa-paw"></i>${plugin.name }
											<c:if test="${plugin.status eq 1 }">
											<small style="color: green;">已启用</small>
											</c:if>
											<c:if test="${plugin.status eq 0 }">
											<small style="color: gray;">已停用</small>
											</c:if>
											<!-- icon ?? -->
										</a>
									</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
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
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=request.getContextPath() %>/resources/admin/dist/js/app.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script type="text/javascript">
			var reload = false;
			function detail(url, id){
				reload = false;
				layer.open({
					type:2,
					title:'插件详情',
					shadeClose:true,
					shade:0.85,
					area:['70%','80%'],
					content:url + "?id=" + id,
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