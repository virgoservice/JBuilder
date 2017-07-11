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
								<input type="checkbox"/>全选
							</th>
							<th colspan="8">
								<button class="btn btn-primary btn-sm" onclick="addTicket();">新增</button>
								<button class="btn btn-primary btn-sm" onclick="addGroup();">新增分组</button>
							</th>
						</tr>
						<tr>
							<th></th>
							<th>NO.</th>
							<th>景区名称</th>
							<th>商品名称</th>
							<th>商品编码</th>
							<th>有效期</th>
							<th>状态</th>
							<th>操作</th>
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
	$("table thead tr th input:checkbox").on("click" , function(){
		$(this).closest("table").find("tr > td:first-child input:checkbox").prop("checked", $("table thead tr th input:checkbox").prop("checked"));
    });

	/* 替换景区名称*/
	$(".scenic-name").each(function (){
		//console.log($(this).text());
		var id = $(this).text();
		if(scenicData[id] != null){
			$(this).text(scenicData[id]);
		}else{
			$(this).text("null");
		}
	});
});
</script>

