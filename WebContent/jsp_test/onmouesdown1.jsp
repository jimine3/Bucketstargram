<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
</head>
<body>
<img id ="image" src="../images/feedPhoto.jpg" onmousedown="testfunc(this)"/>
<script>function testfunc(test) {
window.alert(document.getElementById(test.getAttribute('id')).getAttribute('id'));
}</script>
<script>
/* var img = "";
function testfunc(test) {
	img = document.getElementById(test.getAttribute('id')).getAttribute('id');
	doit();
}
function doit(){
	window.alert(img);	
} */
window.alert($("#id").val());
</script>
</body>
</html>