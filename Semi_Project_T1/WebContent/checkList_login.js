function check() {

	let regPWInput = document.myForm.regPW;
	let regPW2Input = document.myForm.regPW2;




	if(notEquals(regPWInput, regPW2Input)){
		alert('비번 재확인 실패');
		
		i4Input.value = "";
		i4Input.focus();
		
		return false;
	}











	return true;
}