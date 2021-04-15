<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="../topHeader.jsp"></jsp:include>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
//세부검색(최신순, 조회수순)
function optionSelect(obj){
	var param = 'optionValue='+$('#items_per_page').val();
	location.href='serviceCenter?'+(obj==""?"":param);
}
// 함수 실행
$(function(){
	$('#sebuBtn').click(function(){
	optionSelect("");	
})	
});

</script>

<body>
	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">


				<jsp:include page="new_sevice_left.jsp"></jsp:include>
				<div
					class="col-md-1 pr-30 padding-top-40 properties-page user-properties">
				</div>
				<div id="optionVal"
					class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
					<h4>공지사항 게시판</h4>
					<div class="section additional-details">

						<div class="items-per-page">
							<label for="items_per_page"></label>
							<div class="sel">
								<select id="items_per_page" name="per_page"
									onchange="optionSelect(this)">
									<option value="">선택</option>
									<option value="최신순">최신순</option>
									<option value="인기순">조회수순</option>
								</select> <input type="hidden" id="sebubtn">
								<button style="float: right" class="btn btn-primary subscribe" id="searchBtn" type="button" onclick="location.href='insertService_CenterForm'">등록</button>
							</div>
							<br>
							<!--/ .sel-->
						</div>


						<table class="table">
							<tr>
								<th>유형</th>
								<th>제목</th>
								<th>등록일</th>
								<th>조회</th>
							</tr>
							<c:forEach items="${list }" var="gongji">
								<tr>
									<td
										onclick="location.href='getService_Center?seq=${gongji.seq }'">${gongji.category_b }</td>
									<td
										onclick="location.href='getService_Center?seq=${gongji.seq }'">${gongji.title }</td>
									<td
										onclick="location.href='getService_Center?seq=${gongji.seq }'"><fmt:formatDate
											value="${gongji.w_date }" pattern="yyyy-MM-dd" /></td>
									<td
										onclick="location.href='getService_Center?seq=${gongji.seq }'">${gongji.click }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					


				<!--검색기능  -->
				<div
					class="col-md-10  properties-page user-properties">
					<form role="form" method="get">
						<div class="search">
							<br>
						</div>
						<div class="col-xs-2">
							<div class="btn-group bootstrap-select show-tick form-control">
								<div class="dropdown-menu open"
									style="max-height: 640.781px; overflow: hidden; min-height: 109px;">
									<ul class="dropdown-menu inner" role="menu"
										style="max-height: 629.781px; overflow-y: auto; min-height: 98px;">
										<li data-original-index="0" class=""><a tabindex="0"
											class="" style="" data-tokens="null"><span class="text">
													-Status- </span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
										<li data-original-index="1" class=""><a tabindex="0"
											class="" style="" data-tokens="null"><span class="text">Rent
											</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li>
										<li data-original-index="2" class="selected"><a
											tabindex="0" class="" style="" data-tokens="null"><span
												class="text">Boy</span><span
												class="glyphicon glyphicon-ok check-mark"></span></a></li>
										<li data-original-index="3"><a tabindex="0" class=""
											style="" data-tokens="null"><span class="text">used</span><span
												class="glyphicon glyphicon-ok check-mark"></span></a></li>
									</ul>
								</div>
								<select id="basic" name="searchType"
									class="selectpicker show-tick form-control" tabindex="-98">
									<option value="n"
										<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>------</option>
									<option value="t"
										<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
									<option value="c"
										<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
									<option value="w"
										<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
									<option value="tc"
										<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
								</select>
							</div>
						</div>
						<div class="col-xs-7">
							<div class="input-group">
								<input class="form-control" name="keyword" id="keywordInput"
									value="${scri.keyword}"
									style="text-align: center; height: 45px; width: 500px"
									type="text" placeholder="내용 입력 "> <span
									class="input-group-btn">
									<button class="btn btn-primary subscribe" id="searchBtn"
										type="button">
										<i class="pe-7s-paper-plane pe-2x"></i>
									</button>

									<script>
											$(function() {
												$('#searchBtn')
														.click(
																function() {
																	self.location = "serviceCenter"
																			+ '${pageMaker.makeQuery(1)}'
																			+ "&searchType="
																			+ $(
																					"select option:selected")
																					.val()
																			+ "&keyword="
																			+ encodeURIComponent($(
																					'#keywordInput')
																					.val());
																});
											});
											$(function() {
												$('#searchBtn').click(function(){
																		self.location = ""
												})		
											}
											
											
										</script>
								</span>
							</div>
						</div>
					</form>
				</div>
				<!--등록버튼  -->
				<div class="col-md-2  properties-page user-properties">
				</div>
				
				<div
						class="col-md-3  properties-page user-properties">
						</div>
					<!--페이징  -->
					<div
						class="col-md-6  padding-top-40 properties-page user-properties">
						<div class="pagination" style="float: center">
							<ul>
								<c:if test="${pageMaker.prev}">
									<li><a
										href="serviceCenter${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li><a href="serviceCenter${pageMaker.makeSearch(idx)}">${idx}</a></li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="serviceCenter${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
								</c:if>
							</ul>
						</div>
					</div>

				<!--등록버튼  -->					
				<div class="col-md-3  properties-page user-properties">
				
				</div>	
					
					
				</div>


			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>