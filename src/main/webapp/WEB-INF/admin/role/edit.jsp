<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/editormd/css/editormd.css" />
    <link rel="stylesheet" type="text/css" href="<%=path %>/resources/admin/plugins/layer-v3.0.3/layer/skin/default/layer.css"/>
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
    <link rel="stylesheet" href="<%=path %>/resources/admin/plugins/zTree_v3-3.5.28/css/metroStyle/metroStyle.css">
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
    <jsp:include page="../../common/menu.jsp" />
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>修改角色</h1>
        </section>
        <section class="content">
            <form id="role-form">
                <div class="row">
                    <div class="col-md-9">
                        <div class="box box-solid">
                            <div class="box-body">
                                <div class="form-horizontal">
                                    <h4>角色信息</h4>
                                    <hr />
                                    <div class="form-group">
                                        <label for="name" class="col-md-2 control-label">名称（必填）</label>
                                        <div class="col-md-9">
                                        	<input type="hidden" id="id" name="id" value="${role.id }"/>
                                            <input type="text" class="form-control" name="name" id="name"  value="${role.name}"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="description" class="col-sm-2 control-label">角色描述</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="description" id="description"  value="${role.description}"/>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box box-solid" style="display: block;padding: 10px 15px; position: relative;">
                            <div class="box-body">
                                <button type="button" class="btn btn-primary btn-sm" onclick="submitDo();">保存</button>
                                <button type="button" class="btn btn-default btn-sm pull-right" onclick="javascript:history.back(-1);">返回</button>
                            </div>
                        </div>

                        <div class="box box-solid">
                            <div class="box-header with-border">
                                <h3 class="box-title">角色权限</h3>
                                <div class="box-tools">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="box-body">
								<input type="hidden" class="form-control" id="permissionIds" name="permissionIds" placeholder="选择权限" readonly="readonly"><br/>
								<ul id="ptree" class="ztree" style="height:300px;overflow: auto"></ul>
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
<script src="<%=path %>/resources/admin/plugins/zTree_v3-3.5.28/js/jquery.ztree.all.min.js"></script>
<script src="<%=path%>/resources/admin/dist/js/common.js"></script>
<script type="text/javascript">
	getCheckedPerms();
	function getCheckedPerms(){
		var roleId = $("input[id=id]").val();
		var setting = {
				async:{
					autoParam:["id","name","parentId","checked"],
					contentType:'application/json;charset=utf-8',
					enable:true,
					type:"GET",
					url:"<%=path %>/admin/role/checkedPerms?id="+roleId,
				},
				callback:{
					onAsyncSuccess:function(){
						onCheck();
						ptree.expandAll(true);
					},
					beforeClick:beforeClick,
					onCheck:onCheck
				},
				check:{
					chkboxType:{
						"Y":"p",
						"N":"s"
					},
					chkStyle:"checkbox",
					enable:true
				},
				view:{
					dblClickExpand:false
				},
				data:{
					key:{
						checked:"checked"
					},
					simpleData:{
						enable:true,
						idKey : "id",
						pIdKey : "parentId"
					}
				}
		}
		var ptree = $.fn.zTree.init($("#ptree"),setting,[]);
	}
	function beforeClick(){
	}
	function onCheck(e,treeId,treeNode){
		var ztree =$.fn.zTree.getZTreeObj("ptree");
		var nodes = ztree.getCheckedNodes(true);
		var pids = "";
		for(var i=0,l=nodes.length;i<l;i++){
			pids += nodes[i].id;
			if(i < l-1){
				pids += ",";
			}
		}
		$("input[id=permissionIds]").val(pids);
	}
	function submitDo(){
		var data = $("#role-form").serialize();
		data = decodeURIComponent(data,true);
		$.ajax({
			url:"<%=path %>/admin/role/edit",
			type:"POST",
			data:data,
			contentType:"application/x-www-form-urlencoded",
			encoding:"utf-8",
			cache:false,
			success:function(){
				$(location).attr("href","<%=path%>/admin/role/index");
			}
		});
	}
</script>
</body>
</html>