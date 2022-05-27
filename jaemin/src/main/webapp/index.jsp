<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<div class="container mt-3">

		<h1>로그인 페이지</h1>
		<hr />
		<form action="success.jsp" onsubmit="return valid();">
			<div class="mb-3 mt-3">
				<input type="text" class="form-control" id="username"
					placeholder="Enter username" name="username">
			</div>
			<div class="mb-3">
				<input type="password" class="form-control" id="password"
					placeholder="Enter password" name="password">
			</div>
			<button type="reset" class="btn btn-warning">초기화</button>
			<button type="submit" class="btn btn-primary">로그인</button>
		</form>
	</div>

	<script>
	function valid(){
		let data = {
				username:$("#username").val(),
				password:$("#password").val()
		}
		
		// 유효성 체크시작 (username = club, password = 1234) 통과!!
		if(data.username === "club" && data.password === "1234"){
			return true;
		}
		
		console.log(data);
		
		alert("로그인 실패");
		return false;
	}

</script>

</body>
</html>







