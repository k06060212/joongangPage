<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script async src="https://cdn.jsdelivr.net/npm/perfops-rom"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<style>
body {
	background-color: #eeeeee;
}

.h7 {
	font-size: 0.8rem;
}

.gedf-wrapper {
	margin-top: 0.97rem;
}

@media ( min-width : 992px) {
	.gedf-main {
		padding-left: 4rem;
		padding-right: 4rem;
	}
	.gedf-card {
		margin-bottom: 2.77rem;
	}
}

/**Reset Bootstrap*/
.dropdown-toggle::after {
	content: none;
	display: none;
}

.img-fluid . max-width: 100 %; and height: auto ;
body {
	background: #f8f9fa;;
}

/* Profile container */
.profile {
	margin: 20px 0;
}

/* Profile list */
.profile-list {
	padding: 20px 0 0 0;
	margin : 20px;
	background: #fff;
	border-width: medium;
	border-style: solid;
	border-color: #d4d4d4;
	border-width: 0.5px;
	border-radius: 5px
}

.profile-userpic img {
	float: none;
	margin: 0 auto;
	width: 50%;
	height: 50%;
	-webkit-border-radius: 50% !important;
	-moz-border-radius: 50% !important;
	border-radius: 50% !important;
}

.profile-usertitle {
	text-align: center;
	margin-top: 20px;
}

.profile-usertitle-name {
	color: #5a7391;
	font-size: 16px;
	font-weight: 600;
	margin-bottom: 7px;
}

.profile-usertitle-job {
	text-transform: uppercase;
	color: #5b9bd1;
	font-size: 12px;
	font-weight: 600;
	margin-bottom: 15px;
}

.profile-userbuttons {
	text-align: center;
	
}

.profile-userbuttons .btn {
	text-transform: uppercase;
	font-size: 11px;
	font-weight: 600;
	width: -webkit-fill-available;
}

.profile-userbuttons .btn:last-child {
	margin-right: 0px;
}

.profile-usermenu {
	margin-top: 30px;
}

.profile-usermenu ul li {
	border-bottom: 1px solid #f0f4f7;
}

.profile-usermenu ul li:last-child {
	border-bottom: none;
}

.profile-usermenu ul li a {
	color: #93a3b5;
	font-size: 14px;
	font-weight: 400;
}

.profile-usermenu ul li a i {
	margin-right: 8px;
	font-size: 14px;
}

.profile-usermenu ul li a:hover {
	background-color: #fafcfd;
	color: #5b9bd1;
}

.profile-usermenu ul li.active {
	border-bottom: none;
}

.profile-usermenu ul li.active a {
	color: #5b9bd1;
	background-color: #f6f9fb;
	border-left: 2px solid #5b9bd1;
	margin-left: -2px;
}

/* Profile Content */
.profile-content {
	padding: 20px;
	background: #fff;
	min-height: 460px;
	border-style: solid;
	border-color: #d4d4d4;
	border-width: 0.5px;
}

@media (min-width: 768px) {
	.col-md-3 {
		 display: contents !important;
		 
	}
}
 
.img-responsive{
	max-width: 100%; height: auto;
}

.btn btn-primary btn-sm{
	object-fit:cover;
}
.row profile{
	display:grid;
	grid-template-columns : 1fr 1fr 1fr 1fr;
}

</style>
</head>
<body>

	<div class="container">
		<div class="row profile">
			<div class="col-md-3">
				<c:forEach var="item" items="${following_dto }" varStatus="status">
				<div class="profile-list">
					<!-- SIDEBAR USERPIC -->
					<div class="profile-userpic" style="text-align: center;">
						<img src="<%=request.getContextPath() %>/upload/${mem_info[status.index].profile_img}" class="img-responsive" alt="">
					</div>
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
						<%-- <div class="profile-usertitle-nickname">${mem_info[status.index].nickname}</div> --%>
						<div class="profile-usertitle-id">${item.target_id }</div>
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<div class="profile-userbuttons">
						<%-- <a href="userView.do?uid=${item.target_id }" style="text-decoration:none"><input type="button"  value="Meet ${mem_info[status.index].userid}" class="btn btn-primary btn-sm"></a> --%>
						<a class="btn btn-primary btn-sm" href="userView.do?uid=${item.target_id }" role="button">Meet ${mem_info[status.index].userid}</a>
					</div>
					</div>
					<!-- END SIDEBAR BUTTONS -->
				</c:forEach>
				</div>
	</div>
</div>			
</body>
<!--   <script>
    var page = 10;

    $(window).scroll(function() {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
          console.log(++page);
         /*  $("body").append('<div class="big-box"><h1>Page ' + page + '</h1></div>'); */
          $("body").append('<div class="container">
  		<div class="row profile">
		<div class="col-md-3">' + page + '</h1></div>');

        }
    });
  </script> -->

</html>
