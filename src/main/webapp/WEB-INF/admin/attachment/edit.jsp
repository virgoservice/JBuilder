<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/dist/css/AdminLTE.min.css">
		<!-- AdminLTE Skins. Choose a skin from the css/skins
		<!-- bootstrap wysihtml5 - text editor -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css"/>
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-7">
					<img src="${attachment.url }" class="img-responsive margin img-rounded"/>
				</div>
				<div class="col-md-5 bg-gray-light">
					<div style="margin-top: 10px;" class="margin-bottom">
						<strong>文件名:</strong>
						<span class="filename">${attachment.name }</span>
					</div>
					<div class="margin-bottom">
						<strong>文件类型:</strong>
						<span class="filename">${attachment.type }</span>
					</div>
					<div class="margin-bottom">
						<strong>上传时间:</strong>
						<span class="filename">${attachment.createTime }</span>
					</div>
					<div class="margin-bottom">
						<strong>文件大小:</strong>
						<span class="filename">${attachment.size }KB</span>
					</div>
					<div class="margin-bottom">
						<strong>分辨率:</strong>
						<span class="filename">5400 x 882</span>
					</div>
					<hr />
					<div>
						<dl>
							<dt>URL</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">URL</label>
									<textarea class="form-control" disabled="disabled" rows="2">${attachment.url }</textarea>
								</div>
							</dd>
							<dt>标题</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">标题</label>
									<input type="text" class="form-control" id="title" value="${attachment.title}" />
								</div>
							</dd>
							<dt>说明</dt>
							<dd>
								<div class="form-group">
									<label class="sr-only">说明</label>
									<textarea class="form-control" id="description" placeholder="${attachment.description }" rows="3"></textarea>
								</div>
							</dd>
						</dl>
					</div>
					<hr />
					<p>
						<a href="javascript:void(0);" onclick="edit('<%=request.getContextPath() %>/admin/attachment/edit','${attachment.id }')">保存</a>
						<span>|</span>
						<a href="javascript:void(0);" style="color: red;" onclick="del('<%=request.getContextPath() %>/admin/attachment/delete','${attachment.id }')">彻底删除</a>
					</p>
				</div>
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
		<script src="<%=request.getContextPath() %>/resources/admin/dist/js/common.js"></script>
		<script type="text/javascript" >
		function edit(url, id){
			var title = $("#title").val();
			var desc = $("#description").val();
			$.post(url, {"id":id, "title":title, "description":desc},
					function(data){
						alert(data);
						var index = parent.layer.getFrameIndex(window.name);
						parent.location.reload();
						parent.layer.close(index);
						});
		}
		
		function del(url, id){
			$.post(url, {"id":id}, 
				function(data){
				alert(data);
				var index = parent.layer.getFrameIndex(window.name);
				parent.location.reload();
				parent.layer.close(index);
				});
		}
		</script>
	</body>
</html>
