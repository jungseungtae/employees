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
		
		$("#list_btn").on("click", function() {
			event.preventDefault();
			location.href = "/emp/list";
		})
	})
</script>

<body>

<div id="root" class="container">
<%@include file="nav.jsp" %>

	<section id="container">
		<div class="col-lg-12 well">
			<div class="row">
				<form name="updateForm" method="post" action="/emp/update">
				<input type="hidden" name="emp_no"value="${update.emp_no}" readonly="readonly" />
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="name">성명</label> 
								<input id="name" name="name" type="text" value="${update.name}" class="form-control" />
							</div>
							<div class="col-sm-6 form-group">
								<label for="reg_no">주민번호</label> 
								<input id="reg_no" name="reg_no" type="text" value="${update.reg_no}" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="address">주소</label>
							<textarea id="address" name="address" rows="3" class="form-control"><c:out value="${update.address}"></c:out></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label for="hire_date">입사일</label> 
								<input id="hire_date" name="hire_date" type="date" value="${update.hire_date}" class="form-control" />
							</div>

							<div class="col-sm-4 form-group">
								<label for="dept_no">부서명</label>
								<select class="form-control" id="dept_no" name="dept_no">
									<option value=10 ${update.dept_name == '관리부' ? 'selected' : ''}>관리부</option>
									<option value=20 ${update.dept_name == '영업부' ? 'selected' : ''}>영업부</option>
									<option value=30 ${update.dept_name == '구매부' ? 'selected' : ''}>구매부</option>
									<option value=40 ${update.dept_name == '인사부' ? 'selected' : ''}>인사부</option>
								</select>
								
							</div>
							<div class="col-sm-4 form-group">
								<label for="leave_date">퇴사일</label> 
								<input id="leave_date" name="leave_date" type="date" value="${update.leave_date}" class="form-control" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label for="bank_no">급여은행</label> 
								<select class="form-control" id="bank_no" name="bank_no">
									<option value=10 ${update.bank_name == '국민은행' ? 'selected' : ''}>국민은행</option>
									<option value=11 ${update.bank_name == '기업은행' ? 'selected' : ''}>기업은행</option>
									<option value=12 ${update.bank_name == '우리은행' ? 'selected' : ''}>우리은행</option>
									<option value=13 ${update.bank_name == '농협은행' ? 'selected' : ''}>농협은행</option>
								</select>
							</div>

							<div class="col-sm-8 form-group">
								<label for="bank_account">급여계좌</label> 
								<input  id="bank_account" name="bank_account" type="text" value="${update.bank_account}" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="phone_num">전화번호</label> 
							<input id="phone_num" name="phone_num" type="text" value="${update.phone_num}" class="form-control" />
						</div>
						<div class="form-group">
							<label for="email">Email </label> 
							<input id="eamil" name="email" type="text" value="${update.email}" class="form-control" />
						</div>
						<button id="update_btn" type="submit" class="btn btn btn-dark mt-3">수정</button>
						<button id="list_btn" type="submit" class="btn btn btn-dark mt-3">취소</button>
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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>