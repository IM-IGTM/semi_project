<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/orderSystem.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<table>
<tr><td align="center">주문서 작성</td></tr></table>
<form name="orderForm" action="CoffeeOrderController" method="post" onsubmit="">
	<table border="1">
		<tr>
			<td class="" align="center">이미지</td>
			<td class="" align="center">상품정보</td>
			<td class="" align="center">판매가</td>
			<td class="" align="center">수량</td>
			<td class="" align="center">적립금</td>
			<td class="" align="center">배송구분</td>
			<td class="" align="center">배송비</td>
			<td class="" align="center">합계</td>
		</tr>
		<tr>
			<td><img alt="" src=""></td>
			<td>상품구매금액</td>
			<td>20,000</td>
			<td>배송비</td>
			<td>3,000</td>
			<td>합계 :</td>
			<td>원</td>
		</tr>
	</table>
	<hr>
	
	<table>
		<tr>
			<td>주문 정보</td>
		</tr>

		<tr>
			<td>주문하시는 분</td>
			<td><input name="orderName" id= "orderName"></td>
		</tr>
		
		<tr>
			<td>주소</td>
			<td>
			<input type="text" name="orderPostcode" id="orderPostcode" placeholder="우편번호">
			<input type="button" onclick="address()" value="우편번호 찾기"><br>
			<input type="text" name ="orderRoadAddress" id="orderRoadAddress" placeholder="도로명주소">
			<input type="text" name="orderJibunAddress" id="orderJibunAddress" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" name="orderDetailAddress" id="orderDetailAddress" placeholder="상세주소">
			<input type="text" name="orderExtraAddress" id="orderExtraAddress" placeholder="참고항목">
		</td>
		</tr>
		
		<tr>
			<td>연락처</td>
			<td><input name = "orderPhoneNumber1" id = "orderPhoneNumber1"></td>
			<%-- -<td><select name = "phoneNumber1">
			<option value="pN1">010</option>
			<option value="pN2">011</option>
			<option value="pN3">016</option>
			<option value="pN4">017</option>
			<option value="pN5">016</option>
			</select>
			</td>--%>
			<td><input name = "orderPhoneNumber2" id = "orderPhoneNumber2"></td>
			<td><input name = "orderPhoneNumber3" id = "orderPhoneNumber3"></td>
		</tr>
					
		<tr>
			<td>이메일</td>
			<td><input name = "mailAddress1"></td>
			<td>@</td>
			<td><input name = "mailAddress2" id = "mailAddress2"></td>
			<td>
			<select name = "mailAddress3" id = "mailAddress3" onchange="selectMail();">
			<option value="0">이메일 선택</option>
			<option value="naver.com" id="naver.com">naver.com</option>
			<option value="gmail.com" id="gmail.com">gmail.com</option>
			<option value="nate.com" id="nate.com">nate.com</option>
			<option value="hanmail.net" id="hanmail.net">hanmail.net</option>
			<option value="directly" id="directly">직접입력</option>
			</select>
			</td>
		</tr>
		
		
	</table>
	<hr>
	<table>
		<tr>
			<td>배송 정보</td>
			<td></td>
		</tr>
	</table>

 	<table>
		<tr>	
			<td>배송지 선택</td>
			<td><input onclick="copy();" name = "selectOption"  id="same" type="radio">주문자 정보와 동일</td>
			<td><input onclick="newInfo();" name = "selectOption" id="different" type="radio">새로운 배송지</td> 
		</tr>
		
		<tr>
			<td>받으시는 분</td>
			<td><input name="reciveName" id = "reciveName"></td>
		</tr>
		
		<tr>
			<td>주소</td>
			<td>
			<input type="text" name="recivePostcode" id="recivePostcode" placeholder="우편번호">
			<input type="button" onclick="address2()" value="우편번호 찾기"><br>
			<input type="text" name ="reciveRoadAddress" id="reciveRoadAddress" placeholder="도로명주소">
			<input type="text" name="reciveJibunAddress" id="reciveJibunAddress" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" name="reciveDetailAddress" id="reciveDetailAddress" placeholder="상세주소">
			<input type="text" name="reciveExtraAddress" id="reciveExtraAddress" placeholder="참고항목">
		</td>
		</tr>
		
	
		<tr>
			<td>연락처</td>
			<td><input name = "recivePhoneNumber1" id = "recivePhoneNumber1"></td>
			<td><input name = "recivePhoneNumber2" id = "recivePhoneNumber2"></td>
			<td><input name = "recivePhoneNumber3" id = "recivePhoneNumber3"></td>
		</tr>

		<tr>
			<td>배송메세지</td>
			<td><textarea name = "reciveMessage"></textarea></td>
		</tr>
 
		<tr>
		<td><button >결제하기</button></td>
		</tr>
	</table> 

	<hr>

	<span>결제 예정 금액</span>
	<table>
	<tr>
	<td>총 주문금액<button>내역보기</button></td>
	<td>총 할인 결제 금액</td>
	<td>총 결제예정 금액</td>
	</tr>
	<tr>
	<td></td>
	<td></td>
	<td></td>
	</tr>
	<tr>
	<td>총 할인금액</td>
	</tr>
	<tr>
	<td>총 부가결제금액</td>
	</tr>
	</table>

	<hr>

	<span>결제수단</span>
	
	<table>
	<tr>
	<td><input onclick="" name = "paySelect"  id="" type="radio">카드 결제</td>
	<td><input onclick="" name = "paySelect"  id="" type="radio">에스크로 (실시간 계좌이체)</td>
	<td><input onclick="" name = "paySelect"  id="" type="radio">무통장 입금</td>
	<td><input onclick="" name = "paySelect"  id="" type="radio">에스크로(가상계좌)</td>
	</tr>
	
	</table>


</form>
</body>
</html>