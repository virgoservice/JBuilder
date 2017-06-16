<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Dashboard</title>
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/editormd/css/editormd.css" />
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

<body class="hold-transition skin-blue sidebar-mini" id="body">
<div class="wrapper">

    <jsp:include page="../../common/header.jsp" />
	<jsp:include page="../../common/menu.jsp" />
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>编辑文章</h1>
				</section>
				<section class="content" style="z-index: 9999;">
					<form action="#" id="form" method="post">
						<div class="row">
							<div class="col-md-9">
								<div class="form-group">
									<input type=hidden name="id" value="${article.id}" id="id">
									<input type=hidden name="categoryId" id="categoryId" value="${article.categoryId}">
									<input type=hidden name="categoryName" id="categoryName" value="${article.categoryName}">
									<input type="text" id="title" name="title" value="${article.title}"  class="form-control input-lg" placeholder="在此输入标题"/>
								</div>
								<div class="pull-right">
									<a href="javascript:void(0);" onclick="changeEditor()">切换编辑器</a>
								</div>
								<label class="label-primary label">
									网址：
									<span>http://localhost:8080/alistar/article/</span>
									<span class="editable editable-click">标题</span>
								</label>
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">文章编辑器</h3>
										<div class="box-tools">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body no-padding">
										<div class="editormd" id="test-editormd" style="border: hidden;">
											<textarea class="editormd-markdown-textarea" name="contentCode">${article.contentCode}</textarea>
											<textarea class="editormd-markdown-textarea" name="content" id="content">${article.content}</textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="box box-solid" style="display: block;padding: 10px 15px; position: relative;">
									<div style="padding-right: 95px; line-height: 30px; font-size: 13px;">
										<button type="button" class="btn btn-default btn-sm" style="float: right; margin-right: -105px;" onclick="save(1)">保存</button>
										<button type="button" class="btn btn-primary btn-sm" style="float: right;margin-right: -50px;" onclick="save(2)">发布</button>
										<a href="#" onclick="save(0)">移置到草稿箱</a>
									</div>
								</div>
								
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">栏目</h3>
										<div class="box-tools">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body" style="padding: 10px 0;">
									<div id="tree"></div>
								</div>
								</div>
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">文章封面</h3>
										<div class="box-tools">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body no-padding">
										<ul class="nav">
											<li class="">
												<div style="min-height: 100px;">
													<c:if test="${article.cover !=null}">
	                                            		<img src="${article.cover}" style="max-width: 100%;" >
	                                            	</c:if>
													
												</div>
												<div style="clear: both;"></div>
											</li>
											<li style="border-top: 1px solid #f4f4f4; display: block;padding: 10px 15px;position: relative;">
												<input type="file" name="file" accept="image/*" class="btn btn-default btn-sm">
                                            	
												
												<div style="clear: both;"></div>
											</li>
										</ul>
									</div>
								</div>
								<div class="box box-solid">
									<div class="box-header with-border">
										<h3 class="box-title">属性设置</h3>
										<div class="box-tools">
											<button type="button" class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="box-body no-padding">
										<div class="nav-tabs-custom">
											<ul class="nav nav-tabs">
												<li class="active">
													<a href="#tab_1" data-toggle="tab" aria-expanded="true">常用</a>
												</li>
												<li>
													<a href="#tab_seo" data-toggle="tab" aria-expanded="false">SEO</a>
												</li>
												<li>
													<a href="#tab_remark" data-toggle="tab" aria-expanded="false">备注</a>
												</li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane form-horizontal active" id="tab_1">
													<div class="form-group">
														<label for="_author" class="col-sm-3 control-label">作者</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="author" id="_author"  value="${article.author }"/>
														</div>
													</div>
													<div class="form-group">
														<label for="_con" class="col-sm-3 control-label">评论</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="" id="_con"  value=""/>
														</div>
													</div>
													<div class="form-group">
														<label for="_tag" class="col-sm-3 control-label">标签</label>
														<div class="col-sm-9">
															<input type="text" class="form-control" name="tag" id="_tag"  value="${article.tag }"/>
														</div>
													</div>
													<div class="form-group">
														<label for="_tag" class="col-sm-3 control-label">简介</label>
														<div class="col-sm-9">
															<textarea class="form-control" name="intro" placeholder="">${article.intro }</textarea>
														</div>
													</div>
													
												</div>
												<div class="tab-pane" id="tab_seo">
													<div class="form-group">
														<textarea class="form-control" rows="2" name="keyword" placeholder="请输入关键字">${article.keyword }</textarea>
													</div>
													<div class="form-group">
														<textarea class="form-control" rows="2" name="description" placeholder="请输入描述">${article.description }</textarea>
													</div>
												</div>
												<div class="tab-pane" id="tab_remark">
													<div class="form-group">
														<textarea class="form-control" rows="3" name="mark" placeholder="请输入备注信息"></textarea>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>							
					</form>
				</section>
			</div>
    
    <jsp:include page="../../common/footer.jsp" />
    <div class="control-sidebar-bg"></div>
