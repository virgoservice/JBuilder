<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>JBuilder 2 | 站点信息</title>
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/editormd/css/editormd.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css"/>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
			<jsp:include page="../../common/header.jsp" />
			<jsp:include page="../../common/menu.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>常规设置</h1>
				</section>
				<section class="content">
					<p>配置网站基本信息和管理员信息，通过管理员信息的配置，可以用来接收网站的相关动态</p>
					<sf:form modelAttribute="siteInfo" id="form" method="post">
						<div class="row">
							<div class="col-md-9">
								<div class="nav-tabs-custom">
									<ul class="nav nav-tabs">
										<li class="active">
											<a href="#generate" data-toggle="tab" aria-expanded="true">常规选项</a>
										</li>
										<li>
											<a href="#admin" data-toggle="tab" aria-expanded="true">管理员信息</a>
										</li>
										<li>
											<a href="#other" data-toggle="tab" aria-expanded="true">其他选项</a>
										</li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane active" id="generate">
											<div class="form-horizontal">
												<div class="form-group">
													<label for="username" class="col-md-2 control-label">网站名称</label>
													<div class="col-md-9">
														<sf:input path="name" type="text" class="form-control" id="username" placeholder="请输入网站名称"  value=""/>
														<input type="hidden" name="id" value="1">
													</div>
												</div>
												<div class="form-group">
													<label for="nickname" class="col-sm-2 control-label">网站标题</label>
													<div class="col-sm-9">
														<sf:input path="title" type="text" class="form-control"  id="nickname" placeholder="请输入网站标题"  value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="nickname" class="col-sm-2 control-label">副标题</label>
													<div class="col-sm-9">
														<sf:input path="subtitle" type="text" class="form-control" name="" id="subname" placeholder="请输入网站副标题"  value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="domain" class="col-sm-2 control-label">网站域名</label>
													<div class="col-sm-9">
														<sf:input path="domain" type="text" class="form-control" name="" id="domain" placeholder="请输入网站域名"  value=""/>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="admin">
											<div class="form-horizontal">
												<div class="form-group">
													<label for="email" class="col-md-2 control-label">电子邮箱</label>
													<div class="col-md-9">
														<sf:input path="email" type="email" class="form-control" name="" id="email" placeholder="请输入管理员联系邮箱" value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="tel" class="col-sm-2 control-label">联系电话</label>
													<div class="col-sm-9">
														<sf:input path="phone" type="tel" class="form-control" name="" id="tel" placeholder="请输入管理员联系电话" value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="QQ" class="col-sm-2 control-label">QQ号码</label>
													<div class="col-sm-9">
														<sf:input path="qq" type="text" class="form-control" name="" id="QQ" placeholder="请输入管理员QQ联系方式" value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="address" class="col-sm-2 control-label">联系地址</label>
													<div class="col-sm-9">
														<sf:input path="address" type="text" class="form-control" name="" id="address" placeholder="请输入联系地址信息"  value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="code" class="col-sm-2 control-label">邮政编码</label>
													<div class="col-sm-9">
														<sf:input path="postCode" type="text" class="form-control" name="" id="code" placeholder="请输入邮政编码" value=""/>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="other">
											<div class="form-horizontal">
												<div class="form-group">
													<label for="description" class="col-md-2 control-label">站点描述</label>
													<div class="col-md-9">
														<sf:input path="description" type="text" class="form-control" name="" id="description" placeholder="请输入网站描述"  value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="keyword" class="col-md-2 control-label">站点关键字</label>
													<div class="col-md-9">
														<sf:input path="keyword" type="text" class="form-control" name="" id="keyword" placeholder="请输入站点关键字"  value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="ICPCode" class="col-md-2 control-label">IPC备案号</label>
													<div class="col-md-9">
														<sf:input path="icp" type="text" class="form-control" name="" id="ICPCode" placeholder="请输入ICP备案号"  value=""/>
													</div>
												</div>
												<div class="form-group">
													<label for="qm" class="col-md-2 control-label">版权信息</label>
													<div class="col-md-9">
														<sf:textarea path="copyright" rows="3" id="qm" class="form-control" placeholder="请输入站点版权信息" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box box-solid" style="display: block;padding: 10px 15px; position: relative;">
									<div class="box-body">
										<button type="button" onclick="submitDo()" class="btn btn-primary btn-sm ">保存更改</button>
										<button type="button" class="btn btn-default btn-sm pull-right">重置</button>
									</div>
								</div>
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">网站Logo</h3>
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
													<img src="<%=path %>/resources/admin/dist/img/credit/paypal.png" id="thumbnail" class="img-responsive center-block"/>
													<input type="hidden" name="" value="" id="" />
												</div>
												<div style="clear: both;"></div>
											</li>
											<li style="border-top: 1px solid #f4f4f4; display: block;padding: 10px 15px;position: relative;">
												<button type="button" class="btn btn-default btn-sm" onclick="selectThumbnail()">上传Logo</button>
												<div style="clear: both;"></div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>							
					</sf:form>
				</section>
			</div>
			<jsp:include page="../../common/footer.jsp" />
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery.min.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layui/layui.js" ></script>
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
		<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
		<script type="text/javascript">
		
		function submitDo() {
			var data = $("#form").serialize();
			data = decodeURIComponent(data,true);
			$.ajax({
				url:"<%=path %>/admin/site/edit",
				type:'POST',
				data:data,
				contentType:"application/x-www-form-urlencoded",
				encoding:"utf-8",
				cache:false,
				success:function(){
					layer.open({
						content:"站点信息已经成功修改",	
						btn:['我知道了'],
						yes:function(index){
							layer.close(index);
						},
					});
				},
				error:function(){
					layer.open({
						content:"站点信息修改失败",	
						btn:['我知道了'],
						yes:function(index){
							layer.close(index);
						},
					});
				}
			});
		}
		
			function selectThumbnail(){
				layer.open({
					type:2,
					title:'上传网站Logo',
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