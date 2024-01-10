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
										href="#"> <i class="ci-bag opacity-60 me-2"></i>Đơn hàng<span
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
					<section class="col-lg-8">
						<div
							class="d-flex justify-content-between align-items-center pt-lg-2 pb-4 pb-lg-5 mb-lg-3">
							<div class="d-flex align-items-center">
								<label
									class="d-none d-lg-block fs-sm text-light text-nowrap opacity-75 me-2"
									for="order-sort">Sắp xếp theo:</label> <label
									class="d-lg-none fs-sm text-nowrap opacity-75 me-2"
									for="order-sort">Sắp xếp theo:</label> <select
									class="form-select" id="order-sort">
									<option>Tất cả</option>
									<option>Đã giao</option>
									<option>Đang vận chuyển</option>
									<option>Đã chuyển hoàn</option>
									<option>Đã hủy</option>
								</select>
							</div>

						</div>
						<div class="table-responsive fs-md mb-4">
							<table class="table table-hover mb-0">
								<thead>
									<tr>
										<th>Mã đơn</th>
										<th>Ngày đặt hàng</th>
										<th>Trạng thái</th>
										<th>Tổng tiền</th>
									</tr>
								</thead>
								<tbody>
									<s:iterator var="donhang" value="donhangmua">
										<tr>
											<td class="py-3"><a
												class="nav-link-style fw-medium fs-sm" href="#"
												data-bs-toggle="modal">HD-<s:property value="id" /></a></td>
											<td class="py-3"><s:property value="ngaydat" /></td>
											<td class="py-3"><s:if test="trangthai == 1">
													<span class="badge bg-info m-0">Đã xử lý</span>
												</s:if> <s:else>
													<span class="badge bg-danger m-0"> Đang xử lý </span>
												</s:else></td>
											<td class="py-3 text-left"><s:property value="tongtien" /></td>
										</tr>
									</s:iterator>
								</tbody>
							</table>
						</div>

					</section>
				</div>
			</div>

		</main>
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>

</body>
</html>