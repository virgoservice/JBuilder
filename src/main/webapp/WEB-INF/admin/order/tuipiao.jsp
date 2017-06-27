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
				<form action="" method="" id="" class="form-horizontal form-inline">
					<div class="row"><label class="control-label" style="margin-left: 15px;">订单号: ${cancel.cancelOrderCode }</label></div>
					<div class="row"><label class="control-label" style="margin-left: 15px;">订单总票数: ${order.total }</label></div>
					<div class="row"><label class="control-label" style="margin-left: 15px;">订单已检票数: ${order.checkNum }</label></div>
					<div class="row"><label class="control-label" style="margin-left: 15px;">订单已退票数: ${order.returnNum }</label></div>
					
					<div class="row"><label class="control-label" style="margin-left: 15px;">本次退票数量: ${cancel.num }</label></div>
					<div class="row"><label class="control-label" style="margin-left: 15px;">本次退款金额: ${cancel.totalPrice }</label></div>
				</form>
			</div>
			<div class="box-footer">
				<div class="pull-right">
					<button class="btn btn-primary" onclick="returnTicket(${cancel.id})" readOnly=true>退款</button> 
					<button class="btn btn-default" onclick="closew()">取消</button>	
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
		<script>
		
		var isSend=true;
		function returnTicket(id){
			if(!isSend)
				return;
			isSend=false;
			
			var tip=layer.open({
				title:'系统提示信息',
				icon:0,
				offset:'15px',
				btnAlign:'c',
				content:"处理中，请稍等..."
			});
			
			
			$.ajax({
				url:"<%=path %>/admin/order/pay/refunds",
				type:"POST",
				data:{
					cancelOrderId:id
				},
				cache:false,
				success:function(data){
					if(data.success){
						showMes("退票成功！");
					}else{
						showMes(data.errorMsg,2);
					}
					isSend=true;
					layer.close(tip);
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