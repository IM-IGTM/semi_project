<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/oction.za.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100;200&family=Nanum+Gothic&display=swap" rel="stylesheet">

</head>
<body>
   <form action="BuyNowController"  name="myform">
      <div style="width: 400px; height: 500px;">


<img src="img/${c.c_img }">
            
      </div>


      <table id="cTdl1">
         <tr>
            <td>상품명</td>
            <td>${c.c_title}</td>
         </tr>
         <tr>
            <td>판매가</td>
            <td>${c.c_price }</td>
         </tr>
         <tr>
            <td>원산지</td>
            <td>${c.c_origin}</td>
         </tr>
         <tr>
            <td>상품간단정보</td>
            <td>${c.c_explain }</td>
         </tr>
                  <input type="hidden" name="no" value="${c.c_no}">
         <tr>
            <td>중량</td>
            <td><select name="weight">
                 <option value="">--필수입력--</option>
                  <option value="0">200g</option>
                  <option value="5000">500g+5000원</option>
                  <option value="10000">1kg+10000원</option>

            </select></td>
         </tr>
         
         <tr>
            <td align="right">(최소 주문 수량 1개 이상)</td>
         </tr>
</table>
            <table id="cTb2">
               <tr>

                  <td>추가 구성 상품</td>
                  <td>추가로 구매를 원하시면 선택하세요</td>

                  <td>추가 구성상품</td>
                  <td id="ss">~추가로 구매를 원하시면 선택하세요~</td>

               </tr>
               <tr>
                  <td>이미지</td>
                  <td><img width="50%" src="data:image/jpeg;base64,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"></td>
               </tr>
               <tr>
                  <td>상품명</td>
                  <td>드발롱 쇼핑백</td>
               </tr>
               <tr>
                  <td>판매가</td>
                  <td>500원</td>
               </tr>
               <tr>
                  <td>사이즈</td>
                  <td><select name="size">
                        <option value="">--필수입력--</option>
                        <option value="0">소</option>
                        <option value="500">대+500</option>

                  </select></td>
               </tr>
               </table>
             
          <table>
                         <tr> 
           <td> 
               <input type="submit" onclick="return check()" name="buynow" value="지금구매">
                  
                
                 
          </td> 
           
          <td>
              <input type="submit" onclick="return addtocart()" name="atc" value="카트추가">
                  
               
               
            </td>
            <td>
              <input type="submit" onclick="return wishlist()" name="wl" value="위시리스트">
                  
             
               
            </td>
             
         </tr>
            </table> 
            
            
            
            
            
            

</form>
    
 
</body>
</html>