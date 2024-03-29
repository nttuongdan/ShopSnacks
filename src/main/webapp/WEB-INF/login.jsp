<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Shop Snack</title>
<!-- plugins:css -->
<link rel="stylesheet" href="./assets/vendors/feather/feather.css">
<link rel="stylesheet"
	href="./assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="./assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="./assets/vendors/typicons/typicons.css">
<link rel="stylesheet"
	href="./assets/vendors/simple-line-icons/css/simple-line-icons.css">
<link rel="stylesheet"
	href="./assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="./assets/css/vertical-layout-light/style.css">
<jsp:include page="head.jsp"></jsp:include>

</head>
<body>
	<div class="container">
		<jsp:include page="navbar.jsp"></jsp:include>
		<main>
			<div class="container-scroller">
				<div class="container-fluid page-body-wrapper full-page-wrapper">
					<div class="content-wrapper d-flex align-items-center auth px-0">
						<div class="row w-100 mx-0">
							<div class="col-lg-4 mx-auto">
								<div class="auth-form-light text-left py-5 px-4 px-sm-5">
									<div class="brand-logo">
										<img src="./assets/images/logo.svg" alt="logo">
									</div>
									<h4>Welcome from Snack Shop</h4>
									<h6 class="fw-light">Đăng nhập để tiếp tục.</h6>
									<form action="loginUser" method="POST" class="pt-3">
										<div class="form-group">
											<input type="text" class="form-control form-control-lg"
												id="exampleInputEmail1" name="tendangnhap"
												placeholder="Username">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-lg"
												id="exampleInputPassword1" name="matkhau"
												placeholder="Password">
										</div>
										<div class="mt-3">
											<button
												class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
												type="submit">ĐĂNG NHẬP</button>
										</div>

										<!-- Display error message if login fails -->
										<s:if test="hasActionErrors()">
											<div style="color: red;">
												<s:actionerror />
											</div>
										</s:if>
										<div
											class="my-2 d-flex justify-content-between align-items-center">
											<div class="form-check">
												<label class="form-check-label text-muted"> <input
													type="checkbox" class="form-check-input"> Ghi nhớ
												</label>
											</div>
											<a href="quanmatkhauAction" class="auth-link text-black">Quên
												mật khẩu?</a>
										</div>
										<div class="mb-2">
											<button type="button"
												class="btn btn-block btn-facebook auth-form-btn">
												<i class="ti-facebook me-2"></i>Connect using facebook
											</button>
										</div>
										<div class="text-center mt-4 fw-light">
											Không có tài khoản? <a href="dangkydkAction"
												class="text-primary">Tạo mới</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- content-wrapper ends -->
				</div>
				<!-- page-body-wrapper ends -->
			</div>
		</main>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="./assets/vendors/js/vendor.bundle.base.js"></script>
	<script
		src="./assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script
		src="./assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src=".assets/js/off-canvas.js"></script>
	<script src="./assets/js/hoverable-collapse.js"></script>
	<script src="./assets/js/template.js"></script>
	<script src="./assets/js/settings.js"></script>
	<script src="./assets/js/todolist.js"></script>
	<!-- endinject -->
	<s:if test="hasActionMessages()">
		<div class="welcome">
			<s:actionmessage />
		</div>
	</s:if>
</body>
</html>