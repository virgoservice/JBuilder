<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


                    <div class="box box-solid">
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>LOGO</th>
                                    <th>名称</th>
                                    <th>链接</th>
                                    <th>排序</th>
                                    <th width="20%">创建时间</th>
                                    <th width="20%">操作</th>
                                </tr>
                                </thead>
                                <tbody id="table">
                                <c:forEach items="${list.items}" var="item">  
									<tr>
										<td>${item.id}</td>
										<td><img src="${item.logo}" style="max-height: 30px;"></td>
										<td>${item.name}</td>
										<td>${item.url}</td>
										<td>${item.showOrder}</td>
										<td><fmt:formatDate value="${item.createTime}" type="both" /></td>
										<td><a href="#" onclick="edit('${item.id}','${item.logo}','${item.name}','${item.url}','${item.showOrder}')">编辑</a> | <a href="#">查看</a> | <a
											href="#" style="color: crimson" onclick="del(${item.id})">删除</a></td>
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
                            ${list.pageStr}
                        </div>
                    </div>

