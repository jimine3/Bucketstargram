<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<title>Insert title here</title>
</head>
<body>
	<img class="20190816063027784" src="../images/feedPhoto.jpg" alt="a" style="width: 100%; max-width: 200px">
	<div class="repl"></div> 
	<script>
		var imageId = "20190816063027784";
		function startModal(element){
			imageId = element.alt;
		}	
		$("#20190816063027784").bind("click", function(){
		    $.ajax({
		        url : "GetReply.do",
		        type: "get",
		        data : { "BucketId" : "20190816063027784" },
		        success : function(responseData){
		            $("#ajax").remove();
		            var data = JSON.parse(responseData);
		            if(!data){
		                alert("존재하지 않는 ID입니다");
		                return false;
		            }
		            var html = '';
		            html += '<form class="form-signin" action="" id="ajax">';
		            html += '이름<input type="text" class="form-control"  name="name" value="'+data.name+'">';
		            html += '아이디<input type="text" class="form-control" name=id" value="'+data.id+'">';
		            html += '이메일<input type="text" class="form-control"  name="email" value="'+data.email+'">';
		            html += '비밀번호<input type="text" class="form-control" name="password" value="'+data.password+'">';
		            html += '</form>';
		            $("#repl").after(html);
		        }
		    });
		});
</script>
</body>
</html>