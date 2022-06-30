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

<body>

	<div class="top-container">
		<img src="<%=request.getContextPath()%>/img/favicon.jpg" alt="favicon"
			class="icon">
		<div id="search">
			<form class="form"
				action="<%=request.getContextPath()%>/jp.co.aforce.user.SearchProduct.execute"
				method="post">
				<input type="search" name="keyword" id="searchbox" value="">
			</form>
		</div>
		<a href="<%=request.getContextPath()%>/views/index.jsp" class="title">HANGOVER</a>


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
						<li><a
							href="<%=request.getContextPath()%>/jp.co.aforce.user.DisplayAllProducts.execute"><dl>
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
						<li><a
							href="<%=request.getContextPath()%>/views/about-hangover.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>会社紹介</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/introduction.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>秋田の日本酒</dd>
								</dl></a></li>
						<li><a
							href="<%=request.getContextPath()%>/views/glossary.jsp"><dl>
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

		<p class="article-header">用語集</p>
	</div>

	<div class="middle-container">

		<!-- carousel -->
		<div class="picture-container">

			<ul class="slider" pause="hover">
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/spring-sake.jpg"
						alt="img01" class="sake active"></a></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/classic.jpg" alt="img02"
						class="sake"></a></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/autumn-sake.jpg"
						alt="img03" class="sake"></a></li>
				<li><a href="#"><img
						src="<%=request.getContextPath()%>/img/winter-sake.jpg"
						alt="img03" class="sake"></a></li>
			</ul>

		</div>

		<div class="description-container">

			<table class="description-table">

				<tr>
					<td class="description-label"><p>日本酒</p></td>
					<td><img src="<%=request.getContextPath()%>/img/sake.jpg"
						class="description-image">
				</tr>
				<tr>
					<td>
						<p class="description">お米をこして作る清酒のことで、さらに清酒は</p>
						<p class="description">「特定名称酒」とそうでないものの2種類に分類されます。</p>
					</td>
				</tr>

				<tr>
					<td class="description-label"><p>特定名称酒</p></td>
					<td><img src="<%=request.getContextPath()%>/img/specific.jpg"
						class="description-image">
				</tr>
				<tr>
					<td>
						<p class="description">原料や精米歩合などの要件を満たす日本酒に特定の名称が与えられているものを指します。</p>
						<p class="description">一方で、特定名称酒に含まれない日本酒は普通酒と呼ばれています。</p>
					</td>
				</tr>

				<tr>
					<td class="description-label"><p>精米歩合</p></td>
					<td><img src="<%=request.getContextPath()%>/img/rice.jpg"
						class="description-image">
				</tr>
				<tr>
					<td>
						<p class="description">精米歩合とは、精米（玄米から表層部を削った米）して残った米の割合を％で表したものです。</p>
						<p class="description">逆に、削った部分を表すのは「精白率」と呼ばれます。</p>
						<p class="description">つまり、精米歩合70％と精白率30％は、同じ割合であることを示しているのです。</p>
						<p class="description">精米歩合が低いほど、雑味の原因となる表層部分の脂質やたんぱく質、でんぷんが減少します。</p>
						<p class="description">加えて、脂質には香り成分を抑制する力があり、脂肪の含有量が減るほど華やかな香りになります。</p>
						<p class="description">その結果、精米に時間をかけるほど華やかで香り高い日本酒になります。</p>
						<p class="description">そういった理由で時間をかけて精米される日本酒ほど価格が高騰する傾向が見られます。</p>
					</td>
				</tr>

				<tr>
					<th class="description-title">
						<p>特定名称酒の3分類</p>
					</th>
				</tr>

				<tr>
					<td class="description-label"><p>純米酒</p></td>
					<td><img src="<%=request.getContextPath()%>/img/junmai.jpg"
						class="description-image"></td>
				</tr>
				<tr>
					<td>
						<p class="description-header">米本来の旨味、ふくよかなお米の香り</p>
						<p class="description">純米酒は米・米麴・水飲みの３つの原料のみで作られます。</p>
						<p class="description">純米酒は吟醸酒と異なり「醸造アルコール」が添加されていません。</p>
						<p class="description">純粋にお米だけを原料にした米のおいしさを引き出す日本酒のため、</p>
						<p class="description">純粋にお米だけを原料にした米のおいしさを引き出す日本酒のため、</p>
						<p class="description">米本来の素材の味を楽しめます。</p>
					</td>
				</tr>

				<tr>
					<td class="description-label"><p>吟醸酒</p></td>
					<td><img src="<%=request.getContextPath()%>/img/ginjo.jpg"
						class="description-image"></td>
				</tr>
				<tr>
					<td>
						<p class="description-header">フルーティで華やかな香り</p>
						<p class="description">一つ目の特徴には、醸造アルコホールが添加されており精米歩合が60％以下というのがあります。</p>
						<p class="description">二つ目には、「醸造造り」という製法で作られていることです。</p>
						<p class="description">醸造つくりとは、よりよく磨いたお米を通常よりも低い温度で長時間発行させる方法です。</p>
						<p class="description">それによって、フルーティーで華やかな香りが味わえます。</p>
					</td>
				</tr>

				<tr>
					<td class="description-label"><p>大吟醸酒</p></td>
					<td><img src="<%=request.getContextPath()%>/img/daiginjo.jpg"
						class="description-image"></td>
					<tr>
        			<td>
        				<p class="description-header">さらに洗練されたクリアな味わい</p>
        				<p class="description">大吟醸酒は、吟醸酒の中でも精米歩合が50％以下のもののことを指します。</p>
        				<p class="description">より精米に時間をかけることで、雑味が更に少なくなり、一層クリアな味わいになります。</p>
        				<p class="description">その結果、大吟醸酒は吟醸酒よりさらに雑味が少なく、すっきりした味わいになるとされます。</p>
        				<p class="description">精米歩合の観点でいうと、大吟醸酒の方がハイエンドなため、値段が更に高くなる傾向があります。</p>
        			</td>
        		</tr>

        		<tr>
        			<td class="description-label"><p>純米吟醸酒</p></td>
        			<td><img
						src="<%=request.getContextPath()%>/img/junmaiginjo.jpg"
						class="description-image"></td>
        		</tr>
        		<tr>
        			<td>
        				<p class="description-header">米本来の芳醇な味わいと優しい香り</p>
        				<p class="description">純米酒は米・米麴・水だけを使って、醸造アルコールを使わずに醸造造りで造られます。</p>
        				<p class="description">精米歩合が60％以下の米が用いられています。</p>
        				<p class="description">米本来のふくよかな味わいと優しく穏やかな香りが織りなす</p>
        				<p class="description">芳醇な味わいと華やかな香りのコントラストが魅力です。</p>

        			</td>
        		</tr>

        		<tr>
        			<td class="description-label"><p>純米大吟醸酒</p></td>
        			<td><img
						src="<%=request.getContextPath()%>/img/junmaidaiginjo.jpg"
						class="description-image"></td>
        		</tr>
        		<tr>
        			<td>
        				<p class="description-header">洗練された味わいと優美な香り</p>
        				<p class="description">大吟醸酒は、純米吟醸酒の中でも精米歩合が50％以下のものを指します。</p>
        				<p class="description">良く磨いた米を10度前後の低温で長時間かけて発酵させる醸造造りで発酵させる製法が用いられ、</p>
        				<p class="description">より精米に時間をかけることで、雑味が更に少なくなり、一層クリアな味わいになります。</p>
        				<p class="description">その結果、大吟醸酒は吟醸酒よりさらに雑味が少なく、すっきりした味わいになるとされます。</p>
        				<p class="description">そうして、純米ならではの米の旨味とコク、吟醸造りが生み出す吟醸香が楽しめます。</p>

        			</td>
        		</tr>


        	</table>

        </div>


    </div>

    <div class="bottom-container">

    </div>


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


	<script src="<%=request.getContextPath()%>/js/submission-validation.js"
						type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/date-input-validation.js"
						type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/confirmation-window.js"
						type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/format-validation.js"
						type="text/javascript"></script>







				</body>
</html>
