<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


                    <div class="box box-solid">
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>标题</th>
                                    <th>状态</th>
                                    <th>作者</th>
                                    <th>栏目</th>
                                    <th>专题</th>
                                    <th>标签</th>
                                    <th>发布日期</th>
                                    <th width="20%">操作</th>
                                </tr>
                                </thead>
                                <tbody id="table">
                                <c:forEach items="${list.items}" var="item">  
									<tr>
										<td>${item.id}</td>
										<td>${item.title}</td>
										<td>
										<c:if test="${item.status==0}">
										草稿
										</c:if>
										<c:if test="${item.status==1}">
										未发布
										</c:if>
										<c:if test="${item.status==2}">
										已发布
										</c:if>
										
										</td>
										<td>${item.author}</td>
										<td>${item.categoryName}</td>
										<td></td>
										<td>${item.tag}</td>
										<td><fmt:formatDate value="${item.createTime}" type="both" /></td>
										<td>
										
										  <a href="#" onclick="edit(${item.toString()})">编辑</a> 
										| <a href="#">查看</a> 
										| <a href="#" style="color: crimson" onclick="del(${item.id})">删除</a></td>
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

