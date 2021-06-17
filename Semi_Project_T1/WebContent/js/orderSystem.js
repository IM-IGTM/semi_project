function newInfo() {
	 if (document.getElementById("different").checked){
		document.getElementById("reciveName").value = "";
		document.getElementById("recivePostcode").value = "";
		document.getElementById("reciveRoadAddress").value = "";
		document.getElementById("reciveJibunAddress").value = "";
		document.getElementById("reciveExtraAddress").value = "";
		document.getElementById("reciveDetailAddress").value = "";
 		document.getElementById("recivePhoneNumber1").value = "";
 		document.getElementById("recivePhoneNumber2").value = "";
 		document.getElementById("recivePhoneNumber3").value = "";
	}
}

function copy() {
	 if (document.getElementById("same").checked){
		document.getElementById("reciveName").value = document.getElementById("orderName").value;
 		document.getElementById("recivePostcode").value =  document.getElementById("orderPostcode").value;
 		document.getElementById("reciveRoadAddress").value =  document.getElementById("orderRoadAddress").value;
 		document.getElementById("reciveJibunAddress").value =  document.getElementById("orderJibunAddress").value;
 		document.getElementById("reciveExtraAddress").value =  document.getElementById("orderExtraAddress").value;
 		document.getElementById("reciveDetailAddress").value =  document.getElementById("orderDetailAddress").value;
 		document.getElementById("recivePhoneNumber1").value =  document.getElementById("orderPhoneNumber1").value;
 		document.getElementById("recivePhoneNumber2").value =  document.getElementById("orderPhoneNumber2").value;
 		document.getElementById("recivePhoneNumber3").value =  document.getElementById("orderPhoneNumber3").value;
	}
}

function selectMail() {
	if(document.getElementById("mailAddress3").value == "directly") {
		document.getElementById("mailAddress2").value = "";
		document.getElementById("mailAddress2").focus;
	} else if(document.getElementById("mailAddress3").value == "0") {
		alert('메일주소를 선택하세요')
	} else{
		document.getElementById("mailAddress2").value = document.getElementById("mailAddress3").value;
	}

	}
	
function address() {
        new daum.Postcode({
            oncomplete: function(data) {

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('orderPostcode').value = data.zonecode;
                document.getElementById("orderRoadAddress").value = roadAddr;
                document.getElementById("orderJibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("orderExtraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("orderExtraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

function address2() {
        new daum.Postcode({
            oncomplete: function(data) {

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('recivePostcode').value = data.zonecode;
                document.getElementById("reciveRoadAddress").value = roadAddr;
                document.getElementById("reciveJibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("reciveExtraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("reciveExtraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
