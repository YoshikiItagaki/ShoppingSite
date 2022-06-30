function validateRegistration() {

	//validation code here...

	if(!valid){
		alert('入力に誤りがあります。');
		return false;
	} else{
		return confirm('アカウントを登録しますか？');
	}
}