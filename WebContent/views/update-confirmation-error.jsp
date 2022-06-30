<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>HANGOVER</title>

<Link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/style.css">
<Link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/inputbox-style.css">
<link rel="icon" href="<%= request.getContextPath() %>/img/favicon.jpg">

<!-- Dropdown -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/dropdown-style.css">
<!-- Progress Bar -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/progress-bar-style.css">

<!-- carousel -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/carousel-style.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">



<link rel="preconnect" href="https://fonts.googleapis.com">

</head>

<body>

	<div class="top-container">
		<img src="<%=request.getContextPath()%>/img/favicon.jpg"
			alt="favicon" class="icon">
		<div id="search">
			<form class="form"
				action="<%=request.getContextPath()%>/jp.co.aforce.user.SearchProduct.execute"
				method="post">
				<input type="search" name="keyword" id="searchbox" value="">
			</form>
		</div>
		<a href="<%=request.getContextPath()%>/views/index.jsp"
			class="title">HANGOVER</a>


		<div id="splash">
			<div id="splash_text">
				<p class="loading-message" style="left-padding: 50px;">loading...
				<p>
			</div>
		</div>


		<!-- dropdown -->

		<nav class="menu-container">

			<ul>
				<li class="has-child"><a>アカウント</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/views/view-all-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>自分の情報</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/update-confirmation.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>情報更新</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/delete-confirmation.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>情報削除</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/logout-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>ログアウト</dd>
								</dl></a></li>
					</ul></li>

				<li class="has-child"><a>商品</a>
					<ul>
						<li><a href="<%= request.getContextPath() %>/jp.co.aforce.user.DisplayAllProducts.execute"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>全商品リスト</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/search-product.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>商品を検索</dd>
								</dl></a></li>

					</ul></li>
				<li class="has-child"><a>購入</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/views/purchase-login.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>購入する</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/check-purchase-history-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>購入履歴</dd>
								</dl></a></li>
					</ul></li>
				<li class="has-child"><a>カート</a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/views/cart.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>カートを見る</dd>
								</dl></a></li>
					</ul></li>
				<li class="has-child"><a>HANGOVER</a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/views/about-hangover.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>会社紹介</dd>
								</dl></a></li>
						<li><a href="<%=request.getContextPath()%>/views/introduction.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>秋田の日本酒</dd>
								</dl></a></li>
						<li><a href="<%=request.getContextPath()%>/views/glossary.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>用語集</dd>
								</dl></a></li>
						<li><a href="<%=request.getContextPath()%>/views/contact.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>コンタクト</dd>
								</dl></a></li>
					</ul></li>


			</ul>
		</nav>
		<!-- progress bar -->
	</div>

	<div class="middle-container">

		<div class="input-container">
			<p style="font-weight: bold; color: red;">IDまたはパスワードが正しくありません。</p>
			<form
				action="<%= request.getContextPath() %>/views/update-confirmation.jsp"
				method="post" class="form">
				<input type="submit" value="戻る" class="form-button">
			</form>
		</div>



	</div>


	<div class="bottom-container"></div>


	<footer></footer>

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>

	<!-- plugins -->
	<script
		src="https://rawgit.com/kimmobrunfeldt/progressbar.js/master/dist/progressbar.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/6.26.0/babel.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/6.26.0/polyfill.min.js"></script>


	<script
		src="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/4-2-4/js/4-2-4.js"></script>




	<!--  js for dropdown -->
	<script src="<%= request.getContextPath() %>/js/dropdown.js"
		type="text/javascript">  </script>

	<!-- js for carousel -->
	<script src="<%= request.getContextPath() %>/js/carousel.js"
		type="text/javascript"></script>

	<!-- js for a progress bar -->
	<script src="<%= request.getContextPath() %>/js/progress-bar.js"
		type="text/javascript"></script>









</body>
</html>
