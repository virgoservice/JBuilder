<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/timepicker/bootstrap-timepicker.min.css">
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" href="<%=path %>/resources/admin/plugins/h5fileupload/css/fileinput.css"/>
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
			<section class="content-header">
				<h1>编辑景点信息</h1>
			</section>
			<section class="content" style="z-index: 9999;">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="#tab_info" data-toggle="tab" aria-expanded="true" style="font-size:1.2em">票务信息</a>
					</li>
					<li>
						<a href="#tab_image" data-toggle="tab" aria-expanded="false" style="font-size:1.2em">景点图片</a>
					</li>
					<li>
						<a href="#tab_intro" data-toggle="tab" aria-expanded="false" style="font-size:1.2em">景点介绍</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane form-horizontal active" id="tab_info">
						<div class="box box-solid">
							<form action="./add" id="form" method="post">
							<input type="hidden" name="id" id="id" value="${ticket.id }" />
							<div class="box-body">
								<div class="row">
									<div class="col-md-9">
										<div class="form-group">
											<label for="_author" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>所属景区</span>
											</label>
											<div class="col-sm-9">
												<select  class="form-control" name="scenicId" id="scenicId">
												<c:forEach items="${scenicList}" var="scenic">
												<c:if test="${scenic.id eq ticket.scenicId }">
													<option value="${scenic.id }" selected="selected">${scenic.name}</option>
												</c:if>
												<c:if test="${scenic.id ne ticket.scenicId }">
													<option value="${scenic.id }">${scenic.name}</option>
												</c:if>
												</c:forEach>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="_author" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>选择分组</span>
											</label>
											<div class="col-sm-9">
												<select class="form-control" id="groupId" name="groupId">
														<option value="0">不分组</option>
													<c:forEach items="${groupList}" var="item">
														<c:choose>
														    <c:when test="${item.id eq ticket.groupId }">
																<option value="${item.id }" selected="selected">${item.name}</option>
														    </c:when>
														    <c:otherwise>
																<option value="${item.id }">${item.name}</option>
														    </c:otherwise>
														</c:choose>
													</c:forEach>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="_name" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>门票名称</span>
											</label>
											<div class="col-sm-9">
												<input type="text" id="name" name="name" value="${ticket.name}"  class="form-control" placeholder=""/>
											</div>
										</div>
