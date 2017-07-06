<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>  
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
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->
</head>

	<style>
	.error{
		color:red;
	}
	</style>

	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<jsp:include page="../../common/header.jsp" />
			<jsp:include page="../../common/menu.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<section class="content-header"  style="margin-bottom: 0;">
					<div class="box box-solid" style="margin-bottom: 0;">
						<div class="box-header with-border">
							<h3 class="box-title text-bold">
								添加景点分组
							</h3>
						</div>

						<div class="box-body" style="padding: 10px 0;">
							<sf:form action="#" modelAttribute="ticketGroup" id="form-group-add" method="post">
							<sf:hidden path="id"/>
							<div class="row">
								<div class="col-md-9">
									<div class="form-group">
										<label class="col-sm-2 control-label"><span style="color: red;">*</span>分组名称:</label>
										<div class="col-sm-10">
											<sf:input path="name" type="text" class="form-control" name="name" id="name"/>
											<label></label>
										</div>
									</div>
								</div>
							</div>

							<div class="row"></div>

							<div class="row">
								<div class="col-md-9">
									<div class="form-group">
										<label class="col-sm-2 control-label">分组描述:</label>
										<div class="col-sm-10">
											<sf:input path="description" type="text" class="form-control" name="description" id="description"/>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-8"></div>
								<div class="col-md-4">
									<div class="form-group">
										<sf:button type="submit" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">确定</sf:button>
									</div>
								</div>
							</div>
							</sf:form>
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
<script src="<%=path %>/resources/admin/plugins/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#form-group-add").validate({
		rules:{
			name:{
				required:true,
			}
		},
		messages:{
			name: {
         		required: "名称不能为空",
      		}
		},
		onkeyup:false,
		onsubmit:true,
        submitHandler:function(form) {
        	form.submit();
		}
	});
});
</script>
</body>
</html>