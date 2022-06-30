function validateRegistrationOnSubmission(){

	var last_name = document.forms["form"]["last_name"].value;
	var first_name = document.forms["form"]["first_name"].value;
	var sex = document.forms["form"]["sex"].value;
	var birth_year = document.forms["form"]["birth_year"].value;
	var birth_month = document.forms["form"]["birth_month"].value;
	var birth_day = document.forms["form"]["birth_day"].value;
	var address = document.forms["form"]["address"].value;
	var phone_number = document.forms["form"]["phone_number"].value;
	var email = document.forms["form"]["email"].value;
	var password = document.forms["form"]["password"].value;


	if(last_name==null || first_name==null  || sex==0
		|| birth_year==0 || birth_month== 0 || birth_day==0
		|| address==null ||phone_number==null|| email==null ||
		password == null ){
		alert("これらの項目全ては入力が必須です。");

		return false;
	} else {
		return confirm('情報を登録しますか？')
	}
}