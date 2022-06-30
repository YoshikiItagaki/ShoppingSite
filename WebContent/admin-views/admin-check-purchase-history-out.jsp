
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>HANGOVER</title>

<Link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<Link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/inputbox-style.css">
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
      <img src="<%=request.getContextPath()%>/img/favicon.jpg" alt="favicon" class="icon">
      <div id="search">
        <form class="form" action="<%=request.getContextPath()%>/jp.co.aforce.admin.SearchProduct.execute" method="post">
          <input type="search" name="keyword" id="searchbox" value="">
        </form>
      </div>
      <a href="<%= request.getContextPath() %>/admin-views/admin-index.jsp" class="title">HANGOVER</a>


        <div id="splash">
        <div id="splash_text"><p class="loading-message" style="left-padding:50px;">loading...<p></div>
      </div>


<!-- dropdown -->

      <nav class="menu-container">

        <ul>
          <li class="has-child"><a href= "<%= request.getContextPath() %>/views/view-all-in.jsp">管理者情報</a>
            <ul>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-view-all-in.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>マイページ</dd>
                  </dl></a></li>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-update-confirmation.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>情報更新</dd>
                  </dl></a></li>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-delete-confirmation.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>情報削除</dd>
                  </dl></a></li>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-logout-in.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>ログアウト</dd>
                  </dl></a></li>
            </ul>
          </li>

          <li class="has-child"><a>商品管理</a>
            <ul>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-add-product-in.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>商品の追加</dd>
                  </dl></a></li>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-update-product-confirmation.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>商品の変更</dd>
                  </dl></a></li>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-delete-product-confirmation.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>商品の削除</dd>
                  </dl></a></li>

            </ul>
          </li>

          <li class="has-child"><a>商品検索</a>
          	<ul>
                <li><a href="<%= request.getContextPath() %>/jp.co.aforce.admin.DisplayAllProducts.execute"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>全商品リスト</dd>
                  </dl></a></li>

                <li><a href="<%= request.getContextPath() %>/admin-views/admin-search-product.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>商品検索</dd>
                  </dl></a></li>
            </ul>

          </li>

          <li class="has-child"><a>購入履歴管理</a>
            <ul>
                <li><a href="<%= request.getContextPath() %>/admin-views/admin-check-purchase-history-in.jsp"><dl>
                  <dt><img src="" alt=""></dt>
                  <dd>購入履歴閲覧</dd>
                  </dl></a></li>

            </ul>
          </li>

          <li class="has-child"><a>HANGOVER</a>
					<ul>
						<li><a href="<%=request.getContextPath()%>/admin-views/admin-about-hangover.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>会社紹介</dd>
								</dl></a></li>
						<li><a href="<%=request.getContextPath()%>/admin-views/admin-introduction.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>秋田の日本酒</dd>
								</dl></a></li>
						<li><a href="<%=request.getContextPath()%>/admin-views/admin-glossary.jsp"><dl>
									<dt>
										<img src="" alt="">
									</dt>
									<dd>用語集</dd>
								</dl></a></li>
						<li><a href="<%=request.getContextPath()%>/admin-views/admin-contact.jsp"><dl>
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

		<div class="input-container" style="width: 85%;">
			<p style="font-weight: bold; margin-left: 30%;">顧客購入履歴の閲覧</p>


			<div id="customer-history-option">

				<p>${purchase.result }</p>

				<form
					action="<%=request.getContextPath()%>/jp.co.aforce.admin.CheckPurchaseHistory.execute"
					method="post" class="form" name="form" id="desc">

					<br> <input type="submit" class="search-button" id="sort-desc" value="最新の購入順">

				</form>
				<br>

				<form
					action="<%=request.getContextPath()%>/jp.co.aforce.admin.CheckPurchaseHistoryASC.execute"
					method="post" class="form" name="form" id="asc">

					<br> <input type="submit" class="search-button" id="sort-asc" value="最古の購入順">

				</form>
				<br>

				<p>	誕生年と性別で参照</p><br>

				<form
					action="<%=request.getContextPath()%>/jp.co.aforce.admin.CheckPurchaseHistoryBirthyearSex.execute"
					method="post" class="min-max-search" name="form" id="search-demography">


						<select name="min_birth_year" id="min_birth_year" class="min-max">
							<option value="-1">誕生年を指定する</option>
							<option value="1930">1930年</option>
							<option value="1940">1940年</option>
							<option value="1950">1950年</option>
							<option value="1960">1960年</option>
							<option value="1970">1970年</option>
							<option value="1980">1980年</option>
							<option value="1990">1990年</option>
							<option value="2000">2000年</option>
						</select>

						<select name="max_birth_year" id="max_birth_year" class="min-max">
							<option value="-1">誕生年を指定する</option>
							<option value="1940">1940年</option>
							<option value="1950">1950年</option>
							<option value="1960">1960年</option>
							<option value="1970">1970年</option>
							<option value="1980">1980年</option>
							<option value="1990">1990年</option>
							<option value="2000">2000年</option>
							<option value="2000">2010年</option>


						</select><br>
						<input type="radio" name="sex" id="male" value="1">
						<label for="male">男</label>
						<input type="radio" name="sex"	id="female" value="2">
						<label for="female">女</label>
						<input type="radio" name="sex"	id="both" value="3">
						<label for="both">男女両方</label>
						<input	type="submit" class="form-button" id="birthyear-search-button" value="検索">
				</form>
				<br>

			</div>




			<table>
				<c:forEach var="purchase" items="${list }">

					<tr>
						<td>購入日</td>
						<td>${purchase.date}</td>
						<td><img
							src="<%= request.getContextPath() %>/img/${purchase.product_id}.jpg"
							alt="product image" class="product-image"></td>
						<td>
							<table>
								<tr>
									<td>商品ID：${purchase.product_id }</td>
								</tr>
								<tr>
									<td>購入商品: ${purchase.product_name }</td>
								</tr>
								<tr>
									<td>単価：${purchase.price }円</td>
								</tr>
								<tr>
									<td>購入数：${purchase.count}本</td>
								</tr>
								<tr>
									<c:set var="sum"
										value="${Math.round(purchase.price * purchase.count * 1.1) }" />
									<td class="sum">小計（税込み）：${(sum) }円
								</tr>
								<tr>
									<td>ID：${purchase.id}</td>
								</tr>
								<tr>
									<td>お名前：${purchase.name}</td>
								</tr>
								<tr>
									<td>住所：${purchase.address}</td>
								</tr>
								<tr>
									<td>メールアドレス：${purchase.email}</td>
								</tr>

							</table>
						</td>
					</tr>

				</c:forEach>
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


	<script src="<%=request.getContextPath()%>/js/conditional-search-validation.js"
		type="text/javascript"></script>



</body>
</html>
