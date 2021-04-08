<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	
			<div class="main-content container-fluid">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>멘토관리</h3>
							<p class="text-subtitle text-muted">멘토관리 목록을 보여줍니다.</p>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb" class='breadcrumb-header'>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/">메인</a></li>
									<li class="breadcrumb-item active" aria-current="page">멘토관리</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<section class="section">
					<div class="card">
						<div class="card-header">멘토 데이터 테이블</div>
						<div class="card-body">
						<div class="dataTable-search">
								<input name="search" placeholder="Search..." type="search"/>
								<button style="position : static; right : 200px;">검색</button>
							</div>
							<table class='table table-striped' id="table1">
								<thead>
									<tr>
										<th>멘토ID</th>
										<th>멘토 이름</th>
										<th>멘토 전화번호</th>
										<th>멘토 주소</th>
										<th>멘토 이메일</th>
										<th>경력증명서</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="mentor" items="${list}">
									<tr>
										<td>${mentor.id }</td>
										<td>${mentor.name }</td>
										<td>${mentor.phonenum }</td>
										<td>${mentor.address }</td>
										<td>${mentor.email }</td>
										<td></td>
										<td><a href="#exampleModalLong" class="edit"
											data-bs-toggle="modal"> <i data-feather="edit"></i></a></td>
										<td><a href="#delete" class="delete"
											data-bs-toggle="modal" onclick=""> <i
												data-feather="alert-circle"></i></a></td>
									</tr>
								</c:forEach>	
								</tbody>
							</table>
						</div>
					</div>

				</section>
			</div>


		<!--Edit theme Modal -->
			<div class="modal fade text-left" id="edit" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel110" aria-hidden="true">
				<div
					class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
					role="document">
					<div class="modal-content">
						<div class="modal-header bg-success">
							<h5 class="modal-title white" id="myModalLabel110">멘토 정보 수정</h5>
							<button type="button" class="close" data-bs-dismiss="modal"
								aria-label="Close">
								<i data-feather="x"></i>
							</button>
						</div>
						<div class="modal-body">
						
						
						
						
	
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-light-secondary"
								data-bs-dismiss="modal">
								<i class="bx bx-x d-block d-sm-none"></i> <span
									class="d-none d-sm-block">닫기</span>
							</button>

							<button type="button" class="btn btn-success ml-1"
								data-bs-dismiss="modal">
								<i class="bx bx-check d-block d-sm-none"></i> <span
									class="d-none d-sm-block">수정</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		



		<!--Delete theme Modal -->
		<div class="modal fade text-left" id="delete" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel120" aria-hidden="true">
			<div
				class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
				role="document">
				<div class="modal-content">
					<div class="modal-header bg-danger">
						<h5 class="modal-title white" id="myModalLabel120">멘토삭제</h5>
						<button type="button" class="close" data-bs-dismiss="modal"
							aria-label="Close">
							<i data-feather="x"></i>
						</button>
					</div>
					<div class="modal-body">
					정말로 멘토를 삭제하시겠습니까?
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-light-secondary"
							data-bs-dismiss="modal">
							<i class="bx bx-x d-block d-sm-none"></i> <span
								class="d-none d-sm-block">닫기</span>
						</button>
						<button type="button" class="btn btn-danger ml-1"
							data-bs-dismiss="modal">
							<i class="bx bx-check d-block d-sm-none"></i> <span
								class="d-none d-sm-block">확인</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	


	