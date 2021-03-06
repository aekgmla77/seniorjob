<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<!-- property area -->
<div class="content-area recent-property"
	style="background-color: #FFF;">
	<div class="container">
		<div class="row">

			<div class="col-md-9 pr-30 padding-top-40 properties-page user-properties  profiel-container">
			

				<form action="insertSchedule" method="post">

					<div class="profiel-header">
						<h3>
							<b>멘토링</b> 요청 <br> 
							<small>아래 사항을 기입하신 후 요청을 보내면 멘티의 마이페이지 홈에서 요청을 볼 수 있습니다.</small>
						</h3>
						<hr>
					</div>

					<div class="clear">

						<div class="col-sm-10 col-sm-offset-1">
							<div class="form-group">
								<label>멘토 <small>(read only)</small></label> <input
									name="mentorid" type="text" value="${mentorid }" class="form-control" readonly="readonly">
							</div>
							<div class="form-group">
								<label>일정이름</label> <input name="schedule_name" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>요청내용</label> <input name="schedule_con" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>시작날짜</label> 
								<input name="schedule_start" type="date" class="form-control">
							</div>
							<div class="form-group">
								<label>시작시간</label> 
								<input name="schedule_start_time" type="time" class="form-control">
							</div>
							<div class="form-group">
								<label>종료날짜</label> 
								<input name="schedule_end" type="date" class="form-control">
							</div>
							<div class="form-group">
								<label>종료시간</label> 
								<input name="schedule_end_time" type="time" class="form-control">
							</div>
							<div class="form-group">
								<label>멘티<small>(read only)</small></label> <input
									name="menteeid" type="text" value="${menteeid }" class="form-control" readonly="readonly">
							</div>
						</div>
						<div class="col-sm-10 col-sm-offset-1">
							<button type="submit" class="btn btn-primary">요청</button>
						</div>

					</div>




				</form>

			</div>

		</div>
		<!-- end row -->

	</div>
</div>


</body>
</html>