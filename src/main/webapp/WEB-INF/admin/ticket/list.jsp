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
								<button class="btn btn-primary btn-sm" onclick="add();">新增</button>
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
							<td>${item.scenicId}</td>
							<td>${item.name}</td>
							<td>${item.goodsCode}</td>
							<td>
								<fmt:formatDate value="${item.beginDate}" type="both" /><br/>
								<fmt:formatDate value="${item.endDate}" type="both" />
							</td>
							<td>
								<c:if test="${item.status==0}">
									禁用
								</c:if>
								<c:if test="${item.status==1}">
									启用
								</c:if>
							</td>
							<td>
								<a href="#">禁用</a>
								<a href="#">修改</a>
								<a href="#">购买规则</a>
								<a href="#">分组</a>
								<a href="#">删除</a>
								<a href="#">复制</a>
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
						${pageDto.pageStr}
					</div>
				</div>
			</div>
			<c:if test="curGroup != null">
				<input type="hidden" name="curGroup" value="${curGroup}" />
			</c:if>
		</div>	
	
<script type="text/javascript">
	
	/*全选*/
	$("table thead th input:checkbox").on("click" , function(){
		$(this).closest("table").find("tr > td:first-child input:checkbox").prop("checked",$("table thead th input:checkbox").prop("checked"));
    });
</script>

