<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  

<div class="box box-solid">
	<div class="box-body table-responsive no-padding">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>编号</th>
					<th>名称</th>
					<th>预览</th>
					<th>标题</th>
					<th>Alt属性</th>
					<th>排序</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list.items}" var="item">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td><img src="${item.image}" style="max-height: 30px;"></td>
						<td>${item.title}</td>
						<td>${item.alt}</td>
						<td>${item.showOrder}</td>
						<td>${item.status}</td>
						<td>
						<shiro:hasPermission name="banner:edit">  
						<a href="#" onclick="edit(${item.id})">编辑</a>
							| 
						</shiro:hasPermission>
						<a href="#" onclick="edit(${item.id})">查看</a> 
						<shiro:hasPermission name="banner:delete">  
						| <a href="#" style="color: crimson"
							onclick="del(${item.id})">删除</a>
							</shiro:hasPermission>
							</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-sm-5"></div>
	<div class="col-sm-7">${list.pageStr}</div>
</div>
