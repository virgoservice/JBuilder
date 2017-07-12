<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>

<head ul_float=tsrZdk>
	<meta charset="utf-8">
	<link rel="icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="<%=path %>/resources/index/img/icon.ico" type="image/x-icon"/>	
	<title>古城高过河景区_旅游景点介绍_旅游景图片-贵州古城文化旅游开发股份有限公司官网</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<script>
		window.SITEURL = "/";
		window.CURRENCY_SYMBOL = "￥";
	</script>
	<link type="text/css" href="<%=path %>/resources/index/min/-f=plugins-spot-public-css-scenic.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-base.css,-res-css-extend.css"  rel="stylesheet" />
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.min.js,-res-js-base.js,-res-js-common.js,-res-js-delayLoading.min.js" ></script>
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-header.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
</head>

<body>
	<!--顶部-->
	<jsp:include page="header.jsp" />

	<!-- ------------------------------ cut ---------------------------------------- -->
	
	<div class="big">
		<div class="wm-1200">
			<div class="st-guide">
				<a href="#"  title="首页">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
				<a href="#"  title="景点">景点</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;${ticket.name }
			</div>
			<!--面包屑-->
			<div class="st-main-page">
				<div class="st-scenic-show">
					<div class="scenicshow-tw">
						<div class="focus-slide">
							<div class="imgnav" id="imgnav">
								<div id="img"><!-- 460 * 312 -->
									<c:forEach items="${imgList}" var="ta">
										<img src="${ta.attachmentUrl }?imageMogr2/thumbnail/460x312"  />
									</c:forEach>
									<div id="front" title="上一张">
										<a href="javaScript:void(0)" class="pngFix"></a>
									</div>
									<div id="next" title="下一张">
										<a href="javaScript:void(0)" class="pngFix"></a>
									</div>
								</div>
								<div id="cbtn">
									<i class="picSildeLeft"><img src="<%=path %>/resources/index/res/images/picSlideLeft.gif" /></i>
									<i class="picSildeRight"><img src="<%=path %>/resources/index/res/images/picSlideRight.gif" /></i>
									<div id="cSlideUl">
										<ul>
											<c:forEach items="${imgList}" var="ta">
											<li><img src="${ta.attachmentUrl }?imageMogr2/thumbnail/460x312"  /></li><!-- 90 * 61 -->
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="cp-show-msg">
							<div class="hs-title">
								<h1>${ticket.name }</h1>
								<p>${ticket.scenicId}</p>
							</div>
							<div class="price"> <span><i class="currency_sy">￥</i><b>130</b>起</span> </div>
							<div class="sl"> <span>销量：1023</span><s>|</s><span class="myd">满意度：100%</span><s>|</s><span>推荐：980</span> </div>
							<div class="sell-point"> <span>景点卖点</span>人与自然的亲密融合 </div>
							<ul class="msg-ul">
								<li><em>景区主题：</em>
									<p> 森林&nbsp; 雪山&nbsp; AAAAA&nbsp;
									</p>
								</li>
								<li><em>取票方式：</em>
									<p>景点自取</p>
								</li>
								<li class="mb_0"><em>付款方式：</em>
									<p> <img src="<%=path %>/resources/index/res/images/pay_zfb.gif"  /> </p>
								</li>
							</ul>
						</div>
					</div>
					<div class="scenicshow-con">
						<div class="tabnav-list">
							<span class="on">门票信息</span>
							<span>景点介绍</span>
							<span>客户评价</span>
						</div>
						<div class="tabbox-list">
							<!--  ---------------  门票信息    ------ -->
							<div class="tabcon-list">
								<div class="car-typetable">
									<table style="width:100%; border:0;">
										<tr>
											<th width="220" height="40" scope="col"><span class="pl20">全票</span></th>
											<th width="80" scope="col">原价</th>
											<th width="80" align="center" scope="col">优惠价</th>
											<th width="80" scope="col">支付方式</th>
											<th width="260" scope="col">&nbsp;</th>
											<th scope="col">&nbsp;</th>
										</tr>
										<tr>
											<td height="40"><strong class="type-tit">${ticket.name }</strong></td>
											<td align="center"><i class="currency_sy">￥</i>${ticket.price }</td>
											<td align="center"><span class="price"><i class="currency_sy">￥</i>${ticket.shopPrice } </span></td>
											<td> <span class="fk-way">在线支付</span> </td>
											<td> </td>
											<td>
												<a class="booking-btn" href="<%=path%>/member/order/toBook?ticId=${ticket.id}" data-suitid="18">预订</a>
											</td>
										</tr>
										<tr style="display: none">
											<td colspan="7">
												<div class="cartype-nr"> </div>
											</td>
										</tr>
									</table>
								</div>
							</div>

							<!-- ----------------------------- 介绍内容 -->
							<div class="tabcon-list">
								<div class="list-tit"><strong>景点介绍</strong></div>
								<div class="list-txt">
									${ticket.description }
								</div>
							</div>
							
							<!-- ------------  点评 ----------- -->
							<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-jquery.fancybox.css" rel="stylesheet" />
							<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-jquery.fancybox.js" ></script>
							<div class="tabcon-list">
								<div class="list-tit"><strong>客户点评</strong></div>
								<div class="st-list-pl">
									<div class="st-pl-box" style="border-bottom: 1px solid #d8d8d8;"> <span class="myd" data-myd="100%">满意度<strong>100%</strong></span> <span class="txt">回程归来发表点评即可获赠积分，<br>获得的积分可在下次消费时抵用部分现金。</span>
										<a class="pl-btn" href="" >我要评论 </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--详情主体 end-->

				<!-- ------------------右边框  -->
				<jsp:include page="rightFrame.jsp" />

			</div>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-css-footer.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/res/css/skin.css"  rel="stylesheet" />
	<link type="text/css" href="<%=path %>/resources/index/min/-f=-res-js-floatmenu-floatmenu.css"  rel="stylesheet" />
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-floatmenu-floatmenu.js" ></script>
	<script type="text/javascript">
	$(document).ready(function() {
		//内容切换
		$.floatMenu({
			menuContain: '.tabnav-list',
			tabItem: 'span',
			chooseClass: 'on',
			contentContain: '.tabbox-list',
			itemClass: '.tabcon-list'
		});
	});
	</script>
	
	<script type="text/javascript" src="<%=path %>/resources/index/min/-f=-res-js-SuperSlide.min.js,-res-js-template.js,-res-js-scorll.img.js" ></script>
	<script type="text/javascript" src="<%=path %>/resources/index/res/js/layer/layer.js" ></script>
</body>
</html>
