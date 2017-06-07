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
                <th>角色名称</th>
                <th>描述</th>
                <th>创建日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list.items}" var="role">
	            <tr>
	                <td>${role.id }</td>
	                <td>${role.name}</td>
	                <td>${role.description}</td>
	                <td><fmt:formatDate value="${role.createTime}" pattern="yyyy-MM-dd" /></td>
	                <td>
	                    <a href="<%=path %>/admin/role/edit?id=${role.id}">权限设置</a> |
	                    <a href="javascript:void(0);" onclick="del(${role.id});" style="color:crimson">永久删除</a>
	                </td>
	            </tr>
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