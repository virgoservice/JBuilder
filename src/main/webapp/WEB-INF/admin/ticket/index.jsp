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

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="../../common/header.jsp" />
		<jsp:include page="../../common/menu.jsp" />
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<section class="content-header"  style="margin-bottom: 0;">
				<div class="box box-solid" style="margin-bottom: 0;">
					<div class="box-header with-border">
						<h3 class="box-title text-bold">景区门票</h3>
					</div>
					<div class="box-body" style="padding: 10px 0;">
						<form action="../search" method="post" id="form-ticket-search" class="form-horizontal form-inline">
							<label class="control-label" style="margin-left: 15px;">商品名称:</label>
							<input id="" name="ticketName" class="form-control input-sm" style="border-radius: 4px;" />	
							<label class="control-label" style="margin-left: 15px;">商品编码: </label>
							<input id="" name="goodsCode" class="form-control input-sm" style="border-radius: 4px;" />	
							<label class="control-label" style="margin-left: 15px;">景区名称: </label>
							<input id="" name="scenicName" class="form-control input-sm" style="border-radius: 4px;" />
							<label class="control-label" style="margin-left: 15px;">状态: </label>
							<select id="" name="status" class="form-control input-sm" style="border-radius: 4px;">
								<option value="-1">全选</option>
								<option value="1">启用</option>
								<option value="0">禁用</option>
							</select>
							<button type="button" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">查询</button>
						</form>
					</div>
				</div>
			</section>

			<!-- group list -->
			<section class="row content-header">
				<div class="col-lg-12">
				<c:forEach items="${groupList}" var="item">
					<button class="btn btn-primary btn-sm" onClick="groupQuery(${item.id});">${item.name}</button>
				</c:forEach>  
				</div>
			</section>

			<!-- goods(ticket) list -->
			<section class="content" id="goods-list">
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
<!--菜单栏选中脚本  -->
<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
$(function(){
	query(1, 12);
});

function query(pageNo, pageSize){
	// 先看是否有组被选中
	var selectGroup = $("input[name='curGroup']").val();
	if(selectGroup != null){
		$.ajax({
			url:"<%=path %>/admin/ticket/group",
			type:"GET",
			data:{
				pageNo:pageNo,
				pageSize:pageSize,
				group:selectGroup
			},
			cache:false,
			success:function(html){
				$("#goods-list").html(html);
			},
			error:function(){
			}
		});		
	}else{
		//查看表单是否为空
		var form = $("#form-ticket-search");
		var ticketName = $(form).find("input[name='ticketName']").val();
		var goodsCode = $(form).find("input[name='goodsCode']").val();
		var scenicName = $(form).find("input[name='scenicName']").val();
		var status = $(form).find("input[name='status']").val();
		if(ticketName != "" || goodsCode != "" || scenicName !=""){			
		alert(ticketName);
			$.ajax({
				url:"<%=path %>/admin/ticket/search",
				type:"GET",
				data:{
					pageNo:pageNo,
					pageSize:pageSize,
					ticketName:ticketName,
					goodsCode:goodsCode,
					scenicName:scenicName,
					status:status
				},
				cache:false,
				success:function(html){
					$("#goods-list").html(html);
				},
				error:function(){
				}
			});
		}else{
			$.ajax({
				url:"<%=path %>/admin/ticket/list",
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
	}
}

function addGroup(){
	var url = $("#ctx").val() + "/admin/ticketGroup/add";
	window.location.href= url + "?id=0"
}

function add(){
	var url = $("#ctx").val() + "/admin/ticket/add";
	window.location.href= url;
}

function addTicket(){
	
}

function editTicket(){
	
}

function stop(){
	
}
</script>

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