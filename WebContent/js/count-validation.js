

document.getElementById('form').onsubmit= function() {


	let quantity = document.getElementById('form').count.value;

	if (quantity == 0){
		console.log("適切な値を入力してください。");
		alert("適切な値を入力してください。")
		return false;
	}
		return true;


}




document.getElementById('search-product-price').onsubmit = function() {

	let min = document.getElementById('min').value;
	let max = document.getElementById('max').value;

	if (min < 0 || max < 0) {
		console.log("適切な値を入力してください。");
		alert("適切な値を入力してください。")
		return false;
	}
	return true;

}








