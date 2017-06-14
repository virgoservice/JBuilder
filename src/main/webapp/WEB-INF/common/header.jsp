<?xml version="1.0" encoding="UTF-8" ?>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
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
						<img src="<%=path %>/resources/admin/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
						<span class="hidden-xs">谭朝红，&nbsp;你好！</span>
					</a>
					<ul class="dropdown-menu">
						<li class="user-header">
							<img src="<%=path %>/resources/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
							<p>谭朝红 - 超级管理员</p>
						</li>
						<li class="user-footer">
							<div class="pull-left">
								<a href="user_profilet.html" class="btn btn-default btn-flat">资料</a>
							</div>
							<div class="pull-right">
								<a href="<%=path %>/admin/logout" class="btn btn-default btn-flat">退出</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</header>