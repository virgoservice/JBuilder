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

				<section class="content" id="group-list">
					<!--  -->
				</section>

			</div>

			<jsp:include page="../../common/footer.jsp"/>
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
<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
<!--菜单选中脚本  -->
<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
$(function (){
	query(1,12);
});
function query(pageNo, pageSize){
	$.ajax({
		url: $("#ctx").val() + "/admin/ticketGroup/list",
		type:"GET",
		data:{
			pageNo:pageNo,
			pageSize:pageSize,
		},
		cache:false,
		success:function(html){
			$("#group-list").html(html);
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
	var url = $("#ctx").val() + "/admin/ticketGroup/del";
	layer.confirm('确认要删除吗？',function(index){
		$.post(url, {"id":id}, null);
		$(obj).parents("tr").remove();
		layer.close(index);
	});
}

function batchDel(){
	var ids = new Array();
	var items = document.getElementsByName("checkbox");
	for(var i=1;i<items.length;i++){
	    if(items[i].checked){
	        ids.push(items[i].value);
	    }
	}
	if(ids.length < 1){
		layer.msg("必须选择至少一条记录", 1);
		return ;
	}
	var url = $("#ctx").val() + "/admin/ticketGroup/del";
	layer.confirm('确认要删除吗？',function(index){
		for(var i=0;i<ids.length;i++){
			var id = ids[i];
			$.post(url, {"id":id}, null);
		}
		query($("#page-no").val(), $("#page-size").val());// 总有点毛病啊
		layer.close();
	});
}
</script>
</body>

</html>