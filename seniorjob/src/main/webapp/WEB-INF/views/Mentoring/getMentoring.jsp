<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시니어잡/멘토링상세</title>
<!-- fontawesome cdn -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body>
<!-- topHeader -->
<jsp:include page="../topHeader.jsp" />
<!-- topHeader -->
<form id="submitFrm" name="submitFrm" method="post">
	<input type="hidden" id="id" name="id" value="${mentor.mentor_id }">
	<input type="hidden" id="mentor_id" name="mentor_id" value="${mentoring.mentor_id }">
	<input type="hidden" id="men_start" name="men_start" value="${mentoring.mentoring_begin_date }">
	<input type="hidden" id="met_end" name="met_end" value="${mentoring.mentoring_end_date }">
	<input type="hidden" id="mentoring_number" name="mentoring_number" value="${mentoring.mentoring_number }">
	<input type="hidden" id="mentoring_name" name="mentoring_name" value="${mentoring.mentoring_name }">
	<input type="hidden" id="cart_start" name="cart_start" value="${mentoring.s_date }">
	<input type="hidden" id="cart_end" name="cart_end" value="${mentoring.e_date }">
	<input type="hidden" id="cart_price" name="cart_price" value="${mentoring.mentoring_price }">
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content" style="color:black">
                        <h1 class="page-title">${mentor.usersVO.name}<b class="property-info-unit">멘토의 멘토링</b></h1>  
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">
            <div class="container">

                <div class="clearfix padding-top-40">
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="printer-icon " href="javascript:window.print()">
                                            <i class="fa fa-print"></i> 
                                        </a>
                                    </div> 
                                            <img src="image/${mentoring.mentoring_photo }" />
                                </div>
                            </div>
                        </div>
                        <div class="single-property-wrapper">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left"><b>${mentoring.mentoring_name }</b></h1>
                            </div>

                            <div class="property-meta entry-meta clearfix "> 
                            
                            	<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-tag">
                                   	 	<i class="fal fa-file-search fa-3x" style="color:#FFA500"></i>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">멘토링 분야</span>
                                        <span class="property-info-value">${mentoring.mentoring_kind }</span>
                                    </span>
                                </div>  

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-tag">
                                   	 	<i class="fas fa-user-friends fa-3x" style="color:#FFA500"></i>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">최대 인원</span>
                                        <span class="property-info-value">${mentoring.mentoring_limit }<b class="property-info-unit">명</b></span>
                                    </span>
                                </div>

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info icon-area">
                                        <i class="far fa-calendar-alt fa-3x" style="color:#FFA500"></i>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">멘토링 기간</span>
                                        <span class="property-info-value"><b class="property-info-unit">시작일: </b>${mentoring.s_date }</span>
                                        <span class="property-info-value"><b class="property-info-unit">종료일: </b>${mentoring.e_date }</span>
                                    </span>
                                </div>
                                
                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info icon-area">
                                        <i class="fas fa-won-sign fa-3x" style="color:#FFA500"></i>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">멘토링 가격</span>
                                        <span class="property-info-value">${mentoring.mentoring_price }<b class="property-info-unit">원</b></span>
                                    </span>
                                </div>
                                
                                <!-- <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M21 48.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v31c0 1.104-.895 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v7.001c0 1.104-.895 1.999-2 1.999zm25 37.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v31c0 1.104-.896 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v7.001c0 1.104-.896 1.999-2 1.999z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Bedrooms</span>
                                        <span class="property-info-value">3</span>
                                    </span>
                                </div>

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bath">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M37.003 48.016h-4v-3.002h-18v3.002h-4.001v-3.699c-4.66-1.65-8.002-6.083-8.002-11.305v-4.003h-3v-3h48.006v3h-3.001v4.003c0 5.223-3.343 9.655-8.002 11.305v3.699zm-30.002-24.008h-4.001v-17.005s0-7.003 8.001-7.003h1.004c.236 0 7.995.061 7.995 8.003l5.001 4h-14l5-4-.001.01.001-.009s.938-4.001-3.999-4.001h-1s-4 0-4 3v17.005000000000003h-.001z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Bathrooms</span>
                                        <span class="property-info-value">3.5</span>
                                    </span>
                                </div>

                                <div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-garage">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M44 0h-40c-2.21 0-4 1.791-4 4v44h6v-40c0-1.106.895-2 2-2h31.999c1.106 0 2.001.895 2.001 2v40h6v-44c0-2.209-1.792-4-4-4zm-36 8.001h31.999v2.999h-31.999zm0 18h6v5.999h-2c-1.104 0-2 .896-2 2.001v6.001c0 1.103.896 1.998 2 1.998h2v2.001c0 1.104.896 2 2 2s2-.896 2-2v-2.001h11.999v2.001c0 1.104.896 2 2.001 2 1.104 0 2-.896 2-2v-2.001h2c1.104 0 2-.895 2-1.998v-6.001c0-1.105-.896-2.001-2-2.001h-2v-5.999h5.999v-3h-31.999v3zm8 12.999c-1.104 0-2-.895-2-1.999s.896-2 2-2 2 .896 2 2-.896 1.999-2 1.999zm10.5 2h-5c-.276 0-.5-.225-.5-.5 0-.273.224-.498.5-.498h5c.275 0 .5.225.5.498 0 .275-.225.5-.5.5zm1-2h-7c-.275 0-.5-.225-.5-.5s.226-.499.5-.499h7c.275 0 .5.224.5.499s-.225.5-.5.5zm-6.5-2.499c0-.276.224-.5.5-.5h5c.275 0 .5.224.5.5s-.225.5-.5.5h-5c-.277 0-.5-.224-.5-.5zm11 2.499c-1.104 0-2.001-.895-2.001-1.999s.896-2 2.001-2c1.104 0 2 .896 2 2s-.896 1.999-2 1.999zm0-12.999v5.999h-16v-5.999h16zm-24-13.001h31.999v3h-31.999zm0 5h31.999v3h-31.999z"></path>
                                        </svg>
                                    </span>
                                    <span class="property-info-entry">
                                        <span class="property-info-label">Garages</span>
                                        <span class="property-info-value">2</span>
                                    </span>
                                </div> -->

                            </div>
                            <!-- .property-meta -->

                            <div class="section">
                                <h4 class="s-property-title">멘토링 소개</h4>
                                <div class="s-property-content">
                                    <p>${mentoring.mentoring_introduce} </p>
                                </div>
                            </div>
                            <!-- End description area  -->

                            <div class="section">
                                <h4 class="s-property-title">멘토링 내용</h4>
                                <div class="s-property-content">
                                    <p>${mentoring.mentoring_content} </p>
                                </div>
                            </div>
                            <!-- End description area  -->
                            <!-- End additional-details area  -->
                            
                             <!-- <div class="section property-video"> 
                                <h4 class="s-property-title"></h4> 
                                <div class="video-thumb">
                                    <a class="video-popup" href="yout" title="Virtual Tour">
                                        <img src="assets/img/property-video.jpg" class="img-responsive wp-post-image" alt="Exterior">            
                                    </a>
                                </div>
                            </div> -->
                            <!-- End video area  -->

                            <div class="section property-features">    
                                <h4 class="s-property-title">멘토링 후기</h4>   
                                 <ul>
                                    <li><a href="properties.html">Swimming Pool</a></li>   
                                </ul>
                                <ul>
                                    <li><a href="properties.html">Swimming Pool</a></li>   
                                </ul>
							</div>
                            <!-- End features area  -->
                            
                        </div>
                    </div>

                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="getMentor?mentor_id=${mentor.mentor_id }">
                                                    <img src="image/${mentor.mentor_photo }" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <span>${mentor.usersVO.name }<b class="property-info-unit">멘토</b></span>        
                                                </h3>
                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">     
                                                <li><i class="pe-7s-user strong"> </i><b class="property-info-unit">이름: </b>${mentor.usersVO.name }</li>
                                                <li><i class="pe-7s-home strong"> </i><b class="property-info-unit">회사: </b>${mentor.mentor_company_name }</li>
                                                <li><i class="pe-7s-notebook strong"> </i><b class="property-info-unit">직무: </b>${mentor.mentor_duty }</li>
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            
                            <!-- 장바구니담기/결제하기  -->
                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <!-- <div class="panel-heading">
                                    <h3 class="panel-title"></h3>
                                </div> --> 
                                <div class="panel-body search-widget">
                                    	<input type="hidden" id="id" name="id" value="${mentor.id }">
                                        <fieldset >
                                            <div class="row">
                                                <div class="col-xs-12">  
                                                    <input class="button btn largesearch-btn" value="장바구니 담기" id="BasketBtn" type="button" onclick="insertC()">
                                                    <input class="button btn largesearch-btn" value="바로구매" onclick="mentoringPayForm()" type="button">
                                                </div>  
                                            </div>
                                        </fieldset>                                     
                                </div>
                            </div>
							<!-- End of 장바구니담기/결제하기  -->

                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">유사한 멘토링</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <ul>
                                    <c:forEach var="rtMentoring" items="${relatedMentoring }">
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="getSearchMentoringChanGon?mentor_id=${rtMentoring.mentor_id }&mentoring_number=${rtMentoring.mentoring_number }&mentoring_kind=${rtMentoring.mentoring_kind}">
                                                <img src="image/${rtMentoring.mentoring_photo }"></a>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="getSearchMentoringChanGon?mentor_id=${rtMentoring.mentor_id }&mentoring_number=${rtMentoring.mentoring_number }&mentoring_kind=${rtMentoring.mentoring_kind}">
                                                ${rtMentoring.mentoring_name } </a></h6>
                                            </div>
s                                        </li>
s                                     </c:forEach>  
                                    </ul>
                                </div>
                            </div>

                        </aside>
                    </div>
                </div>

            </div>
        </div>
</form>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script>

//장바구니 담기
function insertC(){
	var yn = confirm("장바구니에 담으시겠습니까?");
	var Frm = document.submitFrm;
	if(yn){
		Frm.action = "insertCart";
		Frm.submit();
	}
}

//멘토링 신청페이지 이동
function mentoringPayForm(){ 
		var Frm = document.submitFrm;
		if(confirm("멘토링을 신청하시겠습니까?")){
			Frm.action = "mentoringPayForm";
			Frm.submit();
		}
	}
</script>
<!-- Footer area-->
<jsp:include page="../footer.jsp" />
<!-- Footer area-->
</body>
</html>