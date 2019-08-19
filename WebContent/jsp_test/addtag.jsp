<%@page import="java.util.ArrayList"%>
<%@page import="co.bucketstargram.dto.ReplyDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%
		ReplyDto reply_1 = new ReplyDto("ljm089", "a", "test1");
		ReplyDto reply_2 = new ReplyDto("ljm089", "a", "test2");
		ReplyDto reply_3 = new ReplyDto("ljm089", "a", "test3");
		
		ReplyDto reply_4 = new ReplyDto("ljm089", "b", "test1");
		ReplyDto reply_5 = new ReplyDto("ljm089", "b", "test2");
		ReplyDto reply_6 = new ReplyDto("ljm089", "b", "test3");
		
		ReplyDto reply_7 = new ReplyDto("ljm089", "c", "test1");
		ReplyDto reply_8 = new ReplyDto("ljm089", "c", "test2");
		ReplyDto reply_9 = new ReplyDto("ljm089", "c", "test3");
		ArrayList<ReplyDto> replyList = new ArrayList<ReplyDto>();
		replyList.add(reply_1);
		replyList.add(reply_2);
		replyList.add(reply_3);
		replyList.add(reply_4);
		replyList.add(reply_5);
		replyList.add(reply_6);
		replyList.add(reply_7);
		replyList.add(reply_8);
		replyList.add(reply_9);
		//replyList.
	
		session.setAttribute("replyList", replyList);                 // 세션에 "id" 이름으로 id 등록

	%>
</head>
<body>
	<img src="../images/feedPhoto.jpg" alt="a" style="width: 100%; max-width: 200px" onclick="startModal(this);">
	<div class="repl"></div>
	
	<script>
	var list2 = new Array();
	
	<c:forEach items="${replyList}" var="item2">
		list2.push(item2);
	</c:forEach>
	for (var i = 0; i < list2.length; i++) {
		console.log(list2[i]);
	}
	
/* 		var count = 1;
		var imageId = "";
		function startModal(element){
			imageId = element.alt;
			doAdd(imageId);
		}
		function doAdd(imageId) {
			var tag = document.querySelector(".repl");
			var index = 0;
			// 방법2 - innerHTML (통째로 변경되는 개념)
			tag.innerHTML += "<div>ljm089</div><span>hi</span>";
		} */
			/* 방법1 0 appendChild (끝부분만 추가)
			var h2 = document.createElement("h2"); // <h2></h2>
			var txt = document.createTextNode("추가" + count++); // 추가1, (추가2로 변경)
			h2.appendChild(txt) // <h2>추가1</h2>
			list.appendChild(h2); // id가 list인부분에..추가
			 */
	</script>
</body>
</html>