function check(){
let nselect1=document.myform.weight;
let nselect2=document.myform.size;



	if (nselect1.value==""||nselect2.value=="") {
		alert('필수입력하시오')
		return false;
	}
	
	return true;
	}


	



function addtocart(){
let nselect1=document.myform.weight;
let nselect2=document.myform.size;
	
	if (nselect1.value==""||nselect2.value=="") {
		alert('필수입력하시오')
		return false;
	}else {
	  alert('장바구니에 추가하시겠습니까?')
	  return true;
	}
	
		

	
	
	

	
}
function wishlist(){
let nselect1=document.myform.weight;
let nselect2=document.myform.size;

if (nselect1.value==""||nselect2.value=="") {
		alert('필수입력하시오')
		return false;
	}else {
	alert('관심상품 등록해 주세요')
	return true;
	}
	
		

	
	
	
}	
