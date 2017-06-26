<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<% String path = request.getContextPath(); %>
<style>
	a.disable{ opacity:0.5; cursor:default; pointer-events:none}
</style>
<div class="box box-solid">
	<div class="box-body table-responsive no-padding">
		<table class="table table-hover">
			<thead>
				<tr>
					<th><input  type="checkbox"/>全选</th>
					<th>编号</th>
					<th>头像</th>
					<th>用户名</th>
					<th>昵称</th>
					<th>类型</th>
					<th>电子邮件</th>
					<th>联系电话</th>
					<th>QQ号码</th>
					<th>微博账号</th>
					<th>创建日期</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items}" var="user">
					<c:if test="${login_user.id != user.id }">
						<tr>
							<td><input type="checkbox"/></td>
							<td>${user.id}</td>
							<td>
								<a href="<%=path%>/admin/user/show?id=${user.id}">
									<img src="<%=path %>/${user.avatar }" style="float:letf;width:25px;height:25px;border-radius:50%;margin-right:10px;margin-top:-2px;" alt="${user.username }">
								</a>
							</td>
							<td><a href="<%=path%>/admin/user/show?id=${user.id}">${user.username}</a></td>
							<td>${user.nickname}</td>
							<td>
								<c:if test="${user.type eq 0}">来宾用户</c:if>
								<c:if test="${user.type eq 1}">管理员</c:if>
								<c:if test="${user.type eq 2}">注册用户</c:if>
							</td>
							<td>${user.email}</td>
							<td>${user.phone}</td>
							<td>${user.qq}</td>
							<td>${user.weibo}</td>
							<td><fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"/></td>
							<td>
								<c:if test="${user.status eq 0 }"><i class="fa fa-toggle-off" style="color:crimson;"></i></c:if>
								<c:if test="${user.status eq 1 }"><i class="fa fa-toggle-on" style="color: #3c8dbc;"></i></c:if>
							</td>
							<td>
								<shiro:hasPermission name="user:edit">
									<a href="<%=path %>/admin/user/edit?id=${user.id}">编辑</a> |
									<c:if test="${user.status eq 0 }">
										<a href="javascript:void(0);" onclick="changeStatus(${user.id});" style="color:#3c8dbc">解冻</a> |
									</c:if>
									<c:if test="${user.status eq 1 }">
										<a href="javascript:void(0);" onclick="changeStatus(${user.id});" style="color:crimson">冻结</a> |
									</c:if>
								</shiro:hasPermission>
								<shiro:hasPermission name="user:delete">
									<a href="javascript:void(0);" onclick="del(${user.id});" style="color:crimson">永久删除</a> 
								</shiro:hasPermission>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-sm-5">
	</div>
	<div class="col-sm-7">
		<c:if test="${!empty list.items}">
	        ${list.pageStr }
    	</c:if>
    	<c:if test="${empty list.items}">
	                            共查询到0条数据！
    	</c:if>
	</div>
</div>