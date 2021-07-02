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
.pagination {
	justify-content: center;
}

.table td, .table th {
	vertical-align: middle;
	text-align: center;
}

.custom-control {
	padding-right: 0
}
</style>

</head>
<script type="text/javascript">
	$(document).ready(function () {
		$("#cencle_btn").on("click", function() {
			location.href = "/emp/list";
		})
	})
</script>
<body>

	<div id="root" class="container">

		<h2 class="pt-3">인사관리시스템</h2>
		<hr>

		<ul class="nav">
			<li class="nav-item"><a class="nav-link active"	href="http://localhost:8080/emp/list">사원목록</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>

		<hr>
	<section id="container">
		<div class="col-lg-12 well">
			<div class="row">
				<form id="writeForm" method="post" action="/emp/write">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="name">성명</label> 
								<input id="name" name="name" type="text" placeholder="성명" class="form-control" />
							</div>
							<div class="col-sm-6 form-group">
								<label for="reg_no">주민번호</label> 
								<input id="reg_no" name="reg_no" type="text" placeholder="주민번호" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="address">주소</label>
							<textarea id="address" name="address" placeholder="주소" rows="3" class="form-control"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label for="hire_date">입사일</label> 
								<input id="hire_date" name="hire_date" type="date" placeholder="입사일" class="form-control" />
							</div>

							<div class="col-sm-4 form-group">
								<label for="dept_no">부서명</label>
									<select class="form-control" id="dept_no" name="dept_no">
										<c:forEach items="${d_list}" var="d_list">
											<option value=${d_list.dept_no}><c:out value="${d_list.dept_name}"></c:out></option>
										</c:forEach>
									</select>
							</div>
							<div class="col-sm-4 form-group">
								<label for="leave_date">퇴사일</label> 
								<input id="leave_date" name="leave_date" type="date" placeholder="퇴사일" class="form-control" />
							</div>
						</div>
						<div class="row">							
							<div class="col-sm-4 form-group">
								<label for="bank_no">급여은행</label>
									<select class="form-control" id="bank_no" name="bank_no">
										<c:forEach items="${b_list}" var="b_list">
											<option value=${b_list.bank_no}><c:out value="${b_list.bank_name}"></c:out></option>
										</c:forEach>
									</select>
							</div>

							<div class="col-sm-8 form-group">
								<label for="bank_account">급여계좌</label> 
								<input  id="bank_account" name="bank_account" type="text" placeholder="급여계좌" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="phone_num">전화번호</label> 
							<input id="phone_num" name="phone_num" type="text" placeholder="전화번호" class="form-control" />
						</div>
						<div class="form-group">
							<label for="email">Email </label> 
							<input id="eamil" name="email" type="text" placeholder="Email" class="form-control" />
						</div>
						<button id="write_btn" type="submit" class="btn btn btn-dark mt-3">저장</button>
						<a href="http://localhost:8080/emp/list"><button id="cencle_btn" type="button" class="btn btn btn-dark mt-3">취소</button></a>
					</div>
				</form>
			</div>
		</div>
	</section>

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