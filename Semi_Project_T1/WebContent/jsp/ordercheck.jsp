<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<body onload="init();">
<script language="JavaScript">

var sell_price;
var amount;
function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;
	
	sum.value = (parseInt(hm.value) * sell_price)+
	(parseInt(hm.value) * ${param.weight })+
	(parseInt(hm.value) * ${param.size });
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = (parseInt(hm.value) * sell_price)+
			(parseInt(hm.value) * ${param.weight })+
			(parseInt(hm.value) * ${param.size });
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value =  (parseInt(hm.value) * sell_price)+${param.weight }+${param.size };
}  

</script>

<form name="form" method="get"  action="LoginController2">
<table border="2" id=odrTl>
<tr>
<td colspan="2" align="center">주문확인</td>
</tr>
<tr>
<td>상품명 </td>

<td>${c.c_title}</td>
</tr>
<tr>
<td>상품가격</td>
<td>${c.c_price }</td> 
 <!-- <td>10000</td>  -->
</tr>
<tr>
<td>중량</td>
<td>${param.weight }</td>
</tr>
<tr>
<td>쇼핑백사이즈</td> 
<td>${param.size }</td>
</tr>


<tr>
<td>수량 : <input type=hidden name="sell_price" value="${c.c_price }"> </td>
<td><input type="text" name="amount" value="1" size="3" onchange="change();">
<input type="button" value=" + " onclick="add();">
<input type="button" value=" - " onclick="del();"> </td>
</tr>
<tr>
<td colspan="2">금액 : <input type="text" name="sum" size="11" readonly>원 </td>
</tr>
</table>
<button> 주문하기 </button>
</form>
</body>
</body>
</html>