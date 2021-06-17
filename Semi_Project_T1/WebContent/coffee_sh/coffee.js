function check(){
let nselect1=document.myform.weight;
let nselect2=document.myform.size;
/*let atc=document.myform.atc;
let wl=document.myform.wl;*/


	if (nselect1.value==""||nselect2.value=="") {
		alert('필수입력하시오')
		return false;
	}
	/*else if(atc.value!=null){
	 alert('장바구니에 추가하시겠습니까?')
	}else if(wl.value!=null){
	alert('장바구니에 추가하시겠습니까?2')
		*/
	return true;
	}


	



function addtocart(){
let nselect1=document.myform.weight;
let nselect2=document.myform.size;
	
	if (nselect1.value==""||nselect2.value=="") {
		alert('필수입력하시오')
	}else {
	  alert('장바구니에 추가하시겠습니까?')
	}
	
		

	
	
	

	
}
function wishlist(){
let nselect1=document.myform.weight;
let nselect2=document.myform.size;

if (nselect1.value==""||nselect2.value=="") {
		alert('필수입력하시오')
	}else {
	  whish=alert('관심상품 등록해 주세요')
	}
	
		

	
	
	
}	
