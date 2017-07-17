<?xml version="1.0" encoding="UTF-8" ?>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<header class="main-header">
	<a href="<%=path %>/admin/index" class="logo">
		<span class="logo-mini"><b>J</b>B</span>
		<span class="logo-lg"><b>JB</b>uilder</span>
	</a>
	<nav class="navbar navbar-static-top">
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
			<span class="sr-only">Toggle navigation</span>
		</a>
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="<%=path %>/${login_user.avatar}" class="user-image" alt="User Image">
						<span class="hidden-xs">${login_user.nickname} ，&nbsp;你好！</span>
					</a>
					<ul class="dropdown-menu">
						<li class="user-header">
							<img src="<%=path %>/${login_user.avatar}" class="img-circle" alt="User Image">
							<p>${login_user.nickname } - ${login_user.signature}</p>
						</li>
						<li class="user-footer">
							<div class="pull-left">
								<a href="<%=path %>/admin/user/profile" class="btn btn-default btn-flat">资料</a>
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