</div>
<!-- jQuery 2.2.3 -->
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/jQuery/jquery.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/editormd/editormd.min.js"></script>
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

<script src="<%=path %>/resources/admin/dist/js/bootstrap-treeview.min.js"></script>
<script src="<%=path %>/resources/admin/dist/css/bootstrap-treeview.min.css"></script>
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
			var testEditor;
            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "100%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "<%=path %>/resources/admin/plugins/editormd/lib/",
                    //theme : "dark",
                    //previewTheme : "dark",
                    //editorTheme : "pastel-on-dark",
                    //markdown : md,
                    codeFold : true,
                    //saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
                    //searchReplace : true,
                    //htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启    
                    emoji : true,
                    taskList : true,
                    tocm            : true,         // Using [TOCM]
                    tex : true,                   // 开启科学公式TeX语言支持，默认关闭
                    flowChart : true,             // 开启流程图支持，默认关闭
                    sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,
                    imageUpload : true,
                    imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                    imageUploadURL : "./php/upload.php",
                });
            });
        </script>
<script type="text/javascript">
    
    function save(status){
    	//表单验证
    	var detect = new Detect();
	    detect.add('栏目',$(":input[name='categoryId']").val(),["tooLong"]);  
	    detect.add('标题',$(":input[name='title']").val(),["tooLong"]);
	    
	    var result=detect.getResult();
	    if(result){
	    	alert(result)
	    	return;
	    }
 
    	var id=$("#id").val();
    	var orp=id?'edit':'add';
    	
    	
    	var formData = new FormData($("#form")[0]);
        $.ajax({  
             url: "<%=path %>/admin/article/"+orp+"?status="+status,
             type: 'POST',  
             data: formData,  
             async: false,  
             cache: false,  
             contentType: false,  
             processData: false,  
             success: function (returndata) {  
            	 window.location.href="<%=path %>/admin/article/index";
             },  
             error: function (returndata) {  
                 alert("保存失败");  
             }  
        });  
    }
    
      $(function () {
        $.ajax({
      		url:"/JBuilder/admin/category/getCategory",
      		type:"get",
      		success:function(data){
      			$('#tree').treeview({
      				data : data,
      				levels:1,
      				onNodeSelected: function(event, node) {
      					$("#categoryId").val(node.id);
      					$("#categoryName").val(node.text);
      		        }
      			});
      			
      			var categoryValue='${article.categoryId}';//编辑文章的时候设置值
      			if(categoryValue){
      				$('#tree').treeview('expandAll', {levels:99});
      				var nodeId=$("li[data-id='"+categoryValue+"']").attr("data-nodeid");
      				
      				$('#tree').treeview('selectNode', [~~nodeId]);
      				
      			}
      		}
      	});

	})
</script>
</body>

</html>