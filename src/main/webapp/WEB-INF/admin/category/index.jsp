<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <li class="active">
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
                        <li >
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
    <div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1> 栏目分类</h1>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-4">
							<div class="box box-solid">
								<div class="box-body">
							<form  method="post" id="form">
								<h4>新的栏目分类</h4>
								<div class="form-group">
									<label for="tag-name" class="input-title">名称</label>
									<input type="hidden" id="id" name="id" value=""/>
									<input type="text" name="name" class="form-control" value="" />
									<p>这将是它在站点上显示的名字</p>
								</div>
								<div class="form-group">
									<label for="tag-name1" class="input-title">关键词</label>
									<input type="text" name="keyword" class="form-control" value="" />
									<p>SEO优化用</p>
								</div>
								<div class="form-group">
									<label for="tag-name1" class="input-title">排序</label>
									<input type="text" name="showOrder" class="form-control" value="0"  maxlength="10"/>
								</div>
								<div class="form-group">
									<label class="input-title">父节点</label>
									<select name="parentId" class="form-control input-sm" id="parentId">
										<option value="">无</option>
									</select>
									<div style="clear: both;"></div>
								</div>
								<div class="form-group">
									<label class="input-title">描述</label>
									<textarea class="form-control" name="description" rows="3"></textarea>
									<p>分类的描述内容，是否显示决定于模板</p>
								</div>
								<!-- 
								<div class="form-group">
									<label for="slug" class="input-title">是否添加到导航菜单</label>
									<div class="checkbox">
										<label>
											<input type="checkbox" name="" value="true" />添加到导航菜单
										</label>
									</div>
								</div>
								 -->
								<button type="button" onclick="save()" class="btn btn-primary">保 存</button>
								<button type="button" onclick="remove()" class="btn">重 置</button>
							</form>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="row" style="padding: 0 15px 10px 15px;">
								<div style="float: left;">
									<select class="form-control input-sm">
										<option value="">全部分类</option>
										<c:forEach items="${plist}" var="item">
										<option value="${item.id}">${item.name }</option>
										</c:forEach>
									</select>
								</div>
								<div style="float: left;">
									<select class="form-control input-sm">
										<option value="">全部专题</option>
									</select>
								</div>
								<div style="float: left;">
									<input type="submit"  class="btn btn-block btn-sm btn-default" value="筛选" onclick="query()"/>
								</div>
							</div>
							<div id="table"></div>
						</div>
					</div>
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
    
    function save(){
    	//表单验证
    	var detect = new Detect();
	    detect.add('名称',$(":input[name='name']").val(),["nameLength"]);  
	    detect.add('关键词',$(":input[name='keyword']").val(),["nameLength"]);
	    detect.add('排序',$(":input[name='showOrder']").val(),["isNumber"]);
	    var result=detect.getResult();
	    if(result){
	    	alert(result)
	    	return;
	    }
    	
    	var id=$(":input[name='id']").val();
    	var formdata = id?$("#form").serialize():$("#form").serialize().replace('id=','')
    	var orp=id?'edit':'add';
    	
    	$.ajax({
			url:"<%=path %>/admin/category/"+orp,
			type:"post",
			contentType:"application/x-www-form-urlencoded",
            encoding:"utf-8",
			data:formdata,
			success:function(html){
				query();
				remove();
			},
			error:function(){
				
			}
		});
    }
    
    function edit(obj){
    	$(":input[name='id']").val(obj.id)
    	$(":input[name='name']").val(obj.name)
    	$(":input[name='keyword']").val(obj.keyword)
    	$(":input[name='showOrder']").val(obj.showOrder)
    	$(":input[name='description']").val(obj.description)
    	$(":input[name='parentId']").val(obj.parentId)
    	
    }
    
    function del(id){
    	$.ajax({
			url:"<%=path %>/admin/category/delete",
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
    	$.ajax({
			url:"<%=path %>/admin/category/list",
			type:"GET",
			data:{
				pageNo:pageNo,
				pageSize:pageSize,
				search:$('#search').val()
			},
			cache:false,
			success:function(html){
				$("#table").html(html);
			},
			error:function(){
				
			}
		});
    	loadParentId();
    }
    
    function remove(){
    	$('#form')[0].reset();
    	$('#id').val('');
    	loadParentId();
    }
    
    query();
    loadParentId();
    function loadParentId(){
    	$.ajax({
			url:"<%=path %>/admin/category/getParent",
			type:"get",
			success:function(data){
				var html="<option value=''>无</option>";
				for(var i in data){
					html+="<option value='"+data[i].id+"'>"+data[i].name+"</option>"
				}
				$("#parentId").html(html);
			},
			error:function(){
				
			}
		});
    }
</script>
</body>

</html>