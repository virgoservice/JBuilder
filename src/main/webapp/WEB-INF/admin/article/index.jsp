<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet"  href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
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
					<h1> 所有文章</h1>
				</section>
				<section class="content">
					<div class="row" style="padding: 0 15px 10px 15px;">
						<ul class="list-inline" style="float: left;">
							<li class="all active">
								<a href="#" class="current">
									
									<c:forEach items="${statusList}" var="item">  
										<c:set var="sum" value="${sum+item.count}"></c:set>
									</c:forEach>
									全部 <span class="count">(${sum})</span>
								</a>|
							</li>
							<li class="all">
								<a href="#" class="current">
									<c:forEach items="${statusList}" var="item">  
										<c:if test="${item.status==2}">
										已发布<span class="count"> (${item.count}) </span>
										</c:if>
									</c:forEach>
									
								</a>|
							</li>
							<li class="all">
								<a href="#" class="current">
									<c:forEach items="${statusList}" var="item">  
										<c:if test="${item.status!=2}">
										未发布<span class="count"> (${item.count}) </span>
										</c:if>
									</c:forEach>
								</a>
							</li>
						</ul>
						<form class="form-horizontal col-sm-3" method="post" style="float: right;" action="#">
							<div class="input-group input-group-sm">
								<input id="search" class="form-control" type="search"  value="" name="k" placeholder="请输入关键词"/>
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-flat" onclick="query()">搜索</button>
									<button type="button" class="btn  btn-flat" onclick="javaScript:$('#search').val('');query()">重置</button>
								</span>
							</div>
						</form>
					</div>
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
					<div id="table"></div>
					
				</section>
			</div>
    <jsp:include page="../../common/footer.jsp" />
    <div class="control-sidebar-bg"></div>
</div>
<!-- jQuery 2.2.3 -->
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
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
<script src="<%=path %>/resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>

<script src="<%=path %>/resources/admin/dist/js/validate.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
    
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

</script>
</body>

</html>