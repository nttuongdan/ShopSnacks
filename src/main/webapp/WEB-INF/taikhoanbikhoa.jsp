<%@page import="Model.DonHangChiTiet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop Snack</title>

<jsp:include page="head.jsp"></jsp:include>

</head>
<body>
	<div class="container">
		<jsp:include page="navbar.jsp"></jsp:include>

		<main>
			<div class="container pb-5 mb-sm-4">
				<div class="pt-5">
					<div class="card py-3 mt-sm-3">
						<div class="card-body text-center">
							<h2 class="h4 pb-3">Tài khoản của bạn hiện đang chưa kích
								hoạt hoặc bị khóa!</h2>
							<p class="fs-sm mb-2">Vui lòng liên hệ quản trị viên!</p>
							<a class="btn btn-danger mt-3 me-3" href="homepage"> <i
								class="ci-cart me-2"></i>Quay lại trang chủ
							</a>
						</div>
					</div>
				</div>
			</div>
		</main>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
</body>
</html>