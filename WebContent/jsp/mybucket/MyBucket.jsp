<%--  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

#originalImgId {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#originalImgId:hover {
	opacity: 0.7;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, .5); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: 0px;
	display: block;
	width: 100%;
	height: 100%;
	max-width: 700px;
	vertical-align: middle;
}

/* Caption of Modal Image */
#caption {
	margin: auto;
	display: flex;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 0;
	height: 150px;
}

/* Add Animation */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* The Close Button */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>
<style>
div#container
{
width:900px;
height: 500px;
/* border:1px solid red; */
vertical-align: middle;
margin: auto;
display: block;
}
#image-box
{
width: 65%;
height: 100%;
float:left;
background-color:black;
/* border:1px solid blue; */
/* margin: 5px 5px; */
}
#reply-box
{
width: 35%; 
height: 100%;
float:right;
/* border:1px solid green; */
margin:0px;
background-color:white;
}
</style>
<style>
ul{width:200px;}
li{
    height:50px;
    line-height: 50px;
    text-align: center;
    border-bottom: 1px solid blue;
    background-color: yellow;
}
.scrollBlind{
    width:107%;
    height:100%;
/*     width:230px;
    height:100%; */
    /* 스크롤 생성 위치 */
    overflow-y:scroll;
    background-color: white;
} 
.view{
    width:100%;
    height:65%;
/*     width:200px;
    height:260px;
    position: absolute; */
    /* border:1px solid red; */
    border-bottom:1px solid #f1f1f1;
    
    overflow: hidden;
}
.repl{
	margin-top:5px;
}
.repl-id{
	display:inline;
	margin:5px;
}
</style>
</head>
<body>
    <section>
		<a href = "BucketPostForm.do">등록</a>
    </section>
    <H3>TEST</H3>
	<div>
 		<c:forEach items="${bucketList}" var="bucket">
			<img id="originalImgId" src="${bucket.bucketImagePath }" alt = ${bucketId } style="width: 100%; max-width: 300px" onclick="startModal(this)"/>
		</c:forEach> 
	</div>
	<div id="modal" class="modal" onclick="this.style.display='none'">
		<div id="container">
			<div id="image-box">
				<img class="modal-content" id="modalImg">
			</div>
			<div id="reply-box">
				<div class = "view">
					<div class = "scrollBlind">
						<div class="repl">
							<h3 class = "repl-id">ljm089</h3>
							<span class = "repl-content">hi~~</span>
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
	<script>
		function startModal(element) {
			
			document.getElementById("modalImg").src = element.src;
			document.getElementById("modal").style.display = "block";
		}
	</script>
</body>
</html>
 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

#originalImgId {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#originalImgId:hover {
	opacity: 0.7;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, .5); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: 0px;
	display: block;
	width: 100%;
	height: 100%;
	max-width: 700px;
	vertical-align: middle;
}

/* Caption of Modal Image */
#caption {
	margin: auto;
	display: flex;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 0;
	height: 150px;
}

/* Add Animation */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* The Close Button */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>
<style>
div#container
{
width:900px;
height: 500px;
/* border:1px solid red; */
vertical-align: middle;
margin: auto;
display: block;
}
#image-box
{
width: 65%;
height: 100%;
float:left;
background-color:black;
/* border:1px solid blue; */
/* margin: 5px 5px; */
}
#reply-box
{
width: 35%; 
height: 100%;
float:right;
/* border:1px solid green; */
margin:0px;
background-color:white;
}
</style>
<style>
ul{width:200px;}
li{
    height:50px;
    line-height: 50px;
    text-align: center;
    border-bottom: 1px solid blue;
    background-color: yellow;
}
.scrollBlind{
    width:107%;
    height:100%;
/*     width:230px;
    height:100%; */
    /* 스크롤 생성 위치 */
    overflow-y:scroll;
    background-color: white;
} 
.reple-view{
    width:100%;
    height:70%;
/*     width:200px;
    height:260px;
    position: absolute; */
    /* border:1px solid red; */
    border-bottom:1px solid #f1f1f1;
    
    overflow: hidden;
}
.repl{
	margin-top:5px;
}
.repl-id{
	display:inline;
	margin:5px;
}
.add-view{
	width:100%;
    height:20%;
    border-bottom:1px solid #f1f1f1;
}
.add-view-child i{
	font-size: x-large;
	margin: 5px;
}
#total-like-view{
	display:block;
}
#reply-post-up textarea{
	width:100%;
	height:10%;
    padding: 0;
    border: 0;
    resize: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
