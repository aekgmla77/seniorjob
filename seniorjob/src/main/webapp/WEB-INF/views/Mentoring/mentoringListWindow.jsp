<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="shortcut icon" href=http://www.freshdesignweb.com/wp-content/themes/fv28/images/icon.ico />
    <link rel="stylesheet" type="text/css" href="resources/mtListWindow/fdw-demo.css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="resources/mtListWindow/style.css">
</head>
<body>

<div id="container">
				<div class="freshdesignweb-top"><h1><a href="http://www.freshdesignweb.com">${mentor.usersVO.name}멘토님의 멘토링 목록</a></h1></div><div class="clr"></div>
<div class="freshdesignweb">    
      <!-- css list sprites background -->
    <!--End list sprites background -->
    
<div class="clr"></div><br><br>


<!--CSS list style with number cicles background -->
<div class="numberlist">
	 <form name="submitFrm" action="getSearchMentoringChanGon">
	 <ol>
	 <c:forEach var="mt" items="${mentoring }">
	 <input type="hidden" id="mentor_id" name="mentor_id" value="${mt.mentor_id }">
	 <input type="hidden" id="mentoring_number" name="mentoring_number" value="${mt.mentoring_number }">
	  	<li><a href="#" onclick="getMentoring()">${mt.mentoring_name }</a></li>
	 </c:forEach>
	 </ol>
	 </form>
</div>

<!--CSS list style with arrow images -->

</div><br>
<div class="clr"></div>
            <!-- freshdesignweb top bar -->
            <div class="freshdesignweb-buttom">
                <a href="#" target="_blank" onclick="getMain()">Home</a>
                <span class="right">
                    <a href="#" onclick="closeWindow()">닫기</a>
                </span>
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
            
<script type="text/javascript">
var get_height = window.innerHeight; 
var get_height1 =  get_height - 0;
var get_container = document.getElementById('container');
get_container.style.height =  get_height1 + 'px';
</script>

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(["_setAccount", "UA-10146041-18"]);
  _gaq.push(["_trackPageview"]);

  (function() {
    var ga = document.createElement("script"); ga.type = "text/javascript"; ga.async = true;
    ga.src = ("https:" == document.location.protocol ? "https://ssl" : "http://www") + ".google-analytics.com/ga.js";
    var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ga, s);
  })();
  
function closeWindow(){
	window.close();
}
function getMain(){
	opener.document.location.href = "getMain";
	window.close();
}
function getMentoring(){
	if(confirm("해당 멘토링 페이지로 이동하시겠습니까?")){
		document.submitFrm.submit();
	}
}
</script>

</body>
</html>