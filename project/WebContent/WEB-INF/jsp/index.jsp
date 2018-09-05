<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>TOPページ</title>

<jsp:include page="/baselayout/head.html" />

</head>
<body>
	<jsp:include page="/baselayout/header.jsp" />
	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
			<br> <br>
			<h1 class="header center blue-text">ECサイト</h1>
			<div class="row center">
				<h5 class="header col s12 light">見たい映画が探せるサイト</h5>
			</div>
			<div class="row center">
				<div class="input-field col s8 offset-s2">
					<form action="ItemSearchResult">
						<i class="material-icons prefix">search</i> <input type="text"
							name="search_word">
					</form>
				</div>
			</div>
			<br> <br>
			<div class="center">
			<a href="Ranking" class="waves-effect waves-light btn">売れ筋ランキング</a>
			</div>

			<div class="right">
			上映中一覧
			<div class="row">
			<a href="jNowOnAir" class="waves-effect waves-light btn">邦画</a>
			<a href="mNowOnAir" class="waves-effect waves-light btn">洋画</a>
			<a href="hNowOnAir" class="waves-effect waves-light btn">ホラー</a></div></div>
		</div>
	</div>
	<div class="container">
		<div class="row center">
			<h5 class=" col s12 light">邦画</h5>
		</div>
		<div class="section">
			<!--   おすすめ商品   -->
			<div class="row">
				<c:forEach var="item" items="${itemList}">
				<div class="col s12 m3">
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


	<div class="container">
		<div class="row center">
			<h5 class=" col s12 light">洋画</h5>
		</div>
		<div class="section">
			<!--   おすすめ商品   -->
			<div class="row">
				<c:forEach var="item" items="${itemListM}">
				<div class="col s12 m3">
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

	<div class="container">
		<div class="row center">
			<h5 class=" col s12 light">ホラー</h5>
		</div>
		<div class="section">
			<!--   おすすめ商品   -->
			<div class="row">
				<c:forEach var="item" items="${itemListH}">
				<div class="col s12 m3">
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
<jsp:include page="/baselayout/footer.jsp" />
</body>
</html>