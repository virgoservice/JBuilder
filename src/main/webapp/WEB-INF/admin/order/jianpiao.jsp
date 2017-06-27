<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>JBuilder| 系统首页</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.6 -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/font-awesome-4.7.0/css/font-awesome.min.css" />
		<!-- Ionicons -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/ionicons-2.0.1/css/ionicons.min.css" />
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  		<![endif]-->
	</head>
	<body>
		<section>
			<div class="box-body">
				<form action="" method="" id="" class="form-horizontal form-inline dataTables_wrapper">
					<table class="table dataTable text-center">
						<tr>
							<td>订单号</td><td>${child.order.orderCode }</td>
						</tr>
						<tr>
							<td>商品名称</td><td>${child.goodsName }</td>
						</tr>
						<tr>
							<td>景区商品名称</td><td>${scnic.name }</td>
						</tr>
						<tr>
							<td>游玩日期</td><td><fmt:formatDate value="${child.occDate}" type="date" /></td>
						</tr>
						<tr>
							<td>联系人</td><td>${child.order.linkName }</td>
						</tr>
						<tr>
							<td>手机号</td><td>${child.order.linkMobile }</td>
						</tr>
						<tr>
							<td>可检票量</td><td>${child.order.total-child.order.checkNum }</td>
						</tr>
					</table>
					<div class="row">
						<label class="col-lg-2 col-md-2 col-sm-3 col-xs-3">检票数量:</label>
						<input type="number" min="0" id="checkNum"class="col-lg-1 col-md-1 col-sm-1 col-xs-2 input-sm" style="border: 1px solid #BFBFBF; border-radius: 4px;" />	
					</div>
				
			</form>
			<div class="row">
					<div class="col-xs-12 ">
						<div class="box-footer">
							<div class="pull-right">
								<button class="btn btn-primary" onclick="checkTicket()">确定</button>
								<button class="btn btn-default" onclick="closew()">取消</button>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<!-- AdminLTE App -->
		
		<script type="text/javascript">
			function checkTicket(){
				var num=$("#checkNum").val();
				if(num==""||num==0){
					showMes("检票数量无效",2);
					return;
				}
				
				$.ajax({
					url:"<%=path %>/admin/order/checkTicket",
					type:"POST",
					data:{
						corderId:'${child.id}',
						num:num,
					},
					cache:false,
					success:function(data){
						if(data.success){
							showMes("检票成功！");
						}else{
							showMes("检票失败！"+data.errorMsg,2);
						}
						
					},
					error:function(){
						
					}
				});
			}
		
			function closew(){
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index); //再执行关闭   
			}
			
			function showMes(mes,type){
				layer.open({
					title:'系统提示信息',
					icon:type||1,
					offset:'15px',
					btnAlign:'c',
					content:mes,	
					btn:['我知道了'],
					yes:function(index){
						layer.close(index);
						if(type!=2)
							closew();
					},
				});
			}
			
		</script>
	</body>

</html>