const email = document.getElementById('email').value;
const email_format =/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

const phone_number = document.getElementById('phone_number').value;
const phone_number_format = /^[0-9]+$/;
var password = document.forms["form"]["password"].value;



document.getElementById('form').email.onchange = function() {


	if (!email.match(email_format)) {

		console.log("適切なメールアドレスを入力してください。");
		console.log(email);
		alert("適切なメールアドレスを入力してください。");
		document.getElementById('email').focus();
		return false;

	}

	return true;

}


document.getElementById('form').phone_number.onchange = function() {



	if (!phone_number.match(phone_number_format)) {

		console.log(phone_number);
		alert("電話番号は数値だけで入力してください。");
		document.getElementById('phone_number').focus();
		return false;

	}

	return true;

}













