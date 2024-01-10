<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />

<!-- SEO Meta Tags -->
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Viewport -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="theme-color" content="#ffffff" />

<title>Đơn hàng của tôi</title>
<jsp:include page="../head.jsp" />

<!-- Favicon and Touch Icons -->
<link rel="apple-touch-icon" sizes="180x180"
	href="img/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32"
	href="img/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16"
	href="img/favicon-16x16.png" />

<!-- CSS -->
<link rel="stylesheet" media="screen"
	href="vendor/simplebar/simplebar.min.css" />
<link rel="stylesheet" media="screen"
	href="vendor/tiny-slider/tiny-slider.css" />
<link rel="stylesheet" media="screen"
	href="vendor/nouislider/nouislider.min.css" />
<link rel="stylesheet" media="screen"
	href="vendor/drift-zoom/drift-basic.min.css" />
<link rel="stylesheet" media="screen"
	href="vendor/lightgallery/lightgallery-bundle.min.css" />
<link rel="stylesheet" media="screen" href="css/theme.min.css" />
</head>

<body>
	<div class="container">
		<jsp:include page="../navbar.jsp"></jsp:include>
		<main>
			<div class="container pb-5 my-5 mb-md-4">
				<div class="row">
					<aside class="col-lg-4 pt-4 pt-lg-0 pe-xl-5">
						<div class="bg-white rounded-3 shadow-lg pt-1 mb-5 mb-lg-0">
							<div
								class="d-md-flex justify-content-between align-items-center text-center text-md-start p-4">
								<div class="d-md-flex align-items-center">

									<div class="ps-md-3">
										<span> Khách hàng </span>
										<h4 class="fs-base mb-0">
											<s:property value="tennguoidung" />
										</h4>
									</div>
								</div>
								<a
									class="btn btn-primary d-lg-none mb-2 mt-3 mt-md-0 text-decoration-none"
									href="#account-menu" data-bs-toggle="collapse"
									aria-expanded="false"> <i class="ci-menu me-2"></i>Hồ sơ
									khách hàng
								</a>
							</div>
							<div class="d-lg-block collapse" id="account-menu">
								<div class="bg-body-secondary px-4 py-3">
									<h5 class="fs-sm mb-0 text-muted">Quản lý</h5>
								</div>
								<ul class="list-unstyled mb-0">
									<li class="border-bottom mb-0"><a
										class="nav-link-style d-flex align-items-center px-4 py-3 active"
										href="donhangKhachAction"> <i
											class="ci-bag opacity-60 me-2"></i>Đơn hàng<span
											class="fs-sm text-muted ms-auto"></span>
									</a></li>
								</ul>
								<div class="bg-body-secondary px-4 py-3">
									<h5 class="fs-sm mb-0 text-muted">Thiết lập tài khoản</h5>
								</div>
								<ul class="list-unstyled mb-0">
									<li class="border-bottom mb-0"><a
										class="nav-link-style d-flex align-items-center px-4 py-3"
										href="quenmatkhauKhachAction"> <i
											class="ci-user opacity-60 me-2"></i>Đổi mật khẩu
									</a></li>

								</ul>
								<div class="bg-body-secondary px-4 py-3">
									<form action="logoutUser" method="POST" class="pt-3">
										<button type="submit" class="btn btn-info">Đăng xuất</button>
									</form>
								</div>
							</div>
						</div>
					</aside>
					<div class="col-md-6 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Sửa đổi mật khẩu</h4>

								<form class="forms-sample" action="quenmatkhauxylyKhachAction"
									method="POST" enctype="multipart/form-data" validate="true">
									<div class="form-group my-1">
										<label for="exampleInputPassword1">Mật khẩu cũ</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Mật khẩu"
											name="matkhaucu">
									</div>
									<div class="form-group my-1">
										<label for="exampleInputPassword1">Mật khẩu mới</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Mật khẩu"
											name="matkhaumoi">
									</div>

									<div class="form-group my-1">
										<label for="exampleInputConfirmPassword1">Xác nhận mật
											khẩu </label> <input type="password" class="form-control"
											id="exampleInputConfirmPassword1"
											placeholder="Xác nhận mật khẩu" name="xacnhanmatkhau">
									</div>

									<button type="submit" class="btn btn-primary me-2 mt-3 w-50">Lưu</button>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>

		</main>
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>

</body>
</html>