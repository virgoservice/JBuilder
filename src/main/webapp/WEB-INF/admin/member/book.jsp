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
		<title>预订</title>
		<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>

		<link type="text/css" href="<%=path %>/resources/index/min/-f=plugins-spot-public-css-scenic.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/min/-f=res-css-base.css,res-css-extend.css,res-css-stcalendar.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=path %>/resources/index/min/-f=res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-SuperSlide.min.js,-res-js-jquery.validate.js,-res-js-jquery.validate.addcheck.js" ></script>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-user.css,-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
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
					<a href="<%=path %>/index">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;景点 </div>
				<!--面包屑-->
				<div class="st-main-page">
					<div class="order-content">
						<form id="orderfrm" method="post" action="<%=path %>/member/order/add">
							<div class="con-order-box">
								<div class="product-msg">
									<h3 class="pm-tit"><strong class="ico01">预定信息</strong></h3>
									<dl class="pm-list"> <dt>产品编号：</dt>
										<dd>${ticket.goodsCode }</dd>
									</dl>
									<dl class="pm-list"> <dt>产品名称：</dt>
										<dd>${ticket.name }</dd>
									</dl>
									<!-- 
									<dl class="pm-list"> <dt>门票类型：</dt>
										<dd>${ticket.goodsType }</dd>
									</dl>
									 -->
									<div class="table-msg">
										<table width="100%" border="0" class="people_info" strong_margin=lkhmVs>
											<tr>
												<th width="33%" height="40" scope="col"><span class="l-con">使用日期</span></th>
												<th width="33%" scope="col">购买数量</th>
												<th width="33%" scope="col">总价格</th>
											</tr>
											<tr>
												<td height="40"> <span>
													<input type="hidden" name="list[0].ticketId" value="${ticket.id }">
													<input id=wdate class="Wdate" name="list[0].occDate" type="text" 
													onfocus="WdatePicker({skin:'default',
													disabledDays:[${ticket.weekDate}],
													disabledDates:[${dlist}],
													minDate:'<fmt:formatDate value="${ticket.beginDate}" type="both" />',
													maxDate:'<fmt:formatDate value="${ticket.endDate}" type="both" />'})" 
													onchange="modifyOther(this)"/>
									
												
												</span> </td>
												<td>
													<div class="control-box"> <span class="add-btn" onclick="less()">-</span> 
													
													<input type="text" id="dingnum" name="list[0].quantity" class="number-text" value="1" onchange="updateMes()"/> 
													
													<span class="sub-btn" onclick="add()">+</span> </div>
												</td>
												<td><span class="price suit-totalprice" id="total">￥${ticket.price }</span></td>
											</tr>
										</table>
									</div>
								</div>
								<!--预定信息-->
								<div class="product-msg">
									<h3 class="pm-tit"><strong class="ico02">联系人信息</strong></h3>
									<dl class="pm-list"> <dt><span class="st-star-ico">*</span>联系人：</dt>
										<dd><input type="text" class="linkman-text" id="linkName" name="linkName" value="" /><span class="st-ts-text hide"></span></dd>
									</dl>
									<dl class="pm-list"> <dt><span class="st-star-ico">*</span>手机号码：</dt>
										<dd><input type="text" class="linkman-text" id="linkMobile" name="linkMobile" value="" /><span class="st-ts-text hide"></span></dd>
									</dl>
									<dl class="pm-list"> <dt>电子邮箱：</dt>
										<dd><input type="text" class="linkman-text" name="linkemail" value="" /></dd>
									</dl>
									<dl class="pm-list"> <dt>订单留言：</dt>
										<dd><textarea class="order-remarks" name="buyerRemark" cols="" rows=""></textarea></dd>
									</dl>
								</div>
								<div class="order-js-box">
									<div class="total">订单结算总额：<span class="totalprice" id="total3">￥${ticket.price }</span></div>
									<div class="yz"> <input type="button" class="tj-btn" value="提交订单" onclick="save()"/> 
									<input type="text" name="checkcode" id="checkcode" class="ma-text" /> <span class="pic"><img src="<%=path %>/member/order/verifyCode?time='+Math.random()" onClick="this.src=this.src+'?math='+ Math.random()" width="80" height="32" /></span> <span class="bt">验证码：</span> </div>
								</div>
								<!--提交订单-->
							</div>
							<div class="clear"></div>
						
					</div>
					<div class="st-sidebox">
						<div class="side-order-box">
							<div class="order-total-tit">结算信息</div>
							<div class="show-con">
								<ul class="ul-cp">
									<li>
										<a class="pic" href="">
										<img src="${ticket.cover }" alt="花湖"></a>
									</li>
									<li>
										<a class="txt" href="">${ticket.name }</a>
										<p class="address"></p>
									</li>
								</ul>
								<ul class="ul-list">
									<li>使用日期：<span class="usedate" id="other"></span></li>
									<li>数量：<span class="dingnum">1</span></li>
									<li>单价：<i class="currency_sy">￥</i>${ticket.price }</li>
								</ul>
								<div class="total-price">订单总额：<span class="totalprice" id="total2">￥${ticket.price }</span></div>
							</div>
						</div>
					</div>
				</div>
				<!--订单结算信息-->
			</div>
		</div>
		<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css" rel="stylesheet" />
		<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css" rel="stylesheet" />
		<jsp:include page="../index/footer.jsp" />
		<script type="text/javascript" src="<%=path %>/resources/index/res/js/layer/layer.js"></script>
		<script type="text/javascript" src="<%=path %>/resources/index/plugins/My97DatePicker/WdatePicker.js"></script>
		<div id="calendar"></div>
		
		<script type="text/javascript">
			var tempPirce="${ticket.price}";	
		
			function less(){
				var num=$("#dingnum").val();
				if(num-1<1)
					return;
				$("#dingnum").val(num-1);
				updateMes();
			}
			
			function add(){
				var num=$("#dingnum").val();
				$("#dingnum").val(Number(num)+1);
				updateMes();
			}
			
			function updateMes(){
				var num=$("#dingnum").val();
				var total=Number(num)*Number(tempPirce); 
				total=total.toFixed(2);
				$("#total").html("￥"+total);
				$("#total2").html("￥"+total);
				$("#total3").html("￥"+total);
			}
			
			function save(){
				var name=$("#linkName").val();
				var linkMobile=$("#linkMobile").val();
				
				if(name==""){
					layer.alert("联系人不能为空")
					return false;
				}else if(linkMobile==""){
					layer.alert("手机号不能为空")
					return false;
				}
				
				if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(linkMobile))){ 
					layer.alert("手机号格式不正确！")
					return false; 
				} 
				
				var formdata = $("#orderfrm").serialize();
				
		    	$.ajax({
					url:"<%=path %>/member/order/add",
					type:"post",
					contentType:"application/x-www-form-urlencoded",
		            encoding:"utf-8",
					data:formdata,
					success:function(data){
						if(data.success){
							window.location.href="<%=path %>/member/order/toPay?orderId="+data.obj.id;
						}else{
							layer.alert("预订失败:"+data.errorMsg);
						}
					},
					error:function(){
						layer.alert("通讯错误！")
					}
				});
			}
			 
			
			function modifyOther(obj){
				$("#other").html(obj.value);
			}
			
		</script>
	</body>

</html>