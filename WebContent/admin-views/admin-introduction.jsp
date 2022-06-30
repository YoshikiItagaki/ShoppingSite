<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>HANGOVER</title>

<Link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<Link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/inputbox-style.css">
<Link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/description-container-style.css">
<link rel="icon" href="<%=request.getContextPath()%>/img/favicon.jpg">

<!-- Dropdown -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/dropdown-style.css">
<!-- Progress Bar -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/progress-bar-style.css">

<!-- carousel -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/carousel-style.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">



<link rel="preconnect" href="https://fonts.googleapis.com">

</head>

</head>
<body>
	<div class="top-container">
		<img src="<%=request.getContextPath()%>/img/favicon.jpg" alt="favicon"
			class="icon">
		<div id="search">
			<form class="form"
				action="<%=request.getContextPath()%>/jp.co.aforce.admin.SearchProduct.execute"
				method="post">
				<input type="search" name="keyword" id="searchbox" value="">
			</form>
		</div>
		<a href="<%=request.getContextPath()%>/admin-views/admin-index.jsp"
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
				<li class="has-child"><a>管理者情報</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-view-all-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>マイページ</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-update-confirmation.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>情報更新</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-delete-confirmation.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>情報削除</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-logout-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>ログアウト</dd>
								</dl></a></li>
					</ul></li>

				<li class="has-child"><a>商品管理</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-add-product-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>商品の追加</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-update-product-confirmation.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>商品の変更</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-delete-product-confirmation.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>商品の削除</dd>
								</dl></a></li>

					</ul></li>

				<li class="has-child"><a>商品検索</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/jp.co.aforce.admin.DisplayAllProducts.execute"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>全商品リスト</dd>
								</dl></a></li>

						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-search-product.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>商品検索</dd>
								</dl></a></li>
					</ul></li>

				<li class="has-child"><a>購入履歴管理</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-check-purchase-history-in.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>購入履歴閲覧</dd>
								</dl></a></li>

					</ul></li>

				<li class="has-child"><a>HANGOVER</a>
					<ul>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-about-hangover.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>会社紹介</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-introduction.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>秋田の日本酒</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-glossary.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>用語集</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/admin-views/admin-contact.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>コンタクト</dd>
								</dl></a></li>
					</ul></li>


			</ul>
		</nav>

		<!-- progress bar -->

		<p class="article-header" >秋田の日本酒</p>

	</div>


	<div class="middle-container">

		<!-- carousel -->
		<div class="picture-container">

			<ul class="slider" pause="hover">
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/akita-river.jpg"
						alt="img01" class="sake active"></a></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/akita-winter.jpg"
						alt="img02" class="sake"></a></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/akita-rice-field.jpg"
						alt="img03" class="sake active"></a></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/akita-rice-terrace.jpg"
						alt="img04" class="sake"></a></li>
			</ul>

		</div>

		<div class="description-container">

			<table class="description-table">

				<tr>
					<td><p class="description-header">米の秋田は酒のくに</p></td>
					<td><img src="<%=request.getContextPath()%>/img/rice.jpg"
						class="description-image">
				</tr>
				<tr>
					<td>
						<p class="description">	秋田は北海道・新潟につぐ全国3位の米どころです。</p>
						<p class="description">そして、清酒の出荷量で全国4位を誇る酒どころでもあります。</p>
						<p class="description">	秋田県の酒造りの歴史は古く、江戸時代には830軒を超える</p>
						<p class="description">	酒屋があったという記録が残っており、</p>
						<p class="description">地域の重要な産業としても位置づけられていました。</p>
					</td>
				</tr>

				<tr>
					<td><p class="description-header">なめらかさときめ細かさ</p></td>
					<td><img src="<%=request.getContextPath()%>/img/elegant-sake.jpg"
						class="description-image">
				</tr>
				<tr>
					<td>
						<p class="description">秋田の日本酒がおいしい理由は、雄物川、米代川、</p>
						<p class="description">子吉川などの一級河川が耕地を潤していること、</p>
						<p class="description">地元の山内（さんない）杜氏によって秋田独自の酒造りの技が受けつがれていること、</p>
						<p class="description">さらには米の品種改良などの取り組みがさかんなことがあげられます。</p>
						<p class="description">そして、秋田の日本酒の実力を改めて印象づけたのは、</p>
						<p class="description">1991年の第79回全国新酒鑑評会でした。、</p>
						<p class="description">県と県の酒造組合が共同で開発した「秋田流・花酵母（AK-1）」で造った日本酒が、</p>
						<p class="description">なんと26点も金賞を受賞。都道府県別で全国1位に輝いたのです。</p>
						<p class="description">秋田の日本酒は、雪国の寒い気候をうまく利用し、低温でじっくりと</p>
						<p class="description">時間をかけて仕込む「秋田流低温長期醗酵」と呼ばれる方法で造られています。</p>
						<p class="description">こうして手間ヒマをかけて造られた秋田の日本酒は、</p>
						<p class="description">全体として秋田美人の肌のようにきめが細かくなめらかで、</p>
						<p class="description">口あたりのやさしい淡麗な味わいが特徴とされています。</p>
					</td>
				</tr>

        	</table>

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
	<script src="<%=request.getContextPath()%>/js/dropdown.js"
		type="text/javascript">

	</script>

	<!-- js for carousel -->
	<script src="<%=request.getContextPath()%>/js/carousel.js"
		type="text/javascript"></script>

	<!-- js for a progress bar -->
	<script src="<%=request.getContextPath()%>/js/progress-bar.js"
		type="text/javascript"></script>









</body>
</html>
