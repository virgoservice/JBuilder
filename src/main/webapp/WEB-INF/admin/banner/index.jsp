<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  

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

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	<jsp:include page="../../common/header.jsp" />
	<jsp:include page="../../common/menu.jsp" />
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="min-height: 849px;">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> 所有轮播</h1>
        </section>
        <section class="content">
            <div class="row" style="padding: 0 15px 10px 15px;">
                <shiro:hasPermission name="banner:add">
					<a href="<%=path %>/admin/banner/add" class="btn btn-primary btn-sm">新增</a>
				</shiro:hasPermission>
				
                <form class="form-horizontal col-sm-3" method="post" style="float: right;" action="#">
                    <div class="input-group input-group-sm">
                        <input id="search" class="form-control" type="search" value="" name="k" placeholder="请输入关键词">
                        <span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-flat" onclick="query()">搜索</button>
								</span>
                    </div>
                </form>
            </div>
            <div class="row" style="padding: 0 15px 10px 15px;">
                <!--
                <div style="float: left">
                    <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;" onclick="openAdd(this)">
                        <i class="fa fa-download"></i> 新增轮播图
                    </button>
                </div>
                 -->
                <div style="float: left;">
                </div>
            </div>
            <div id="table"></div>
            
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
    
    function edit(id){
    	window.location.href="<%=path %>/admin/banner/edit?id="+id;
    }
    
    function del(id){
    	$.ajax({
			url:"<%=path %>/admin/banner/delete",
			type:"get",
			data:{'id':id},
			success:function(html){
				query();
			},
			error:function(){
				
			}
		});
    }
    
    function query(pageNo,pageSize){
    	var queryData={};
    	queryData.name=$('#search').val()
    	
    	$.ajax({
			url:"<%=path %>/admin/banner/list",
			type:"get",
			data:{
				pageNo:pageNo,
				pageSize:pageSize,
				search:JSON.stringify(queryData)
			},
			cache:false,
			success:function(html){
				$("#table").html(html);
			},
			error:function(){
				
			}
		});
    }
    
    
    query();
    
    let change=id=>{
    	$.ajax({
			url:"<%=path %>/admin/banner/change",
			type:"post",
			data:{'id':id},
			success:function(data){
				window.location.reload();
			},
			error:function(){
				
			}
		});
    }
</script>
</body>

</html>