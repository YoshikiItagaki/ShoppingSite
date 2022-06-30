document.getElementById('search-demography').onsubmit = function() {

	let minimum = document.getElementById('min_birth_year').value;
	let maximum = document.getElementById('max_birth_year').value;
	let man = document.getElementById('male');
	let woman = document.getElementById('female');
	let both = document.getElementById('both');

	if (minimum < 0 || maximum < 0 || (!man.checked && !woman.checked && !both.checked)) {
		console.log("適切な値を入力してください。");
		alert("適切な値を入力してください。")
		return false;
	}
	return true;

}