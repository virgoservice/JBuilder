<?xml version="1.0" encoding="UTF-8" ?>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<div class="st-sidebox">

						<!--/member model-->
						<!--new tuan start-->
						<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-tuan.js" ></script>
						<div class="side-other-box">
							<h3>热门推荐</h3>
							<div class="other-con">
								<ul class="tjtg-conlist" id="hotTJ">
									
								</ul>
							</div>
						</div>
						<div class="side-hot-product mb15">
							<h3>热门景点</h3>
							<div class="hp-conlist">
								<ul id ="hotJQ">
									
								</ul>
							</div>
						</div>
		<script> 
			$.ajax({
				url:"<%=path %>/getSider",
				type:"GET",
				cache:false,
				scriptCharset: 'utf-8',
				success:function(data){
					var html=""; 
					var index=1;
					for(item in data.scMap){ 
						html+="<li> <div class=\"num-label\">"+index+++"</div>"
							+"<a href='<%=path %>/spotsList/"+data.scMap[item].id+"'  target=\"_blank\">"
							+"<div class=\"nr\">"
							+	"<p class=\"bt\">"+data.scMap[item].name+"</p>"
							+"</div></a></li>";
					}
					
					$("#hotJQ").append(html);
					
					html="";
					for(item of data.tlist){ 
						var d=new Date();
						d.setTime(item.endDate);
						html+="<li> <a href='<%=path %>/detail/"+item.id+"'  target=\"_blank\">"
							+"<div class='pic'><img src='"+item.cover+"'  alt='' /></div>"
							+"<p class='time ticktime'>"+d.toLocaleDateString()+"截止</p>"
							+"<p class='txt'>"+item.name+"</p>"
							+"<p class='price'> <span>&yen;<b>"+item.price+"</b></span> <del>&yen;"+item.shopPrice+"</del> </p>" 
							+"</a></li>";
					}
					
					$("#hotTJ").append(html);
				}
				
				
			});
			
				</script>
						<!--hot spot end-->
					</div>