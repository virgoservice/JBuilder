<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<div class="web-top">
			<div class="wm-1200">
				<div class="notice-txt">
					<p>欢迎访问贵州古城文化旅游开发股份有限公司官网</p>
				</div>
				<div class="top-login"> 
					<c:if test="${login_user ==null }">
						<span id="loginstatus"> 
							<a class="dl" href="<%=path %>/member/login">登录</a>
							<a class="zc" href="<%=path %>/member/registry">免费注册</a>
						</span>
					</c:if>
					<c:if test="${login_user !=null }">
						<span id="loginstatus"> 
							<a class="dl" href="<%=path %>/member/order/list">欢迎！${login_user.nickname }</a>
							<a class="zc" href="<%=path %>/member/logout">退出</a>
						</span>
					</c:if>
				</div>
				
			</div>
		</div>
		<!--顶部-->
		<div class="st-header">
			<div class="wm-1200">
				<div class="st-logo">
					<a href="<%=path %>/index" title="贵州古城文化旅游开发股份有限公司官方网站">
						<img src="<%=path %>/resources/index/img/logo.png" alt="贵州古城文化旅游开发股份有限公司官方网站" />
					</a>
				</div>
				<div class="st-top-search">
					<div class="st-search-down">
						<strong id="typename">全部<i></i></strong>
						<ul class="st-down-select searchmodel" id="menu2">
						</ul>
					</div>
					<input type="text" id="searchInput" value="${search }" class="st-txt searchkeyword" placeholder="输入目的地" /> 
					<input type="button" value="搜索" class="st-btn" onclick="search()"/> 
					
				</div>
				<div class="st-link-way"> 
					<img class="link-way-ico" src="<%=path %>/resources/index/res/images/24hours-ico.png" width="45" height="45" />
					<div class="link-way-txt"> <em>0859-xxxxxxx</em> </div>
				</div>
			</div>
		</div>
		<!--header-->
		<div class="st-nav">
			<div class="wm-1200">
				
				
				<div class="st-menu">
					<ul class="clearfix" id="menu">
						<li>
							<a href="<%=path %>" >首页<s></s></a>
						</li>
						
						
						
					</ul>
				</div>
			</div>
		</div>
		
		<script>
			
					
			$.ajax({
				url:"<%=path %>/getMenu",
				type:"GET",
				cache:false,
				scriptCharset: 'utf-8',
				success:function(data){
					var html="";
					var html2="";
					for(item of data){
						var template="<li class=\"nav_header_1\">"+
						"<a href=\"#\">"+item.ticketGroup.name+"<i class=\"st-arrow-ico\"></i></a><div class=\"down-nav\"><div class=\"sub-list\">";
						
						html2+="<a href=\"<%=path %>/spotsList/"+item.ticketGroup.id+"\"><li>"+item.ticketGroup.name+"</li></a>";
						
						for(d in item.forscMap){
							
							template+="<a href=\"<%=path %>/spotsList/"+item.ticketGroup.id+"\">"+item.forscMap[d].name+"</a>" ;
							
						}
						
						template+="</div></div></li>";
						
						html+=template;
					}
					
					$("#menu").append(html);
					$("#menu2").append(html2);
					
					
					var offsetLeft = new Array();
					var windowWidth = $(window).width();

					function get_width() {
						//设置"down-nav"宽度为浏览器宽度
						$(".down-nav").width($(window).width());
						$(".st-menu li").hover(function() {
							var liWidth = $(this).width() / 2;
							$(this).addClass("this-hover");
							offsetLeft = $(this).offset().left;
							//获取当前选中li下的sub-list宽度
							var sub_list_width = $(this).children(".down-nav").children(".sub-list").width();
							$(this).children(".down-nav").children(".sub-list").css("width", sub_list_width);
							$(this).children(".down-nav").css("left", -offsetLeft);
							$(this).children(".down-nav").children(".sub-list").css("left", offsetLeft - sub_list_width / 2 + liWidth);
							var offsetRight = windowWidth - offsetLeft;
							var side_width = (windowWidth - 1200) / 2;
							if(sub_list_width > offsetRight) {
								$(this).children(".down-nav").children(".sub-list").css({
									"left": offsetLeft - sub_list_width / 2 + liWidth,
									"right": side_width,
									"width": "auto"
								});
							}
							if(side_width > offsetLeft - sub_list_width / 2 + liWidth) {
								$(this).children(".down-nav").children(".sub-list").css({
									"left": side_width,
									"right": side_width,
									"width": "auto"
								});
							}
						}, function() {
							$(this).removeClass("this-hover");
						});
					};
					get_width();
					$(window).resize(function() {
						get_width();
					});
				}
				
				
			});
			
			function search(){
				var str=$("#searchInput").val();
				if(str==""){
					alert("请输入关键字搜索！")
					return;
				}
				window.location.href="<%=path%>/spotsSearch/"+str;
			}
				</script>