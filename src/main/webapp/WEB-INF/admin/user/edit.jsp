<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>JBuilder 2 | 编辑用户</title>
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
			<jsp:include page="../../common/header.jsp" />
			<jsp:include page="../../common/menu.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>用户资料</h1>
				</section>
				<section class="content">
					<form action="#" id="form"method="post">
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
													<input type="text" class="form-control" name="username" id="username"  readonly="readonly" value="${user.username}"/>
													<input type="hidden" name="id" value="${user.id }" />
												</div>
											</div>
											<div class="form-group">
												<label for="nickname" class="col-sm-2 control-label">昵称（必填）</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="nickname" id="nickname"  value="${user.nickname }"/>
												</div>
											</div>
										</div>
										<div class="form-horizontal">
											<h4>联系信息</h4>
											<hr />
											<div class="form-group">
												<label for="email" class="col-md-2 control-label">电子邮件（必填）</label>
												<div class="col-md-9">
													<input type="email" class="form-control" name="email" id="email"  value="${user.email }"/>
												</div>
											</div>
											<div class="form-group">
												<label for="phone" class="col-sm-2 control-label">联系电话</label>
												<div class="col-sm-9">
													<input type="tel" class="form-control" name="phone" id="phone"  value="${user.phone}"/>
												</div>
											</div>
											<div class="form-group">
												<label for="qq" class="col-sm-2 control-label">QQ号码</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="qq" id="qq"  value="${user.qq }"/>
												</div>
											</div>
											<div class="form-group">
												<label for="weibo" class="col-sm-2 control-label">微博号码</label>
												<div class="col-sm-9">
													<input type="text" class="form-control" name="weibo" id="weibo"  value="${user.weibo }"/>
												</div>
											</div>
										</div>
										<div class="form-horizontal">
											<h4>重置密码</h4>
											<hr />
											<div class="form-group">
												<label for="password" class="col-md-2 control-label">密码（不修改则不填写）</label>
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
													<textarea rows="4" id="signature" name="signature" class="form-control" placeholder="分享你的一些心情或者公开信息">${user.signature}</textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box box-solid" style="display: block;padding: 10px 15px; position: relative;">
									<div class="box-body">
										<button type="button" class="btn btn-primary btn-sm ">保存</button>
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
														<input type="checkbox" name="roleIds" <c:if test="${fn:contains(userRole,role.id)}"> checked="checked" </c:if> value="${role.id }"/>${role.name}
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
													<input type="hidden" name="" value="" id="" />
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
			<jsp:include page="../../common/footer.jsp"/>
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/editormd/editormd.min.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
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