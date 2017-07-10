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
    <div class="content-wrapper" style="min-height: 849px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>新建轮播</h1>
        </section>
        <section class="content">
            <form id="form" method="post" action="#" >
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-solid">
                            <div class="box-body">
                                <div class="form-horizontal">
                                    <h4>基本信息</h4>
                                    <hr>
                                    <div class="form-group">
                                        <label for="QQ" class="col-sm-2 control-label">名称</label>
                                        <div class="col-sm-9">
                                        	<input type="hidden" name="id" value='${banner.id}' id="id"/>
                                            <input type="text" class="form-control" name="name" value="${banner.name}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="tel" class="col-sm-2 control-label">标题</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="title" value="${banner.title}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="QQ" class="col-sm-2 control-label">跳转地址(填门票ID)</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="alt" value="${banner.alt}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="weibo" class="col-sm-2 control-label">排序</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="showOrder" value="${banner.showOrder}">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-horizontal">
                                    <h4></h4>
                                    <hr>
                                    <div class="form-group">
                                        <label for="QQ" class="col-sm-2 control-label">图片</label>
                                        <div class="col-sm-2">
                                            <button type="button" class="btn btn-default btn-sm" ">
                                            	<input type="file" name="file" accept="image/*" >
                                            	<c:if test="${banner.image !=null}">
                                            		<img src="${banner.image}" style="max-height: 300;max-width: 450" >
                                            	</c:if>
                                            </button>
                                        </div>
                                        <div class="col-md-7">
                                            <!-- 显示上传后的图片-->
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-md-12 text-center">
                                            <button type="button" class="btn btn-primary pull" onclick="save()">
                                                <i class="fa fa-save"></i> 保存
                                            </button>
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
<script src="<%=path %>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
    function selectThumbnail(){
        layer.open({
            type:2,
            title:'上传logo',
            shadeClose:true,
            shade:0.8,
            area:['50%','60%'],
            content:'face_upload.html',
            end:function(){
                if(''!=data.url && null != data.url){
                    $("#thumbnail").attr('src',data.url);
                    $("#content_thumbnail").attr("value",data.url);
                }
            }
        });
    }
    
    function save(){
    	//表单验证
    	var detect = new Detect();
	    detect.add('名称',$(":input[name='name']").val(),["tooLong"]);  
	    detect.add('标题',$(":input[name='title']").val(),["tooLong"]);  
	    detect.add('alt提示',$(":input[name='alt']").val(),["tooLong"]);  
	    detect.add('排序',$(":input[name='showOrder']").val(),["isNumber"]);  
	    
	    var result=detect.getResult();
	    if(result){
	    	alert(result)
	    	return;
	    }
 
    	var id=$("#id").val();
    	var orp=id?'edit':'add';
    	
    	
    	
        var formData = new FormData($("#form")[0]);  
        $.ajax({  
             url: "<%=path %>/admin/banner/"+orp ,  
             type: 'POST',  
             data: formData,  
             async: false,  
             cache: false,  
             contentType: false,  
             processData: false,  
             success: function (returndata) {  
                 alert("保存成功！");
                 window.location.href="<%=path %>/admin/banner/index";
             },  
             error: function (returndata) {  
                 alert("保存失败");  
             }  
        });  
    }
</script>
</body>

</html>