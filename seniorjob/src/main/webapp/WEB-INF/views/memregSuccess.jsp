<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="topHeader.jsp"></jsp:include>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
setTimeout(function(){
	location.href="login";
},3000); 

</script>
</head>
<body>
	<br/>
	<div style="text-align: center; height: 450px; color: #FDC600; text-family:monospace;">
		<h1>회원가입이 성공적으로 이루어졌습니다!</h1>
		<br/>
		<span> 3초 뒤에 로그인 페이지로 이동합니다.</span>
	</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
