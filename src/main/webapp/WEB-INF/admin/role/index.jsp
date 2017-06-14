<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>JBuilder 2 | 控制台</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/iCheck/flat/blue.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css">

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
    <aside class="main-sidebar">
        <section class="sidebar">
            <ul class="sidebar-menu">
                <li class="treeview">
                    <a href="index.html">
                        <i class="fa fa-dashboard"></i> <span>JBuilder 面板</span>
                    </a>
                </li>
                <li class="treeview">
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
                        <li>
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
                        <li>
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
                <li class=" treeview">
                    <a href="#">
                        <i class="fa  fa-user"></i>
                        <span>用户</span>
                        <span class="pull-right-container">
					            	<i class="fa fa-angle-left pull-right"></i>
					            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li >
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
                <li class="treeview active">
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
                        <li class="active">
                            <a href="<%=path %>/admin/role/index"><i class="fa  fa-heartbeat"></i> 所有角色</a>
                        </li>
                        <li>
                            <a href="<%=path %>/admin/role/add"><i class="fa fa-heart"></i> 新添角色</a>
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
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> 角色列表</h1>
        </section>
        <section class="content">
            <div class="row" style="padding: 0 15px 10px 15px;">
                <ul class="list-inline" style="float: left;">
                    <li class="all active">
                        <a href="#" class="current">
                            全部 <span class="count">(10)</span>
                        </a>|
                    </li>
                    <li class="all">
                        <a href="#" class="current">
                            管理员 <span class="count">(3)</span>
                        </a>|
                    </li>
                    <li class="all">
                        <a href="#" class="current">
                            编辑 <span class="count">(7)</span>
                        </a>
                    </li>
                </ul>
                <form class="form-horizontal col-sm-3" method="post" style="float: right;" action="#">
                    <div class="input-group input-group-sm">
                        <input id="#" class="form-control" type="search"  value="" name="k" placeholder="请输入关键词"/>
                        <span class="input-group-btn">
									<button type="button" class="btn btn-primary btn-flat">搜索</button>
								</span>
                    </div>
                </form>
            </div>
            <div class="row" style="padding: 0 15px 10px 15px;">
                <div style="float: left;">
                    <select class="form-control input-sm">
                        <option value="">批量操作</option>
                    </select>
                </div>
                <div style="float: left;">
                    <form action="#" method="post">
                        <input type="hidden" name="cid"/>
                        <input type="hidden" name="keyword"/>
                        <input type="submit"  class="btn btn-block btn-sm btn-default" value="筛选"/>
                    </form>
                </div>
            </div>
            <div id="role-table"></div>
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
<!-- Bootstrap WYSIHTML5 -->
<script src="<%=path %>/resources/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="<%=path %>/resources/admin/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<%=path %>/resources/admin/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<%=path %>/resources/admin/dist/js/app.min.js"></script>
<script src="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/layer.js"></script>
<script type="text/javascript">
	query();
	function query(pageNo,pageSize){
		$.ajax({
			url:"<%=path %>/admin/role/list",
			type:"GET",
			data:{
				pageNo:pageNo,
				pageSize:pageSize
			},
			cache:false,
			success:function(html){
				$("#role-table").html("");
				$("#role-table").html(html);
			},
			error:function(){
				alert("未处理");
			}
		});
	}
	function del(id){
		top.layer.open({
			title:false,
			icon:2,
			content:"该操作不可逆！确认删除该角色吗？",
			offset:'15px',
			btn:['确认删除'],
			btnAlign:'c',
			yes:function(index){
				$.ajax({
					url:"<%=path %>/admin/role/del",
					type:"POST",
					data:{
						id:id,
					},
					contentType:"application/x-www-form-urlencoded",
					encoding:"utf-8",
					cache:false,
				});
				location.reload();
				layer.close(index);
			},
			cancel:function(index){
				layer.close(index);
			}
		});
	}
</script>

</body>

</html>