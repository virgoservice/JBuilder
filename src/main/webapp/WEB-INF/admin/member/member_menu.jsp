<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<div class="user-side-menu">
	<ul>
		<li>
			<a id="nav_index" href="<%=path %>/member/index"><i class="st-user-icon user-home-icon"></i>会员首页</a>
		</li>
		<li>
			<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-order-icon"></i>我的订单<i class="arrow-icon"></i> </a>
			<div class="son">
				<a id="nav_allorder" href="<%=path %>/member/order/list">全部订单</a>
			</div>
		</li>
		<li>
			<a class="side-menu-group" href="javascript:;"> <i class="st-user-icon user-center-icon"></i>个人中心<i class="arrow-icon"></i> </a>
			<div class="son">
				<a id="nav_userinfo" href="<%=path %>/member/userinfo">个人资料</a>
				<a id="nav_safecenter" href="/member/index/safecenter">账号安全</a>
			</div>
		</li>
	</ul>
</div>