<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="layouts/head.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">
		<jsp:include page="layouts/navbar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<jsp:include page="layouts/sidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper" id="content">
					<div class="row justify-content-center">
						<div class="col-xs=12 col-md-4 col-lg-3 py-3 me-3"
							style="background-color: rgba(75, 132, 152, 0.7);">
							<div class="row">
								<div class="col-md-6">
									<span class="fs-5">Số lượng sản phẩm đang bán</span>
									<hr>
									<span class="fs-3 text-center"><s:property
											value="sl_sanpham" /></span>
								</div>
								<div class="col-md-4">
									<i class="fa-solid fa-cart-plus"
										style="font-size: 70px; opacity: 0.7;"></i>
								</div>
								<div class="col-md-2 py-5">
									<a href="#"><i class="fa-solid fa-chevron-right"
										style="font-size: 50px; color: gray;"></i></a>
								</div>
							</div>
						</div>
						<div class="col-xs=12 col-md-4 col-lg-3 py-3 me-3"
							style="background-color: rgba(153, 102, 255, 0.2);">
							<div class="row">
								<div class="col-md-6">
									<span class="fs-5">Số lượng hóa đơn đã đặt</span>
									<hr>
									<span class="fs-3 text-center"><s:property
											value="sl_hoadon" /></span>
								</div>
								<div class="col-md-4">
									<i class="fa-solid fa-money-bill-1-wave"
										style="font-size: 70px; opacity: 0.7;"></i>
								</div>
								<div class="col-md-2 py-5">
									<a href="#"><i class="fa-solid fa-chevron-right"
										style="font-size: 50px; color: gray;"></i></a>
								</div>
							</div>
						</div>
						<div class="col-xs=12 col-md-4 col-lg-3 py-3"
							style="background-color: rgba(255, 159, 64, 0.7);">
							<div class="row">
								<div class="col-md-6">
									<span class="fs-5">Số lượng tài khoản người dùng</span>
									<hr>
									<span class="fs-3 text-center"><s:property
											value="sl_taikhoan" /></span>
								</div>
								<div class="col-md-4">
									<i class="fa-solid fa-user-check"
										style="font-size: 70px; opacity: 0.7;"></i>
								</div>
								<div class="col-md-2 py-5">
									<a href="#"><i class="fa-solid fa-chevron-right"
										style="font-size: 50px; color: gray;"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col">
							<canvas id="myChart" style="height: 400px;"></canvas>
						</div>

						<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

						<script>
							const ctx = document.getElementById('myChart');

							new Chart(ctx, {
								type : 'line',
								data : {
									labels : ['1','2','3','4','5','6','7'],
									datasets : [ {
										label : 'Số lượng đơn hàng',
										data : [10,2,5,7,16,8,9],
										borderWidth : 1,
										backgroundColor : [
												'rgba(255, 99, 132, 0.2)',
												'rgba(54, 162, 235, 0.2)',
												'rgba(255, 206, 86, 0.2)',
												'rgba(75, 192, 192, 0.2)',
												'rgba(153, 102, 255, 0.2)',
												'rgba(255, 159, 64, 0.2)' ],
										borderColor : [ 'rgba(255,99,132,1)',
												'rgba(54, 162, 235, 1)',
												'rgba(255, 206, 86, 1)',
												'rgba(75, 192, 192, 1)',
												'rgba(153, 102, 255, 1)',
												'rgba(255, 159, 64, 1)' ],
									} ]
								},
								options : {
									scales : {
										y : {
											beginAtZero : true
										}
									},
									maintainAspectRatio : false,
								}
							});
						</script>


					</div>

				</div>
				<jsp:include page="layouts/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>

</body>
</html>