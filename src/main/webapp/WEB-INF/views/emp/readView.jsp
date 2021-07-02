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
	padding-right: 
}
</style>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[name='readForm']");
		
		// 수정 
		$("#update_btn").on("click", function(){
			formObj.attr("action", "/emp/updateView");
			formObj.attr("method", "get");
			formObj.submit();				
		})
		
		// 삭제
		$("#delete_btn").on("click", function(){
			alert("삭제하시겠습니까?");
			formObj.attr("action", "/emp/delete");
			formObj.attr("method", "post");
			formObj.submit();
		})
		
		// 취소
		$("#cencle_btn").on("click", function(){
			location.href = "/emp/list";
		})
	})

</script>
<body>

<div id="root" class="container">
<%@include file="nav.jsp" %>
<jsp:include page="nav.jsp" flush="true" />

	<section id="container">
		<div class="col-lg-12 well">
			<div class="row">
				<form name="readForm" method="post">
					<input type="hidden" id="emp_no" name="emp_no" value="${read.emp_no}"/>
				</form>
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="name">성명</label> 
								<input id="name" name="name" type="text" value="${read.name}" class="form-control"/>
							</div>
							<div class="col-sm-6 form-group">
								<label for="reg_no">주민번호</label>
								<input id="reg_no" name="reg_no" type="text" value="${read.reg_no}" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label for="address">주소</label>
							<textarea id="address" name="address" placeholder="주소" rows="3" class="form-control"><c:out value="${read.address}"></c:out></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label for="hire_date">입사일</label> 
								<input id="hire_date" name="hire_date" type="text" value="${read.hire_date}" class="form-control"/>
							</div>

							<div class="col-sm-4 form-group">
								<label for="dept_no">부서명</label> 
								<input id="dept_no" name="dept_name" type="text" value="${read.dept_name}" class="form-control"/>
							</div>
							<div class="col-sm-4 form-group">
								<label for="leave_date">퇴사일</label> 
								<input id="hire_date" name="hire_date" type="text" value="${read.leave_date}" class="form-control"/>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label for="bank_no">급여은행</label>
								<input id="bank_no" name="bank_no" type="text" value="${read.bank_name}" class="form-control"/>
							</div>

							<div class="col-sm-8 form-group">
								<label for="bank_account">급여계좌</label> 
								<input id="bank_account" name="bank_account" type="text" value="${read.bank_account}" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label for="phone_num">전화번호</label> 
							<input id="phone_num" name="phone_num" type="text" value="${read.phone_num}" class="form-control"/>
						</div>
						<div class="form-group">
							<label for="email">Email </label> 
							<input id="eamil" name="email" type="text" value="${read.email}" class="form-control" />
						</div>
						<button id="update_btn" type="submit" class="btn btn btn-dark mt-3">수정</button>
						<button id="delete_btn" type="submit" class="btn btn btn-dark mt-3">삭제</button>
						<button id="cencle_btn" type="submit" class="btn btn btn-dark mt-3">취소</button>
						
					</div>
				
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