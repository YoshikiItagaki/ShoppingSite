
function validateRegistrationOnSubmission() {

	let last_name = document.forms["form"]["last_name"].value;
	let first_name = document.forms["form"]["first_name"].value;
	var male = document.getElementById('male');
	var female = document.getElementById('female');
	birth_year = document.forms["form"]["birth_year"].value;
	birth_month = document.forms["form"]["birth_month"].value;
	birth_day = document.forms["form"]["birth_day"].value;
	let address = document.forms["form"]["address"].value;
	let phone_number = document.forms["form"]["phone_number"].value;
	let email = document.forms["form"]["email"].value;
	let password = document.forms["form"]["password"].value;


	if (last_name == null || first_name == null ||
		(!male.checked && !female.checked)
		|| birth_year == 0 || birth_month == 0 || birth_day == 0
		|| address == null || phone_number == null || email == null ||
		password == null) {
		alert("これら全ての項目は入力が必須です。");

		return false;
	} else {
		return confirm('情報を登録しますか？')
	}
}


function validateUpdateOnSubmission() {

	var last_name = document.forms["form"]["last_name"].value;
	var first_name = document.forms["form"]["first_name"].value;
	var male = document.getElementById('male');
	var female = document.getElementById('female');
	birth_year = document.forms["form"]["birth_year"].value;
	birth_month = document.forms["form"]["birth_month"].value;
	birth_day = document.forms["form"]["birth_day"].value;
	var address = document.forms["form"]["address"].value;
	var phone_number = document.forms["form"]["phone_number"].value;
	var email = document.forms["form"]["email"].value;
	var password = document.forms["form"]["password"].value;

	if (last_name == null || first_name == null||
		(!male.checked && !female.checked)
		|| birth_year == 0 || birth_month == 0 || birth_day == 0
		|| address == null || phone_number == null || email == null ||
		password == null) {
		alert("これらの項目全ては入力が必須です。");

		return false;
	}
	return confirm('情報を更新しますか？')

}

function validateLoginOnSubmission() {

	id = document.forms["form"]["id"].value;
	password = document.forms["form"]["password"].value;


	if (id == null || password == null) {
		alert("これらの項目全ては入力が必須です。");

		return false;
	} else {
		return confirm('ログインしますか？')
	}
}



function validateViewOnSubmission() {

	id = document.forms["form"]["id"].value;
	password = document.forms["form"]["password"].value;


	if (id == null || password == null) {
		alert("これらの項目全ては入力が必須です。");

		return false;
	} else {
		return confirm('ログインして登録情報を確認しますか？')
	}
}

function validateLogoutOnSubmission() {

	id = document.forms["form"]["id"].value;
	password = document.forms["form"]["password"].value;


	if (id == null || password == null) {
		alert("これらの項目全ては入力が必須です。");

		return false;
	} else {
		return confirm('ログアウトしますか？')
	}
}

function validateDeletionOnSubmission() {

	return confirm('情報を削除しますか？')

}
function validatePurchaseOnSubmission() {

	return confirm('購入に進みますか？')

}




