<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>JBuilder 2 | 控制台</title>
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
		 <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<jsp:include page="../../../common/header.jsp" />
			<jsp:include page="../../../common/menu.jsp" />
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1> 用户列表</h1>
				</section>
				<section class="content">
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
					<div class="row" style="padding: 0 15px 10px 15px;">
					</div>
					<div id="user-table">
						<!--异步填充内容  -->
					</div>
				</section>
			</div>
			<jsp:include page="../../../common/footer.jsp"/>
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
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<!-- Slimscroll -->
		<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
		<script src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js"></script>
		<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
		<script type="text/javascript">
			query();
			function query(pageNo,pageSize){
				$.ajax({
					url:"<%=path %>/admin/member/list",
					type:"GET",
					data:{
						pageNo:pageNo,
						pageSize:pageSize
					},
					cache:false,
					success:function(html){
						$("#user-table").html("");
						$("#user-table").html(html);
					},
					error:function(){
						alert("未处理");
					}
				});
			}
			function del(id){
				top.layer.open({
					title:false,
					icon:2,
					content:"该操作不可逆！确认删除该用户吗？",
					offset:'15px',
					btn:['确认删除'],
					btnAlign:'c',
					yes:function(index){
						$.ajax({
							url:"<%=path %>/admin/user/delete",
							type:"POST",
							data:{
								id:id,
							},
							contentType:"application/x-www-form-urlencoded",
							encoding:"utf-8",
							cache:false,
						});
						location.reload();
						layer.close(index);
					},
					cancel:function(index){
						layer.close(index);
					}
				});
			}
			function changeStatus(id){
				$.ajax({
					url:"<%=path %>/admin/user/changeStatus",
					type:"POST",
					data:{
						id:id,
					},
					contentType:"application/x-www-form-urlencoded",
					encoding:"utf-8",
					cache:false,
					success:function(){
						location.reload();
					}
				});
			}
			 function deleteBatch(){
				 var uids =[]; 
				 var ids = $("tbody input[type=checkbox]:checked");
				 for(var i=0;i<ids.length;i++){
					 if(ids[i].checked){
						 uids[i]=ids[i].value;
					 }
				 }
				//alert(uids);
				if(uids.length<=0){
					layer.open({
						title:false,
						icon:5,
						content:"没有选择任何删除数据",
						offset:'15px'
					});
				}else{
					layer.open({
						title:false,
						icon:2,
						content:"改操作不可逆，确认删除吗?",
						offset:'15px',
						btn:['确认','取消'],
						btnAlign:'r',
						yes:function(index){
							/* console.log(uids); */
							$.ajax({
								url:"<%=path %>/admin/user/deleteBatch",
								type:"POST",
								data:{
									userIds:uids.toString(),
								},
								contentType:"application/x-www-form-urlencoded",
								encoding:"utf-8",
								cache:false,
							});
							location.reload();
							layer.close(index);
						},
						cancel:function(){
							layer.close(index);
						}
					});
				}
			}
		</script>
	</body>

</html>