<script>
	var imageId = "";
	var request = new XMLHttpRequest();
	function startModal(element) {
		imageId = element.id;
		console.log(imageId);
		document.getElementById("modalImg").src = element.src;
		
		request.open("Post", "GetReply.do?imageId="+encodeURIComponent(imageId, true));
		request.onreadystatechange = searchProcess;//성공적으로 요청하는 동작이 끝났으면 searchProcess 실행
		request.send(null);
	}
	function searchProcess() {
		var tag = "";
		
		if (request.readyState = 4 && request.status == 200) {
			//4: request finished and response is ready
			//Returns the status-number of a request 200: "OK"
			/*성공적으로 통신이 되었다면*/
			console.log("requset finished and response is ready");
			//eval()은 문자열을 코드로 인식하게 하는 함수입니다.
			//responseText	: get the response data as a string
			//var object = JSON.parse(request.responseText); 
			console.log(request.responseText);
			//var object = eval('(' + request.responseText + ')'); 
			
			//컨트롤러의  result.append("{\result\":[");의 result를 의미
			var result = JSON.parse(request.responseText);
			console.log("result = " + result);
			for (var key in result){
				console.log("key = " + key);
				console.log("result[key] = " + result[key]);
				tag += '<div class="repl"><h3 class = "repl-id">' + key  + '</h3><span class = "repl-content">' + result[key]; + '</span></div>';
			}
			document.getElementById("ajax-repl").innerHTML += tag;
			document.getElementById("modal").style.display = "block";
		}
	}
		
	window.onclick = function(event) {
		if (event.target == modal) {
		  modal.style.display = "none";
		}
	}
</script>
<script>
	//댓글 엔터혹은 게시 버튼 클릭시 댓글 추가
	//쉬프트 엔터는 줄바꿈
	var replyContent;
	$(function() {
	    $('textarea').on('keydown', function(event) {
	        if (event.keyCode == 13)
	            if (!event.shiftKey){
	                event.preventDefault();
	                $('#reply-submit').submit();
	            }
	    });
	    
	    $('#reply-submit').on('submit', function() {
	    	buttonClick();
	    });
	    
	    function buttonClick() {
	        //alert("you pressed submit button!");
	        //수정 시작
	        replyContent = $('#reply-textArea').val();
	        console.log("replyContent = " + replyContent);
			$(document).ready(function(){
				$.ajax({
					type:"POST",
					url:"AppendReply.do",
					data:{content:replyContent},
					dataType:"text",
					success: function(result){
						console.log(result);
					},
					error: function(xhr, status, error){
						console.log(error);
					}
				})
			})
	        //
	    }
	});
</script>
</head>
<body>
    <section>
		<a href = "BucketPostForm.do">등록</a>
    </section>
    <H3>TEST</H3>
	<div>
 		<c:forEach items="${bucketList}" var="bucket">
			<img id="${bucket.bucketId }" src="${bucket.bucketImagePath }" style="width: 100%; max-width: 300px" onclick="startModal(this)"/>
		</c:forEach> 
	</div>
	<!-- onclick="this.style.display='none'" -->
	<div id="modal" class="modal">
		<div id="container">
			<div id="image-box">
				<img class="modal-content" id="modalImg">
			</div>
			<div id="reply-box">
				<div class = "reple-view">
					<div id="ajax-repl"class = "scrollBlind">
						<div class="repl">
						</div>
					</div>
				</div>
				<div class = "add-view">
					<span class = "add-view-child">
						<a href="#" id="like" class="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
						<a href="#" id="add" class="#"><i class="fa fa-plus-circle" aria-hidden="true"></i></a>
						<a href="#" id="delete" class="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
						<a href="#" id="update" class="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
					</span>
					<span id="total-like-view">
						좋아요 500개
					</span>
				</div>
				<div id="reply-post-up">
					<form id="reply-submit">
						<span><textarea id="reply-textArea" rows="3"></textarea></span>
						<span><button type="submit" onclick="buttonClick();">올리기</button></span>
					</form>
				</div>
			</div> 
		</div>
	</div>
