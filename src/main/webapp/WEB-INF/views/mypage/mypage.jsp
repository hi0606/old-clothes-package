<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>나의 옷장</title>
<link href="<c:url value="/resources/css/mypage.css"/>" rel='stylesheet' />
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/review.css"/>" rel='stylesheet' />
<script>
	var auth = "${authUser.userno}";
	var aa = "${users.userno}";
	console.log(auth);
	console.log(aa);
</script>
</head>
<body>
	<div>
		<c:import url='/WEB-INF/views/includes/header.jsp' />
	</div>
	<div class="closet_wrap" >  
    
    <div class="title">
 
      <div class="nickname">
      <c:if test="${authUser.sect eq 'users' }">
      	<input type="hidden" value="${authUser.userno }" id="chatuserno"/>
      </c:if>
      <img id="clostick1" src="/image/clostick.png" alt="옷걸이">
     <c:choose>    
	    	<c:when test="${users.sect eq 'users' }">
	    			<strong>${users.nickname }의 옷장</strong>
	    	</c:when>
      <c:otherwise>
      				<strong>${business.bname }의 옷장</strong>
      </c:otherwise>
      </c:choose>
             
        <img id="clostick2" src="/image/clostick.png" alt="옷걸이"> 
      </div>   
      <div class="fname_closet">
		        <a href="#">
			      <img id="like" src="/image/redheart.png" alt="찜" title="나의 찜목록">
		        </a>          
		        <a href="/mypage/message">
			      <img id="letter" src="/image/letter.png" alt="쪽지" title="나의 쪽지함">
		        </a>
		        <c:if test="${authUser.sect eq 'users'}">
		        	<c:if test="${users.userno eq authUser.userno}">          
		      			<a href="javascript:openDetail('/chatList')">
							<img src="/image/chaticon.png" id="chaticon_img" alt="채팅" title="나의 채팅방">
								<span class="nav__notification nbadge" id="messageAlert"></span>
						</a>
					</c:if>	
				</c:if>				
		        <a href="/passcheck">
              	  <img id="prosetting" src="/image/profilesetting.png" alt="프로필수정" title="회원정보 수정">
		        </a>
        </div>
      </div>        	    
  	

	<div class="self_Introduction">
		<div class="closetImage">
			<img src="/image/closet.png" alt="옷장">
    </div>
    <div class="second">
		  <div class= "myRecord">
		  <c:if test="${authUser.sect eq 'users' }">
			  <span>상품등록 : ${totalcount } 개</span>
			  <span>거래완료 : ${statuscount } 건</span>
			  <span>받은 거래후기 : ${reviewcount }개</span>
		  </c:if>
		  </div>		
		  <div class="introduce" id="AAA">				 
				<img id="setting" src="/image/setting1.png" alt="소개수정" >
			
  		</div>
  	<div class="intro_check">  
				<textarea class="intro_text">안녕하세요,<c:choose><c:when test="${authUser.sect eq 'users' }"> ${authUser.nickname }의 옷장입니다. </c:when> <c:otherwise> ${business.bname }의 옷장입니다. </c:otherwise> </c:choose>
				</textarea>
				<button class="intro_btn">확인</button>
		  </div>
	</div>
	
		
  </div>
  <script>
  		$('.intro_check').css('display','none');
  		
	  $('#setting').click(function(){ //설정버튼 클릭했을 때
<<<<<<< HEAD

=======
>>>>>>> f4d770fc953646f4cadce8d7c65e713c71c31e4a
	    <div class="introduce" id="introduce">
	    	<c:if test="${users.userno eq authUser.userno}">			 
				<img id="setting" src="/image/setting1.png" alt="소개수정" >
			</c:if>
			<c:choose>
				<c:when test="${users.introduce eq null }">
					<c:choose>
						<c:when test="${users.sect eq 'users' }">
							<p> 안녕하세요 ,  ${users.nickname }의 옷장입니다. </p>
						</c:when>
						<c:otherwise>						
							<p> 안녕하세요 ,  ${business.bname }의 옷장입니다. </p>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>						
					<p>${users.introduce }</p>
				</c:otherwise>
			</c:choose>
 		</div>
	  	<div class="intro_check">  
					<textarea class="intro_text">${users.introduce }</textarea>
					<button class="intro_btn">확인</button>
			  </div>
		</div>
  	</div>
  	</div>
  <script>
   	 $('.intro_check').css('display','none');   	 
   	 $('#setting').click(function(){ //설정버튼 클릭했을 때
			$(this).css('display','none');
			$('.introduce').css('display','none');
			$('.intro_check').css('display','flex');
	  });
	  
	  	$('.intro_btn').click(function(){
	  		var introduce = $('.intro_text').val();
	  		alert(introduce);
	  		$.ajax({
				type : "post",
				url : "/mypage",
				data : {introduce:introduce},
				
				success : function(data) {
					console.log(data);
<<<<<<< HEAD

=======
>>>>>>> f4d770fc953646f4cadce8d7c65e713c71c31e4a
					var text ="";
					text = data;
					
					document.getElementById("AAA").innerHTML = text;
					$('#setting').css('display','block');
<<<<<<< HEAD

=======
>>>>>>> f4d770fc953646f4cadce8d7c65e713c71c31e4a
					var text ="";					
					text += '<img id="setting" src="/image/setting1.png" alt="소개수정" >';
					text += "<p>"+data+"</p>";
					console.log("text" + text);
					document.getElementById('introduce').innerHTML = text;	
					/* location.reload(); */
					//$('#introduce').html(data);
								
				},
				error : function(err) {
					console.log(err);
				}
			});	  		
	  	});	  		 
	  	
	  	$('.intro_btn').click(function(){
  			$('.introduce').css('display','block');
			$('.intro_check').css('display','none');
			$('#setting').css('display','block');			
  		});
  </script>
   <script src="<c:url value='/resources/js/mypage/mypage.js'/>"></script>
<<<<<<< HEAD

			
=======
			  <span>상품등록 : ${totalcount } 개</span>
			  <span>거래완료 : 19건</span>
			  <span>받은 거래후기 : ${reviewcount }개</span>
>>>>>>> f4d770fc953646f4cadce8d7c65e713c71c31e4a
		  </div>		
		 
 <script>
 function openDetail(url) {
		var width = 850;
		var height = 650;
		var left = (window.screen.width - width) / 2;
		var top = (window.screen.height - height) / 2;
		window.open(url, 'detail', 'width=' + width +', height='+height +', left='+left +', top='+top +', location=no, status=no, scrollbar=yes');
	} 
 
var chatuserno = document.getElementById('chatuserno').value;
	console.log("chatuserno: " + chatuserno);

	$(document).ready(function() {
	
		if (chatuserno != null) {
			getUnread();
			getInfiniteUnread();
		}
	});

 function getUnread() {
		$.ajax({
			url: "/chatUnreadAlert/ajax",
			type: "POST",
			data: JSON.stringify({
				chatuserno: chatuserno
			}) ,
			dataType: "json",
			contentType: "application/json",
			success: function(result) {
				if (result >= 1) {
					showUnread(result);
					console.log(result);
					$("#messageAlert").show();
				} else {
					$("#messageAlert").css('display','none');
					showUnread('');
				}
			}
		});
	}
	
	function getInfiniteUnread() {
		setInterval(() => {
			getUnread();
		}, 1000);
	}
	
	function showUnread(result) {
		$('#messageAlert').html(result);
		/*if(result < 1) {
			$("#messageAlert").css('display','none');
		}else {
		}*/
	}
 </script> 
</body>
</html>