<!-- 										
								 		<div class="form-group">
											<label for="_nameEn" class="col-sm-3 control-label">英文名称</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="nameEn" id="nameEn"  value=""/>
											</div>
										</div>
										
										<div class="form-group">
											<label for="_goodsCode" class="col-sm-3 control-label">商品编号</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="goodsCode" id="goodsCode"  value="${ticket.goodsCode }"/>
											</div>
										</div>
										 -->

										<div class="form-group">
											<label for="_price" class="col-sm-3 control-label">门票原价</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="price" id="price"  value="${ticket.price }"/>
											</div>
										</div>

										<div class="form-group">
											<label for="_shopPrice" class="col-sm-3 control-label">线上特价</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="shopPrice" id="shopPrice"  value="${ticket.shopPrice}"/>
											</div>
										</div>

										<div class="form-group">
											<label for="_stock" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>库存</span>
											</label>
											<div class="col-sm-9">
												<input type="text" id="stock" name="stock" value="${ticket.stock}" />
											</div>
										</div>

										<div class="form-group">
											<label for="_goodsType" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>票类</span>
											</label>
											<div class="col-sm-9">
												<select id="goodsType" class="form-control" name="goodsType" >
													<option value="1">成人票</option>
													<option value="2">儿童票</option>
													<option value="3">特价票</option>
													<option value="4">测试票</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="_groupTickets" class="col-sm-3 control-label">
												<span style="color:red;">*</span><span>团体票</span>
											</label>
											<div class="col-sm-9">
												<c:if test="${ticket.groupTickets eq false}">
												<input type="radio" id="groupTickets" name="groupTickets" checked="checked" value="0" />否
												<input type="radio" id="groupTickets" name="groupTickets" value="1" />是
												</c:if>
												<c:if test="${ticket.groupTickets eq true}">
												<input type="radio" id="groupTickets" name="groupTickets" value="0" />否
												<input type="radio" id="groupTickets" name="groupTickets" checked="checked" value="1" />是
												</c:if>
											</div>
										</div>

										<div class="form-group">
											<label for="_beginDate" class="col-sm-3 control-label">生效日期</label>
											<div class="col-sm-3">
												<input class="datepicker" type="text" name="beginDate" id="beginDate" value="<fmt:formatDate type="DATE" value='${ticket.beginDate}' pattern='yyyy-MM-dd'/>" />
											</div>
											<label for="_endDate" class="col-sm-2 control-label">截止日期</label>
											<div class="col-sm-3">
												<input class="datepicker" type="text" name="endDate" id="endDate" value="<fmt:formatDate type="DATE" value='${ticket.endDate}' pattern='yyyy-MM-dd'/>" />
											</div>
										</div>

										<div class="form-group">
											<label for="_checkTime" class="col-sm-3 control-label">开始检票时间</label>
											<div class="col-sm-3">
												<div class="input-group bootstrap-timepicker timepicker">
										            <input id="checkTime" name="checkTime" type="text" class="form-control input-small datepicker" value="<fmt:formatDate type="TIME" value='${ticket.checkTime}' pattern='HH:mm'/>" />
										        </div>
											</div>
											<label for="_stopCheckTime" class="col-sm-2 control-label">停止检票时间</label>
											<div class="col-sm-3">
										        <div class="input-group bootstrap-timepicker timepicker">
										            <input id="stopCheckTime" name="stopCheckTime" type="text" class="form-control input-small datepicker" value="<fmt:formatDate type="TIME" value='${ticket.stopCheckTime}' pattern='HH:mm'/>" />
										        </div>
											</div>
										</div>

										<div class="form-group">
											<label for="_con" class="col-sm-3 control-label">有效星期</label>
											<div class="col-sm-9">
												<div class="form-control" id="multi-select-weekDay" style="padding-bottom:30px;" >
													<input type="checkbox" name="weekDate" value="0">每周日
													<input type="checkbox" name="weekDate" value="1">每周一
													<input type="checkbox" name="weekDate" value="2">每周二
													<input type="checkbox" name="weekDate" value="3">每周三
													<input type="checkbox" name="weekDate" value="4">每周四
													<input type="checkbox" name="weekDate" value="5">每周五
													<input type="checkbox" name="weekDate" value="6">每周六
													<a class="btn btn-default btn-xs" href="javascript:void(0);" onclick="clearWeekDate();">清空</a>
													<a class="btn btn-info btn-xs" href="javascript:void(0);" onclick="checkWeekDate();">全选</a>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label for="_status" class="col-sm-3 control-label">启用/禁用</label>
											<div class="col-sm-9">
												<c:if test="${ticket.status eq 0}">
												<input type="radio" name="status" id="status" checked="checked" value="0"/>禁用
												<input type="radio" name="status" id="status" value="1"/>启用
												</c:if>
												<c:if test="${ticket.status eq 1}">
												<input type="radio" name="status" id="status" value="0"/>禁用
												<input type="radio" name="status" id="status" checked="checked" value="1"/>启用
												</c:if>
											</div>
										</div>
<!-- 
										<div class="form-group">
											<label for="_description" class="col-sm-3 control-label">description</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="description" id="description"  value=""/>
											</div>
										</div>
										<div class="form-group">
											<label for="_description" class="col-sm-3 control-label">sellout</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" name="sellout" id="sellout"  value=""/>
											</div>
										</div> -->
									</div>
								</div>
							</div>
							<div class="box-footer">
								<div class="row">
									<div class="col-sm-10">
									</div>
									<div class="col-sm-2">
										<button type="submit" class="btn btn-primary btn-default margin">确定</button>
										<a href="<%=path %>/admin/ticket/index" class="btn btn-default margin">返回列表</a>
									</div>
								</div>
							</div>
							</form>
						</div>
					</div>
					<div class="tab-pane" id="tab_image">
						<div class="box box-solid">
							<div class="box-body">
								<ul class="list-unstyled col-xs-12">
									<c:forEach items="${imgList }"  begin="0" end="4" var="ticketAttachment">
					 				<li class="col-xs-2 margin-bottom">
					 					<img src="${ticketAttachment.attachmentUrl }?imageView2/2/h/250" class="img-thumbnail img-responsive"/>
					 				</li>
						 			</c:forEach>
								</ul>
								<ul class="list-unstyled col-xs-12">
									<c:forEach items="${imgList }"  begin="5" end="9" var="ticketAttachment">
					 				<li class="col-xs-2 margin-bottom">
					 					<img src="${ticketAttachment.attachmentUrl }?imageView2/2/h/250" class="img-thumbnail img-responsive"/>
					 				</li>
						 			</c:forEach>
								</ul>
							</div>
								<div class="box-footer">
									<form action="../addImage" method="post" class="form-horizontal" style="padding: 0 15px 0 15px;" id="article-form">
									<%-- <input type="hidden" id="ticketId" name="ticketId" value="${ticketId }" /> --%>
									<input type="hidden" id="useof" name="useof" value="1" />
						 			<div class="form-group">
						 				<input type="file" id="file" name="file" multiple="multiple"/>
						 			</div>
						 			<p class="text-center" style="color:#808080;font-size: 16px;">最大上传文件大小为100MB</p>
						 			</form>
								</div>
								<div class="row">
									<div class="col-sm-10">
									</div>
									<div class="col-sm-2">
										<button type="button" class="btn btn-primary btn-default margin" onclick="finishAddImage()">确定</button>
										<a href="<%=path %>/admin/ticket/index" class="btn btn-default margin">返回列表</a>
									</div>
								</div>
							</div>
					</div>
					<div class="tab-pane" id="tab_intro">
						<div class="box box-solid">
							<form action="./addIntro" method="post" id="ckeditor-form" >
								<input type="hidden" id="ticketId" name="ticketId" value="${ticket.id}" />
								<div class="box-body">
								<textarea id="TextArea1" name="content" class="ckeditor"></textarea>
								</div>
								<div class="box-footer">
									<div class="row">
										<div class="col-sm-10">
										</div>
										<div class="col-sm-2">
											<button type="submit" class="btn btn-primary btn-default margin">确定</button>
											<a href="<%=path %>/admin/ticket/index" class="btn btn-default margin">返回列表</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>

		<jsp:include page="../../common/footer.jsp"/>
		<div class="control-sidebar-bg"></div>
	</div>

