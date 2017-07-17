<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>会员中心</title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<script>
			window.SITEURL = "/";
			window.CURRENCY_SYMBOL = "￥";
		</script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-jquery.validate.js,-res-js-jquery.md5.js" ></script>
	</head>

	<body>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		
		<jsp:include page="../index/header.jsp" />
		
		<!--主导航-->
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js"></script>
		 
		<div class="big">
			<div class="wm-1200">
				<div class="st-guide">
					<a href="/">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;会员中心 </div>
				<!--面包屑-->
				<div class="st-main-page">
					<jsp:include page="member_menu.jsp" />
					<script>
						$(function() {
							$(".side-menu-group").on("click", function() {
								if(!$(this).hasClass("up")) {
									$(this).addClass("up").next(".son").addClass("hide");
								} else {
									$(this).removeClass("up").next(".son").removeClass("hide");
								}
							})
						})
					</script>
					<div class="user-order-box">
						<div class="user-home-box">
							<div class="tabnav"> 
							<a href="<%=path %>/member/order/list"><span <c:if test='${pay==null }'>class="on"</c:if> data-type="all">全部订单</span> </a>
							<a href="<%=path %>/member/order/payList"><span <c:if test='${pay==1 }'>class="on"</c:if> data-type="unpay">未付款订单</span></a>
							 </div>
							<!-- 订单切换 -->
							<div class="user-home-order">
								<div class="order-list">
									<table width="100%" border="0" body_strong="ryimVs">
										<tbody>
											<tr>
												<th width="45%" height="38" bgcolor="#fbfbfb" scope="col">订单信息</th>
												<th width="15%" height="38" bgcolor="#fbfbfb" scope="col">订单金额</th>
												<th width="10%" height="38" bgcolor="#fbfbfb" scope="col">订单票数</th>
												<th width="10%" height="38" bgcolor="#fbfbfb" scope="col">订单状态</th>
												<th width="10%" height="38" bgcolor="#fbfbfb" scope="col">订单操作</th>
											</tr>
											<c:forEach items="${list.items}" var="item">  
											
											<tr>
												<td height="114">
													<div class="con">
														<dl> <dt><a href="" target="_blank">
														<img src="${tlMap.get(item.list[0].ticketId).cover}" width="110" height="80"></a></dt>
															<dd>
																<a class="tit" href="<%=path %>/member/order/detail?orderid=${item.id}" target="_blank">${item.list[0].goodsName }</a>
																<p>订单编号：${item.orderCode }</p>
																<p>下单时间：${item.list[0].ticketId}<fmt:formatDate value="${item.createTime}" type="both" /></p>
															</dd>
														</dl>
													</div>
												</td>
												<td align="center"><span class="price"><i class="currency_sy">￥</i>${item.orderPrice }</span></td>
												<td align="center"><i class="currency_sy"></i>${item.total }</td>
												<td align="center">
												<span class="dfk"></span>
												<c:if test='${item.status==0 }'>
													等待付款
												</c:if>
												<c:if test='${item.status==1 }'>
													申请退款
												</c:if>
												<c:if test='${item.status==2 }'>
													等待消费
												</c:if>
												<c:if test='${item.status==3 }'>
													交易完成
												</c:if>
												</td>
												<td align="center">
													<c:if test="${item.payStatus==0 }">
														<a class="now-fk" href="#" onclick="payOrder(${item.id })">立即付款</a>
														<a class="now-fk" style="background:#ccc;cursor:pointer" onclick="cancelOrder(${item.id })">取消</a>
													</c:if>
													<c:if test="${item.payStatus==1&&item.total-item.returnNum-item.checkNum>0}">
														<a class="now-fk" href="#" onclick="returnTicket(${item.list[0].id },${item.total-item.checkNum })">申请退票</a>
													</c:if>
													<c:if test="${item.list[0].status==1||item.list[0].returnStatus==1}">
														<a class="order-ck" href="<%=path %>/member/order/returnTicketMes?corderId=${item.list[0].id}">退票进度</a>
													</c:if>
													
													<a class="order-ck" href="<%=path %>/member/order/detail?orderid=${item.id}">查看订单</a>
												</td>
											</tr>
											
											</c:forEach>
											
										</tbody>
									</table>
									<div class="main_mod_page clear"> </div>
									<!-- 翻页 -->
								</div>
							</div>
							<!-- 我的订单 -->
						</div>
					</div>
					<!--会员首页-->
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-layer-layer.js" ></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		
		<jsp:include page="../index/footer.jsp" />
		<script>
			$(function() {
				$("#nav_index").addClass('on');
				$(".user-msg-tj li").click(function() {
					var url = $(this).attr('data-url');
					if(url != '') {
						location.href = url;
					}
				})
			})
		</script>
		<!--订单中心用的js事件-->
		<script> 
			
			function payOrder(orderId){
				window.opener=this.window;
				window.open("<%=path %>/member/order/payTicket?orderId="+orderId);
			}
			
			function cancelOrder(orderId){
				layer.confirm('确定取消订单吗？', {
					icon: 3,
					btn: ['确定', '放弃'],
					btn2: function() {
						layer.closeAll();
					},
					btn1: function() {
						$.ajax({
							url:"<%=path %>/member/order/delete",
							type:"POST",
							data:{
								orderId:orderId,
							},
							cache:false,
							success:function(data){
								if(data.success){
									layer.confirm('取消成功', {
										icon: 3,
										btn: ['确定'],
										btn1: function() {
											window.location.reload();
										},
									})
										
								}else{
									layer.alert("取消失败:"+data.errorMsg);
								}
							},
							error:function(){
								layer.alert("取消订单出错");
							}
						});
					},
					
					cancel: function() {
						layer.closeAll();
					}
				})
			}
			
			//退票
			function returnTicket(corderId,returnNum){
				
				var num=prompt("请输入退票数量:")
				
				if(num==null)
					return ;
				
				if(num!=0){
					
					$.ajax({
						url:"<%=path %>/member/order/returnTicket",
						type:"POST",
						data:{
							corderId:corderId,
							num:num
						},
						cache:false,
						success:function(data){
							if(data.success){
								layer.confirm('申请退票成功！请等待审核', {
									icon: 3,
									btn: ['确定'],
									btn1: function() {
										window.location.reload();
									},
								})
							}else{
								layer.alert("退票失败:"+data.errorMsg);
							}
						},
						error:function(){
							layer.alert("系统错误");
						}
					});
					
				}else{
					layer.alert("请输入正确的退票数量！");
				}
				
			}
		</script>
	</body>

</html>