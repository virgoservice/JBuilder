<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String path = request.getContextPath(); %>
<div class="box box-solid">
	<div class="box-body table-responsive no-padding">
		<table class="table table-hover">
			<thead>
				<tr>
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
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items}" var="user">
					<tr>
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
							<a href="user_edit.html">编辑</a> |
							<a href="#" style="color:crimson">冻结</a> |
							<a href="#" style="color:crimson">永久删除</a> 
						</td>
					</tr>
				</c:forEach>
				
				<!-- <tr>
					<td>112</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a>  
					</td>
				</tr>
				<tr>
					<td>113</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>114</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>115</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>115</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>115</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>115</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>115</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr>
				<tr>
					<td>115</td>
					<td>Fix and squish bugs</td>
					<td>Ramostear</td>
					<td>大数据</td>
					<td>微服务</td>
					<td>spring</td>
					<td>2017-04-26</td>
					<td>
						<a href="user_edit.html">编辑</a> |
						<a href="#" style="color:crimson">冻结</a> |
						<a href="#" style="color:crimson">永久删除</a> 
					</td>
				</tr> -->
			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-sm-5">
	</div>
	<div class="col-sm-7">
		<!-- <div class="dataTables_paginate paging_simple_numbers pull-right">
			<ul class="pagination">
				<li class="paginate_button previous disabled">
					<a href="#">上一页</a>
				</li>
				<li class="paginate_button active">
					<a href="#">1</a>
				</li>
				<li class="paginate_button">
					<a href="#">2</a>
				</li>
				<li class="paginate_button">
					<a href="#">3</a>
				</li>
				<li class="paginate_button">
					<a href="#">4</a>
				</li>
				<li class="paginate_button next">
					<a href="#">下一页</a>
				</li>
			</ul>
		</div> -->
		${list.pageStr}
	</div>
</div>