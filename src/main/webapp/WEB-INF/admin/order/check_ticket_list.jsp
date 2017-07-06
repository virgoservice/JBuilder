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
		<title>待检票订单列表 - 检票管理</title>
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
		<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
		<!-- iCheck -->
		<!-- Date Picker -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/datepicker/datepicker3.css">
		<!-- Daterange picker -->
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/daterangepicker/daterangepicker.css">
		<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css" />
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	  		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  		<![endif]-->
	</head>
	<body class="hold-transition skin-blue sidebar-mini" id="body">
		<div class="wrapper">
		<jsp:include page="../../common/header.jsp" />
		<jsp:include page="../../common/menu.jsp" />
				

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<section class="content-header"  style="margin-bottom: 0;">
					<div class="box box-solid">
						<div class="box-header with-border">
							<h3 class="box-title text-bold">待检票订单列表</h3>
						</div>
						<div class="box-body" style="padding: 10px 0;">
							<form action="" method="" id="" class="form-horizontal form-inline">
								<label class="control-label" style="margin-left: 15px;">订单号:</label>
								<input id="orderCode" value="${orderCode }"class="form-control input-sm" style="border-radius: 4px;" />	
								<label class="control-label" style="margin-left: 15px;">联系人电话: </label>
								<input id="linkMobile" value="${linkMobile }" class="form-control input-sm" style="border-radius: 4px;" />
								<label class="control-label" style="margin-left: 15px;">辅助码: </label>
								<input id="hcode" value="${hcode }"class="form-control input-sm" style="border-radius: 4px;" />
								<button type="button" onclick="query()" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">查询</button><button type="button" onclick="clearaaaa()" class="btn btn-primary btn-sm margin" style="margin-left: 20px;">重置</button>
							</form>
						</div>
					</div>
				</section>
				<div class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box box-solid">
								<div class="box-header">
									<div class="row">
										<div class="col-sm-5">
											
										</div>
										<div class="col-sm-7">
											${list.pageStr }
										</div>
									</div>
								</div>
								<div class="box-body">
									<div class="dataTables_wrapper form-inline dt-bootstrap">
										<div class="row">
										
											<div class="col-sm-12">
												<table class="table table-hover text-center">
													<thead>
														<tr style="background-color: #ECF0F5;">
															<td width="10%">联系人</td>
															<td>联系电话</td>
															<td>订单编号</td>
															<td>辅助码</td>
															<td>商品名称</td>
															<td>检票状态</td>
															<td>已检量</td>
															<td>已退量</td>
															<td>单价</td>
															<td>数量</td>
															<td>创建时间</td>
															<td>操作</td>
														</tr>
													</thead>
													<tbody>
													<c:forEach items="${list.items}" var="item">  
													
														<tr>
															<td >
																<p>${item.order.linkName }</p>
															</td>
															<td>
																<span>${item.order.linkMobile }</span>
															</td>
															<td>
																<p>${item.order.orderCode }</p>
															</td>
															<td>
																<span>
																	${item.order.ziyoubaoCheckNo }	
																</span>
															</td>
															<td >
																${item.goodsName }
															</td>
															<td >
																<p>
																<c:if test="${item.checkStatus==0}">
																	未检票
																</c:if>	
																<c:if test="${item.checkStatus==1}">
																	检票中
																</c:if>	
																<c:if test="${item.checkStatus==2}">
																	已检票
																</c:if>	
																</p>
															</td>
															<td >
																<p>${item.order.checkNum }</p>
															</td>
															<td >
																<p>${item.order.returnNum }</p>
															</td>
															<td >
																<p>${item.price }</p>
															</td>
															<td >
																<p>${item.order.total }</p>
															</td>
															<td >
																<p><fmt:formatDate value="${item.createTime}" type="both" /></p>
															</td>
															<td >
																<a href="javascript:void(0);" onclick="jianpiao(${item.id })">检票</a>
																<a href="javascript:void(0);" onclick="detail(${item.order.id })">明细</a>
															</td>
														</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-5">
												
											</div>
											<div class="col-sm-7">
												${list.pageStr }
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../../common/footer.jsp"/>
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- jQuery 2.2.3 -->
		<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button);
		</script>
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<!-- Morris.js charts -->
		<!-- Slimscroll -->
		<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
		<!--菜单选中脚本  -->
		<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script type="text/javascript" src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script type="text/javascript">
			function jianpiao(id){
				layer.open({
					type:2,
					title:'确定要检票吗？',
					offset:'c',
					shift:1,
					shade:0.5,
					area:['35%','45%'],
					content:'<%=path %>/admin/order/toCheckTicket?orderid='+id,
					end:function(){			
						window.location.reload();
					}
				});
			}
			function detail(id){
				layer.open({
					type:2,
					title:'详细列表',
					offset:'c',
					shade:0.8,
					area:['50%','60%'],
					btn:['关闭'],
					content:'<%=path %>/admin/order/detail?orderid='+id,
					end:function(){			
					},
					cancel:function(index){
						
						layer.close(index);
					}
				});
			}
			
			function query(pageNo,pageSize){
		    	$.ajax({
					url:"<%=path %>/admin/order/checkTicketList",
					type:"GET",
					data:{
						pageNo:pageNo,
						pageSize:pageSize,
						orderCode:$('#orderCode').val(),
						linkMobile:$('#linkMobile').val(),
						hcode:$('#hcode').val(),
					},
					cache:false,
					success:function(html){
						$("#body").html(html);
					},
					error:function(){
						
					}
				});
		    }
			
			function clearaaaa(){
				$('#orderCode').val("")
				$('#linkMobile').val("")
				$('#hcode').val("")
				
				query();
				
			}
		</script>
	</body>
</html>