<input type="hidden" id="ctx" value="<%=path %>" />
<input type="hidden" id="ticket-week" value="${ticket.weekDate }" />
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<%=path %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
<script src="<%=path %>/resources/admin/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="<%=path %>/resources/admin/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="<%=path %>/resources/admin/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script src="<%=path %>/resources/admin/plugins/h5fileupload/js/fileinput.min.js" ></script>
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script src="<%=path %>/resources/admin/plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	$(function(){
		CKEDITOR.replace("TextArea1", { toolbar:'Full', height:500 });
	});
	
	function finishAddImage(){
		window.location.href="<%=path%>" + "/admin/ticket/addIntro?ticketId=" + $("#ticketId").val();
	}
</script>
<script type="text/javascript">
	$(function(){
		var ticketId = $("#ticketId").val();
		console.log(ticketId);
		$("#file").fileinput({
			 language: 'zh',
	         uploadUrl: '<%=path%>/admin/ticket/addImage',
	         allowedFileExtensions : ['jpg', 'png','bmp','gif'],
	         minFileCount:1,
	         maxFileCount:10,
             uploadExtraData:{ticketId:ticketId, useof:"2"}
		}).on("fileuploaded",function(even,data){
			var res = $.parseJSON(data.response);
		});
	});
</script>
<script type="text/javascript">
    $(function () {
    	$("#goodsType").find("option:eq(${ticket.goodsType} -1)").attr('selecetd', 'selected');
        $("#beginDate").datepicker({
            language: "zh-CN",
            autoclose: true,//选中之后自动隐藏日期选择框
            clearBtn: true,//清除按钮
            todayBtn: true,//今日按钮
            format: "yyyy-mm-dd"
        });
        $("#endDate").datepicker({
            language: "zh-CN",
            autoclose: true,//选中之后自动隐藏日期选择框
            clearBtn: true,//清除按钮
            todayBtn: true,//今日按钮
            format: "yyyy-mm-dd"
        });

        $("#checkTime").timepicker({
            minuteStep: 1,
            showSeconds: false,
            showMeridian: false,
            defaultTime: false
        });
        $("#stopCheckTime").timepicker({
            minuteStep: 1,
            showSeconds: false,
            showMeridian: false,
            defaultTime: false
        });
        
        //
        var weekDateStr = $("#ticket-week").val();
        var array = weekDateStr.split(",");
        for(var i = 0; i < array.length; i++){
        	console.log(array[i]);
			$("#multi-select-weekDay").find("input:checkbox:eq(" + array[i] + ")").prop({checked:true});
        }
    });
    
	function clearWeekDate(){
		$("#multi-select-weekDay").find("input:checkbox").removeAttr("checked");
	}
	
	function checkWeekDate(){
		$("#multi-select-weekDay").find("input:checkbox").prop({checked:true});
	}
</script>
<script type="text/javascript">
$(document).ready(function() {
	$("#multiselect_weekday").multiselect({
		buttonText: function(a) {
			if(a.length == 0) {
				return '未选中 <b class="caret"></b>'
			} else {
				var b = "";
				a.each(function() {
					b += $(this).text() + ", "
				});
				if(a.length != 7) {
					$("#weekDay-toggle").text("全选")
				} else {
					$("#weekDay-toggle").text("全不选")
				}
				return b.substr(0, b.length - 2) + ' <b class="caret"></b>'
			}
		}
	});
});
</script>


</body>
</html>
