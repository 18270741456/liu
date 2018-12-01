<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="domain.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="css/mr-01.css" type="text/css">
<script src="js/jsArr01.js" type="text/javascript"></script>
<script src="js/module.js" type="text/javascript"></script>
<script src="js/jsArr02.js" type="text/javascript"></script>
<script src="js/tab.js" type="text/javascript"></script>

</head>

<body>
	<%@include file="logo.jsp" %>	
	
	<nav class="container mr-masstop  hidden-sm hidden-xs">
	<div class="custom">
		<div>
			<div class="ja-tabswrap default" style="width: 100%;">
				<div id="myTab" class="container">
					<h3 class="index_h3">
						<span class="index_title">商品信息</span>
					</h3>					
					<div class="ja-tab-content ja-tab-content col-6 active"
						style="opacity: 1; width: 100%; visibility: visible;">
						<div class="ja-tab-subcontent">
							<div class="mijoshop">
								<div class="container_oc">
									<div class="row">		
																
										<% List<Goods> goods=(List<Goods>)session.getAttribute("goods");
										   for(Goods g:goods){
											   
											  %>
											 	
											<div
													class="product-grid col-lg-2 col-md-3 col-sm-6 col-xs-12">
													<div class="product-thumb transition">
														<div class="actions">
															<div class="image">
																<a href="CartAction?pid=<%=g.getID()%>">
																<img src="images/0<%=g.getID()%>.jpg" alt="<%=g.getGoodsName() %>" class="img-responsive"></a>
															</div>															
														</div>
														<div class="caption">
															<div class="name" style="height: 40px">
																<a href="goodsDetail.jsp?ID=1"> 
																<span style="color: #0885B1">商品名：</span><%=g.getGoodsName() %></a>
															</div>
															<div class="name" style="margin-top: 10px"><p class="price">价格：<%=g.getPrice()%> 元</p></div>
														</div>
													</div>
												</div>
											  <% 
										   
										   }
										
										%>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					
			</div>
		</div>
	</div>
	</nav>
	
	<!-- 版权栏 -->
	<%@ include file="foot.jsp"%>
	<!-- //版权栏 -->
</body>
</html>