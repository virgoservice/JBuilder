<?xml version="1.0" encoding="UTF-8" ?>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<aside class="main-sidebar">
	<section class="sidebar">
		<ul class="sidebar-menu">
			<c:forEach items="${menu.children}" var = "item">
				<c:if test="${item.children !=mull}">
					<li class="treeview">
						<a href="#">
							<i class="${item.icon}"></i>
							<span>${item.name}</span>
							<span class="pull-right-container">
				              <i class="fa fa-angle-left pull-right"></i>
				            </span>
						</a>
						<ul class="treeview-menu">
							<c:forEach items="${item.children}" var="menu">
								<li>
									<a href="<%=path %>/${menu.uri}"><i class="${menu.icon}"></i>${menu.name}</a>
								</li>
							</c:forEach>
						</ul>
					</li>
				</c:if>
				<c:if test="${item.children == null }">
					<li class="treeview">
						<a href="<%=path %>/${item.uri}">
							<i class="${item.icon }"></i>
							<span>${item.name }</span>
							<span class="pull-right-container">
				            	<i class="fa fa-angle-left pull-right"></i>
				            </span>
						</a>
					</li>
				</c:if>
			</c:forEach>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>