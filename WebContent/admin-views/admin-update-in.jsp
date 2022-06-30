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
          <li class="has-child"><a>管理者情報</a>
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

    </div>

	<div class="middle-container">

		<div class="input-container">
			<p style="font-weight: bold;">更新する情報を入力してください。</p>
			<form
				action="<%=request.getContextPath()%>/jp.co.aforce.admin.Update.execute"
				method="post" name="form" class="form"	onsubmit="return validateUpdateOnSubmission()">



				<div class="form-select-wrap">

					<table>
						<tr>
							<td>氏名：名字</td>
							<td><input type="text" name="last_name" class="input-field"
								value="${admin.last_name }" onChange="updateValue"></td>
						</tr>
						<tr>
							<td>氏名：名前</td>
							<td><input type="text" name="first_name" class="input-field"
								value="${admin.first_name }" onChange="updateValue"></td>
						</tr>
						<tr>
							<td></td>
								<td><input type="radio" name="sex" id="male" value="1"> <label for="male">男</label>
								<input type="radio" name="sex" id="female" value="2"><label for="female">女</label>
							</td>
						</tr>
						<tr>
							<td></td>
							<td><select name="birth_year" id="birth_year">
									<option value="${admin.birth_year }">${admin.birth_year }</option>
							</select></td>
						</tr>
						<tr>
							<td></td>
							<td><select name="birth_month" id="birth_month">
									<option value="${admin.birth_month }">${admin.birth_month }</option>
							</select></td>
						</tr>
						<tr>
							<td></td>
							<td><select name="birth_day" id="birth_day">
									<option value="${admin.birth_day}">${admin.birth_day}</option>
							</select></td>
						</tr>
						<tr>
							<td>住所</td>
							<td><input type="text" name="address" class="input-field"
								value="${admin.address }" onChange="validateForm()"></td>
						</tr>
						<tr>
							<td>電話番号</td>
							<td><input type="text" name="phone_number" id="p"
								value="${admin.phone_number }" onchange="validateForm()"></td>
						</tr>
						<tr>
							<td>メールアドレス</td>
							<td><input type="text" name="email"
								value="${admin.email }" onChange=" return updateValue()"></td>
						</tr>
						<tr>
							<td>パスワード</td>
							<td><input type="password" name="password"
								value="${admin.password }" onChange="updateValue()"></td>
						</tr>
						<tr>
						<tr>
							<td></td>
							<td><input type="hidden" name="id" value="${admin.id }"
								onChange="updateValue()"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>


					</table>

				</div>

				<br> <input type="submit" value="更新" class="form-button">
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
	<script src="<%=request.getContextPath()%>/js/password-validation.js"
		type="text/javascript"></script>









</body>
</html>


