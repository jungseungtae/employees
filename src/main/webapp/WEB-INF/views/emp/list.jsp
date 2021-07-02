<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<title>인사관리 시스템</title>

<style>
.pagination {justify-content: center;}
.table td, .table th {vertical-align: middle; text-align: center;}
.custom-control {padding-right: 0}
li {list-style: none; float: left; padding: 6px;}
</style>
<script defer="defer" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#write_btn").on("click", function () {
			location.href = "/emp/writeView"
		})
	})
</script>
</head>

<body>
<%@include file="nav.jsp" %>

	<div class="container">
	
	<!-- Search -->
		<div class="card border-0">
			<div class="card-body">

				<!-- Search form -->
				<form class="form-inline d-flex justify-content-center md-form form-sm active-cyan-2 mt-2">
					<select name="searchType">
						<option value="N"<c:out value="${scri.searchType eq 'N' ? 'selected' : ''}"/>>이름</option>
						<option value="DN"<c:out value="${scri.searchType eq 'DN' ? 'selected' : ''}"/>>부서</option>
					</select>
					<input class="form-control form-control-sm mr-3 ml-3" type="text" placeholder="이름, 부서" aria-label="Search"> 
					<i class="fas fa-search" aria-hidden="true"></i>
				</form>
			</div>
		</div>
		
	<form role="form" method="get">
		<div class="table-responsive-xl">
			<table class="table table-hover table-striped table-bordered">
				<thead class="thead-dark">
					<tr>
						<th scope="col">선택</th>
						<th scope="col">사원번호</th>
						<th scope="col">성명</th>
						<th scope="col">주민번호</th>
						<th scope="col">부서명</th>
						<th scope="col">입사일</th>
						<th scope="col">퇴사일</th>
						<th scope="col">Email</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list">
						<tr>
							<td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>
							<td><c:out value="${list.emp_no}" /></td>							
							<td>
								<a href="/emp/readView?emp_no=${list.emp_no}"><c:out value="${list.name}" /></a>
							</td>						
							<td><c:out value="${list.reg_no}" /></td>
							<td><c:out value="${list.dept_name}" /></td>
							<td><fmt:formatDate value="${list.hire_date}" pattern="yyyy-MM-dd"/></td>
							<td><fmt:formatDate value="${list.leave_date}" pattern="yyyy-MM-dd"/></td>
							<td><c:out value="${list.email}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="card border-0">
			<div class="card-body">
				<nav aria-label="Page navigation">
					<ul class="pagination pagination-circle pg-blue">
					<c:if test="${pageMaker.prev}">
						<li class="page-item disabled">
							<a href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}" class="page-link" aria-label="Previous"> 
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
							</a>
						</li>
					</c:if>
					
					<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						<li class="page-item active">
						<a href="list${pageMaker.makeQuery(idx)}" class="page-link">${idx}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						<li class="page-item">
						<a href="list${pageMaker.makeQuery(pageMaker.endPage + 1)}" class="page-link" aria-label="Next">
						<span aria-hidden="true">&raquo;</span> 
						<span class="sr-only">Next</span>
						</a></li>
					</c:if>
					</ul>
				</nav>
			</div>
		</div>
		</form>

		<div class="card border-0">
			<div class="card-body pl-0 pt-0">
				<button id="write_btn" type="submit" class="btn btn-dark mr-3">추가</button>
				<button type="button" class="btn btn-dark">삭제</button>
			</div>
		</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>
