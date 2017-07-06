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
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->
</head>
	<style type="text/css">
	.table > thead > tr > td {
	  vertical-align: middle;
	}
	.table > tbody > tr > td {
	  vertical-align: middle;
	}
	</style>
	
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<jsp:include page="../../common/header.jsp" />
			<jsp:include page="../../common/menu.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<section class="content-header"  style="margin-bottom: 0;">
					<div class="box box-solid">
						<div class="box-header with-border">
							<h3 class="box-title text-bold">我的组列表</h3>
						</div>
						<div class="box-body" style="padding: 10px 0;">
							<form action="" method="post" id="" class="form-horizontal form-inline">
								<label class="control-label" style="margin-left: 15px;">名称:</label>
								<input id="" class="form-control input-sm" style="border-radius: 4px;" />
								<button type="button" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">查询</button>
							</form>
						</div>
					</div>
				</section>

				<section class="content">
					<!--  -->
					
					<div class="box box-solid">
						<div class="box-body" style="padding: 10px 0;">
							<table class="table table-responsive">
								<thead>
									<tr>
										<td colspan="5">
											<input type="checkbox"/>全选
											<button class="btn btn-primary btn-sm" style="margin-left:30px;">批量删除</button>
											<button class="btn btn-primary btn-sm" style="margin-left:15px;" onclick="addGroup();">新增分组</button>	
										</td>
									</tr>
									<tr>
										<td></td>
										<td>NO.</td>
										<td>名称</td>
										<td>描述</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${pageDto.items}" var="item">
									<tr>
										<td><input type="checkbox" value="${item.id }"/></td>
										<td>${item.id }</td>
										<td>${item.name }</td>
										<td>${item.description }</td>
										<td>
											<a href="javascript:;" onclick="edit(${item.id});">修改</a>
											<a href="javascript:;" onclick="del(this, ${item.id});">删除</a>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="box-footer">
							<div class="row">
								<div class="col-sm-5">
								</div>
								<div class="col-sm-7">
									${pageDto.pageStr}
								</div>
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

 		<input type="hidden" value="<%=path %>" id="ctx"/>
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<!--菜单选中脚本  -->
<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
function query(pageNo, pageSize){
	$.ajax({
		url: $("ctx").val() + "/admin/ticketGroup/list",
		type:"GET",
		data:{
			pageNo:pageNo,
			pageSize:pageSize,
		},
		cache:false,
		success:function(html){
			$("#goods-list").html(html);
		},
		error:function(){
		}
	});		
}

function addGroup(){
	var url = $("#ctx").val() + "/admin/ticketGroup/add";
	window.location.href= url + "?id=0"
}

function edit(id){
	var url = $("#ctx").val() + "/admin/ticketGroup/add";
	window.location.href= url + "?id=" + id;
}

function del(obj, id){
	$.post($("#ctx").val() + "/admin/ticketGroup/del", {id:id}, function(data){
		if(data.success){
			$(obj).parents("tr").remove();
		}else{
			alert(data.obj);
		}
	}, "json");
}
</script>
</body>

</html>