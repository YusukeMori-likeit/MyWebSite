<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ランキング</title>

<jsp:include page="/baselayout/head.html" />

</head>
<body>
	<jsp:include page="/baselayout/header.jsp" />
	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
		<div class="row center">
			<h5 class=" col s12 light">売れ筋ランキング</h5>
		</div>
		<div class="section">
			<!--   おすすめ商品   -->
			<div class="row">
				<c:forEach var="item" items="${itemList}" varStatus="status">
				<div class="col s12 m3">
				${status.count}位
					<div class="card" style="
					width: 250px;
					height: 450px">
						<div class="card-image" style="
						width: 200px;
						height: 280px;
						margin auto"
						>
							<a href="Item?item_id=${item.id}"><img src="img/${item.fileName}"></a>
						</div>
						<div class="card-content">
							<span class="card-title">${item.name}
							<br>${item.price}円</span>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</div>
<jsp:include page="/baselayout/footer.jsp" />
</body>
</html>