</body>
</html>
















<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile | Vietgram</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <nav class="navigation">
        <div class="navigation__column">
            <a href="Index.do">
                <img src="images/mylogo.png" />
            </a>
        </div>
        <div class="navigation__column">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Search">
        </div>
        <div class="navigation__column">
            <ul class="navigations__links">
                <li class="navigation__list-item" id="sign-in" style="display:block;">
                    <a href="LoginForm.do" class="navigation__link">
                        <i class="fa fa-sign-in" aria-hidden="true"></i>Login
                    </a>
                </li>
                <li class="navigation__list-item" id="sign-up" style="display:block;">
                    <a href="#" class="navigation__link">
                       	<i class="fa fa-user-plus" aria-hidden="true"></i>SignUp
                    </a>
                </li>
                <li class="navigation__list-item" id="sign-out" style="display:none;">
                    <a href="#" class="navigation__link" onclick = "logOut()">
                       	<i class="fa fa-sign-out" aria-hidden="true"></i>Logout
                    </a>
                </li>
            </ul>
            <% String userid = (String)session.getAttribute("userid"); %>
            <% if(userid != null){%>
	            <script>
	           		document.getElementById("sign-in").style.display = 'none';
	           		document.getElementById("sign-up").style.display = 'none';
	           		document.getElementById("sign-out").style.display = 'block';
	           	</script>
            <% }else{%>
            	<script>
            		document.getElementById("sign-in").style.display = 'block';
            		document.getElementById("sign-up").style.display = 'block';
            		document.getElementById("sign-out").style.display = 'none';
            	</script>
            <%	}%>
            <script>
            	function logOut(){
            		window.alert("로그아웃 하시겠습니까?");
            		document.location.href = "LogOut.do";
            	}
            </script>
        </div>
    </nav>
    <main id="profile">
        <header class="profile__header">
            <div class="profile__column">
                <img src="images/avatar.jpg" />
            </div>
            <div class="profile__column">
                <div class="profile__title">
                    <h1 class="profile__username">${userid }</h1>
                    <a href="edit-profile.html">Edit profile</a>
                    <i class="fa fa-cog fa-lg"></i>
                </div>
                <ul class="profile__stats">
                    <li class="profile__stat">
                        <span class="stat__number">${bucketList.size() }</span> posts
                    </li>
                    <li class="profile__stat">
                        <span class="stat__number">0</span> followers
                    </li>
                    <li class="profile__stat">
                        <span class="stat__number">0</span> following
                    </li>
                </ul>
                <p class="profile__bio">
                    <span class="profile__full-name">
                        Nicolás Serrano Arévalo
                    </span> Doing whatever and eating Pho Lorem ipsum dolor sit amet consectetur, adipisicing
                    elit. Ducimus suscipit praesentium eveniet quibusdam ipsam omnis fugit. Tempore voluptates ratione recusandae
                    natus illo perspiciatis suscipit, odio consequuntur quasi obcaecati minus! Omnis.
                    <a href="#">serranoarevalo.com</a>
                </p>
            </div>
        </header>
        <section>
        	 <jsp:include page = "../category/topmenu.jsp"></jsp:include>
        </section>
        <br>
        <section>
			<a href = "BucketPostForm.do">등록</a>
        </section>
        <br>
        <section>
        	<jsp:include page="BucketPhotos.jsp"></jsp:include>
        </section>
    </main>
    <footer class="footer">
        <div class="footer__column">
            <nav class="footer__nav">
                <ul class="footer__list">
                    <li class="footer__list-item"><a href="#" class="footer__link">About Us</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Support</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Blog</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Press</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Api</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Jobs</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Privacy</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Terms</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Directory</a></li>
                    <li class="footer__list-item"><a href="#" class="footer__link">Language</a></li>
                </ul>
            </nav>
        </div>
        <div class="footer__column">
            <span class="footer__copyright">© 2017 Vietgram</span>
        </div>
    </footer>
    
</body>
</html> --%>