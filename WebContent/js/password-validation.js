

document.getElementById('form').password.onchange = function() {

 password = document.getElementById('password').value;

	if (password.length < 6) {

		alert("パスワードは最低6文字です。");

		return false;
	}

	return true;
}