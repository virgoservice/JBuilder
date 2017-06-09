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

    <header class="main-header">
        <a href="#" class="logo">
            <span class="logo-mini"><b>J</b>BC</span>
            <span class="logo-lg"><b>JBuilder</b></span>
        </a>
        <nav class="navbar navbar-static-top">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">谭朝红，&nbsp;你好！</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                <p>谭朝红 - 超级管理员</p>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="user_profilet.html" class="btn btn-default btn-flat">资料</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">退出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <section class="sidebar">
            <ul class="sidebar-menu">
                <li class="treeview">
                    <a href="index.html">
                        <i class="fa fa-dashboard"></i> <span>JBuilder 面板</span>
                    </a>
                </li>
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-laptop"></i>
                        <span>内容</span>
                        <span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="article_list.html" ><i class="fa fa-align-justify"></i>所有文章</a>
                        </li>
                        <li>
                            <a href="article_add.html"><i class="fa fa-pencil-square-o"></i> 撰写文章</a>
                        </li>
                        <li >
                            <a href="category_list.html"><i class="fa fa-map-signs"></i> 所有栏目</a>
                        </li>
                        <li>
                            <a href="pages/UI/sliders.html"><i class="fa fa-safari"></i> 新建栏目</a>
                        </li>
                        <li>
                            <a href="pages/UI/timeline.html"><i class="fa fa-object-group"></i> 所有轮播</a>
                        </li>
                        <li>
                            <a href="pages/UI/modals.html"><i class="fa fa-object-ungroup"></i> 新建轮播</a>
                        </li>
                        <li class="active">
                            <a href="pages/UI/timeline.html"><i class="fa fa-share-alt-square"></i> 所有友链</a>
                        </li>
                        <li>
                            <a href="pages/UI/modals.html"><i class="fa fa-share-alt"></i> 新建友链</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-television"></i>
                        <span>页面</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="pages/UI/general.html"><i class="fa  fa-list-ol"></i> 所有页面</a>
                        </li>
                        <li>
                            <a href="pages/UI/icons.html"><i class="fa  fa-file-text"></i> 网站首页</a>
                        </li>
                        <li>
                            <a href="pages/UI/buttons.html"><i class="fa fa-list"></i> 栏目页面</a>
                        </li>
                        <li>
                            <a href="pages/UI/sliders.html"><i class="fa fa-th-large"></i> 文章页面</a>
                        </li>
                        <li>
                            <a href="pages/UI/timeline.html"><i class="fa  fa-search"></i> 搜索页面</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-file-photo-o"></i>
                        <span>附件</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="attachment_list.html"><i class="fa fa-copy"></i> 所有附件</a>
                        </li>
                        <li>
                            <a href="attachment_upload.html"><i class="fa  fa-upload"></i> 上传附件</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa  fa-user"></i>
                        <span>用户</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="user_list.html"><i class="fa fa-users"></i> 所有用户</a>
                        </li>
                        <li>
                            <a href="user_add.html"><i class="fa fa-user-plus"></i> 添加用户</a>
                        </li>
                        <li>
                            <a href="user_profilet.html"><i class="fa fa-clipboard"></i> 我的资料</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-file-code-o"></i>
                        <span>模板</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="pages/UI/general.html"><i class="fa fa-clone"></i> 所有模板</a>
                        </li>
                        <li>
                            <a href="pages/UI/icons.html"><i class="fa  fa-hdd-o"></i> 安装模板</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-puzzle-piece"></i>
                        <span>插件</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="pages/UI/general.html"><i class="fa fa-dropbox"></i> 所有插件</a>
                        </li>
                        <li>
                            <a href="pages/UI/icons.html"><i class="fa  fa-retweet"></i> 安装插件</a>
                        </li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-gears"></i>
                        <span>设置</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="site_config.html"><i class="fa fa-gear"></i> 常规设置</a>
                        </li>
                        <li>
                            <a href="pages/UI/icons.html"><i class="fa  fa-heartbeat"></i> 所有角色</a>
                        </li>
                        <li>
                            <a href="pages/UI/buttons.html"><i class="fa fa-heart"></i> 新添角色</a>
                        </li>
                        <li>
                            <a href="pages/UI/timeline.html"><i class="fa fa-gavel"></i> SEO设置</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

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
                                            <input type="text" class="form-control" name="title" value="${banner.name}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="QQ" class="col-sm-2 control-label">alt提示</label>
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

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.4.0
        </div>
        <strong>Copyright &copy; 2017-2020 <a href="http://www.ramostear.com">Ramostear Studio</a>.</strong> All rights reserved.
    </footer>
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