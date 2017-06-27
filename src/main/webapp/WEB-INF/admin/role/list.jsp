<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<% String path = request.getContextPath(); %>
<div class="box box-solid">
    <div class="box-body">
    	<div class="row">
    		<table class="table table-hover table-responsive no-padding">
	            <thead>
	            <tr>
	            	<shiro:hasPermission name="role:delete">
		            	<td width="5%"><input type="checkbox" id="checkall"/>全选</td>
	            	</shiro:hasPermission>
	                <th>编号</th>
	                <th>角色名称</th>
	                <th>描述</th>
	                <th>创建日期</th>
	                <th>操作</th>
	            </tr>
	            </thead>
	            <tbody>
	            <c:forEach items="${list.items}" var="role">
		            <tr>
		            	<shiro:hasPermission name="role:delete">
			            	<td><input type="checkbox" value="${role.id}"/></td>
		            	</shiro:hasPermission>
		                <td>${role.id }</td>
		                <td>${role.name}</td>
		                <td>${role.description}</td>
		                <td><fmt:formatDate value="${role.createTime}" pattern="yyyy-MM-dd" /></td>
		                <td>
		                	<shiro:hasPermission name="role:edit">
			                    <a href="<%=path %>/admin/role/edit?id=${role.id}">权限设置</a> |
		                	</shiro:hasPermission>
		                	<shiro:hasPermission name="role:delete">
			                    <a href="javascript:void(0);" onclick="del(${role.id});" style="color:crimson">永久删除</a>
		                	</shiro:hasPermission>
		                </td>
		            </tr>
	            </c:forEach>
	            </tbody>
	        </table>
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
    </div>
</div>
<script>
$("#checkall").on("click",function(){
	if(this.checked){
		$("input[type=checkbox]").prop("checked",true);
	}else{
		$("input[type=checkbox]").prop("checked",false);
	}
});
</script>