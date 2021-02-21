<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<title>Hello, world!</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-sm" style="width:80%;">
			<a class="navbar-brand" href="home.do">
				
				<img src="https://cdn.jsdelivr.net/gh/bgjeong/cdn/korean.png" alt="" style="width:4rem;"class="d-inline-block align-top img-fluid"> 
			</a>
			<form class="d-flex">
				<a href="home.do" class="btn">
					<img src="https://cdn.jsdelivr.net/gh/bgjeong/cdn/home.png" style="width:2rem;"class="">
				</a>
				
				<a href="boardform.do" class="btn">
					<img src="https://cdn.jsdelivr.net/gh/bgjeong/cdn/plus_blue.png" style="width:2rem;"class="">
				</a>
				
				<a href="mypage.do" class="btn">
					<img src="<%=request.getContextPath() %>/upload/${pimg}" style="width:2rem;"class="">
				</a>
			</form>
		</div>
	</nav>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
</body>
</html>