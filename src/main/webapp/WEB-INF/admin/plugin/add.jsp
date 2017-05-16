<?xml version="1.0" encoding="UTF-8" ?>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/bootstrap/css/bootstrap.min.css" />
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
		<!-- Ionicons -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/dist/css/AdminLTE.min.css" />
		<!-- AdminLTE Skins. Choose a skin from the css/skins
		<!-- bootstrap wysihtml5 - text editor -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css"/>
	</head>

	<body>
		<div class="row">
			<div class="col-md-12">
			<form id="plugin-form">
			<input type="hidden" name="id" value="${plugin.id }" />
				<div class="col-md-7">
					<div class="form-group">
						<textarea class="form-control" name="script" style="margin-top: 5px;" rows="20" placeholder="请在这里输入插件脚本">${plugin.script}</textarea>
					</div>
				</div>
				<div class="col-md-5 bg-gray-light">
					<div style="margin-top: 5px;">
						<dl>
							<dt>插件名称</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">插件名称</label>
									<input class="form-control" id="name" name="name" value="${plugin.name }"/>
								</div>
							</dd>
							<dt>用户名</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">用户名</label>
									<input type="text" class="form-control" name="account" value="${plugin.account }" />
								</div>
							</dd>
							<dt>口令</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">口令</label>
									<input type="password" class="form-control" name="accessKey" value="${plugin.accessKey }" />
								</div>
							</dd>
							<dt>Key</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">Key</label>
									<input type="text" class="form-control" name="secretKey" value="${plugin.secretKey }" />
								</div>
							</dd>
							<dt>提供商</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">提供商</label>
									<input type="text" class="form-control" name="provider" value="${plugin.provider }" />
								</div>
							</dd>
							<dt>版本号</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">版本号</label>
									<input type="text" class="form-control" name="version" value="${plugin.version }" />
								</div>
							</dd>
							<dt>说明</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">说明</label>
									<textarea class="form-control" placeholder="" name="description" rows="3">${plugin.description }</textarea>
								</div>
							</dd>
						</dl>
					</div>
					<hr />
					<p>
						<a href="javascript:void(0);" onclick="add('<%=request.getContextPath() %>/admin/plugin/edit','${plugin.id}')">保存</a>
						<span>|</span>
						<c:if test="${plugin.status eq 0 }">
						<a href="javascript:void(0);" onclick="start('<%=request.getContextPath() %>/admin/plugin/start','${plugin.id}')">启用</a>
						</c:if>
						<c:if test="${plugin.status eq 1 }">
						<a href="javascript:void(0);" onclick="start('<%=request.getContextPath() %>/admin/plugin/start','${plugin.id}')">停用</a>
						</c:if>
						<span>|</span>
						<a href="javascript:void(0);" style="color: red;" onclick="del('<%=request.getContextPath() %>/admin/plugin/delete','${plugin.id}')">彻底删除</a>
					</p>
				</div>
				</form>
			</div>
		</div>
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/jQuery/jquery.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/admin/plugins/h5fileupload/js/fileinput.js" ></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js" ></script>
		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<!-- Bootstrap 3.3.6 -->
		<script src="<%=request.getContextPath() %>/resources/admin/bootstrap/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<script type="text/javascript">
		function add(url, id){
			var formdata = $("#plugin-form").serialize();
		    	$.ajax({
					url:url,
					type:"post",
					contentType:"application/x-www-form-urlencoded",
					dataType: 'json',
		            encoding:"utf-8",
					data:formdata,
					success:function(data){
						if(data.success){alert("保存成功");}
					},
					error:function(){
						alert("failure");
					}
				});
		}
		function start(url, id){
			$.post(url, {"id":id},
					function(data){
						if(data.success){
							alert("success");
							var index = parent.layer.getFrameIndex(window.name);
							parent.location.reload();
							parent.layer.close(index);
							}
						});
		}
		function del(url, id){
			$.post(url, {"id":id},
					function(data){
						if(data.success){
							alert("success");
							var index = parent.layer.getFrameIndex(window.name);
							parent.location.reload();
							parent.layer.close(index);
							}
						});
		}
		</script>
	</body>
</html>
