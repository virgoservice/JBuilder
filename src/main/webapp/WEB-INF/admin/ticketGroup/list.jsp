<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.table > thead > tr > td {
  vertical-align: middle;
}
.table > tbody > tr > td {
  vertical-align: middle;
}
</style>

	<div class="box box-solid">
		<div class="box-body" style="padding: 10px 0;">
			<table class="table table-responsive">
				<thead>
					<tr>
						<th>
							<input type="checkbox" name="checkbox"/>全选
						</th>
						<th colspan="4">
							<button class="btn btn-primary btn-sm">批量删除</button>
							<button class="btn btn-primary btn-sm" onclick="addGroup();">新增分组</button>	
						</th>
					</tr>
					<tr>
						<td></td>
						<td>NO.</td>
						<td>名称</td>
						<td>描述</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pageDto.items}" var="item">
					<tr>
						<td><input type="checkbox" value="${item.id }"  name="checkbox"/></td>
						<td>${item.id }</td>
						<td>${item.name }</td>
						<td>${item.description }</td>
						<td>
							<a href="javascript:;" onclick="edit(${item.id});">修改</a>
							<a href="javascript:;" onclick="del(this, ${item.id});">删除</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="box-footer">
			<div class="row">
				<div class="col-sm-5">
				</div>
				<div class="col-sm-7">
					${pageDto.pageStr}
				</div>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
$(function (){
	
	/*全选*/
	$("table thead th input:checkbox").on("click" , function(){
		$(this).closest("table").find("tr > td:first-child input:checkbox").prop("checked",$("table thead th input:checkbox").prop("checked"));
    });
});
</script>
