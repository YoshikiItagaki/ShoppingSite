function validateCheckHistoryOnSubmission() {

	var check_id = docucment.getElementById('id').value;
	var check_password = docucment.getElementById('password').value;


	if (check_id == null || check_password == null) {
		alert("これらの項目全ては入力が必須です。");

		return false;
	} else {
		return confirm('ログインしますか？')
	}
}