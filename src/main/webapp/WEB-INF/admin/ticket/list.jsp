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
							<td>											
								<input type="checkbox"/>全选
							</td>
							<td colspan="8">
								<button class="btn btn-primary btn-sm" onclick="addTicket();">新增</button>
								<button class="btn btn-primary btn-sm" onclick="addGroup();">新增分组</button>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>NO.</td>
							<td>景区名称</td>
							<td>商品名称</td>
							<td>商品编码</td>
							<td>有效期</td>
							<td>状态</td>
							<td>操作</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pageDto.items}" var="item"> 
						<tr>
							<td><input type="checkbox" value="${item.id}"/></td>
							<td>${item.id}</td>
							<td class="scenic-name">${item.scenicId}</td>
							<td>${item.name}</td>
							<td>${item.goodsCode}</td>
							<td>
								<fmt:formatDate value="${item.beginDate}" pattern="yyyy-MM-dd" type="DATE" />
								<fmt:formatDate value="${item.checkTime}" pattern="HH:mm" type="TIME" />
								<br/>
								<fmt:formatDate value="${item.endDate}" pattern="yyyy-MM-dd" type="DATE" />
								<fmt:formatDate value="${item.stopCheckTime}" pattern="HH:mm" type="TIME" />
							</td>
							<td class="status">
								<c:if test="${item.status==0}">
									已禁用
								</c:if>
								<c:if test="${item.status==1}">
									已启用
								</c:if>
							</td>
							<td>
								<a href="javascript:;" class="stop" onclick="stop(this, ${item.id}, ${item.status});">禁用</a>
								<a href="javascript:;" onclick="editTicket(${item.id});">修改</a>
								<a href="javascript:;" onclick="del(this, ${item.id});">删除</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="box-footer">
				<div class="row">
					<div class="col-sm-5"></div>
					<div class="col-sm-7">
						${pageDto.pageStr}
					</div>
				</div>
			</div>
			<c:if test="curGroup != null">
				<input type="hidden" name="curGroup" value="${curGroup}" />
			</c:if>
		</div>	
	
<script type="text/javascript">

$(function (){

	/*全选*/
	$("table thead tr td input:checkbox").on("click" , function(){
		alert("click");
		$(this).closest("table").find("tr > td:first-child input:checkbox").prop("checked", true);
    });
});
</script>

