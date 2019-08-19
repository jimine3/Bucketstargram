<%@page import="co.bucketstargram.dto.ReplyDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<%
/* 		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("name", "홍길동");
		map.put("city", "서울");
		map.put("age", 30);
		ArrayList<Object> list = new ArrayList<Object>();
		list.add("hong@naver.com");
		list.add("gil@daum.net");
		
		list.add("dong@nate.com");
		ArrayList<HashMap<Object, Object>> arrayListMap = new ArrayList<HashMap<Object, Object>>();

		arrayListMap.add(map);		
		
		HashMap<Object, ArrayList<Object>> lMultiData = new HashMap<Object, ArrayList<Object>>();
		
		lMultiData.put("email", list);
		
		session.setAttribute("list_map", arrayListMap);
		session.setAttribute("map_list", lMultiData); */
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
		
		
		ArrayList<String> reContentListA = new ArrayList<String>();
		ArrayList<String> reContentListB = new ArrayList<String>();
		ArrayList<String> reContentListC = new ArrayList<String>();
		reContentListA.add("a@naver.com");
		reContentListA.add("a@daum.net");
		reContentListA.add("a@nate.com");
		reContentListB.add("b@naver.com");
		reContentListB.add("b@daum.net");
		reContentListB.add("b@nate.com");
		reContentListC.add("c@naver.com");
		reContentListC.add("c@daum.net");
		reContentListC.add("c@nate.com");
		
		HashMap<String, ArrayList<String>> reHashMap = new HashMap<String, ArrayList<String>>();
		reHashMap.put("a", reContentListA);
		reHashMap.put("b", reContentListB);
		reHashMap.put("c", reContentListC);
		
		session.setAttribute("replyList", replyList);
		session.setAttribute("reHashMap", reHashMap);
	%>
	
	<img src="../images/feedPhoto.jpg" alt="a" style="width: 100%; max-width: 200px" onclick="startModal(this);">
	<img src="../images/feedPhoto.jpg" alt="b" style="width: 100%; max-width: 200px" onclick="startModal(this);">
	<img src="../images/feedPhoto.jpg" alt="c" style="width: 100%; max-width: 200px" onclick="startModal(this);">
	<div class="repl"></div>
	<script>
		function startModal(element){
			imageId = element.alt;
			alert(imageId);
			var list = new Array();
			$(window).load(function(){
				<c:forEach items="${replyList}" var="items">
					if(imageId == "${items.reBucketId}"){
						list.push("${items.reBucketId}");	
					}
				</c:forEach>
				for (var i = 0; i < list.length; i++) {
					console.log(list[i]);
				}
			});
		}

	
	
/* 		function startModal(element){
			imageId = element.alt;
			alert(imageId);
		}
		
		var list2 = new Array();
		
		<c:forEach items="${reHashMap.a}" var="item2">
			console.log("items = " + items);
			list2.push("${item2}");
		</c:forEach>
		for (var i = 0; i < list2.length; i++) {
			console.log(list2[i]);
		} */
	
		
		
		
/* 		var list1 = new Array();

		<c:forEach items="${list_map}" var="item1">
			list1.push("${item1.name}");
			list1.push("${item1.city}");
			list1.push("${item1.age}");
		</c:forEach>
		for (var i = 0; i < list1.length; i++) {
			alert(list1[i]);
		}
		var list2 = new Array();
	
		<c:forEach items="${map_list.email}" var="item2">
			list2.push("${item2}");
		</c:forEach>
		for (var i = 0; i < list2.length; i++) {
			alert(list2[i]);
		}  */
	</script>
</body>
</html>