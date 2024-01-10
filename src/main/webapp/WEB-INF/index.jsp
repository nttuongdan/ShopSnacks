<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop Snack</title>

<jsp:include page="head.jsp"></jsp:include>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&family=Sono:wght@200;300;400;500;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="homehead/css/bootstrap.min.css">

<link rel="stylesheet" href="homehead/css/bootstrap-icons.css">

<link rel="stylesheet" href="homehead/css/owl.carousel.min.css">

<link rel="stylesheet" href="homehead/css/owl.theme.default.min.css">

<link href="homehead/css/templatemo-pod-talk.css" rel="stylesheet">

</head>
<body>
	<div class="container">
		<jsp:include page="navbar.jsp"></jsp:include>
		<main>

			<section class="hero-section">
				<div class="container">
					<div class="row">

						<div class="col-lg-12 col-12">
							<div class="text-center mb-5 pb-2">
								<h1 class="text-white">Nhìn là thích - CHÉN là NGON</h1>

								<p class="text-white">Gửi yêu thương trong từng sản phẩm</p>

								<a href="#section_2" class="btn custom-btn smoothscroll mt-3">So Hot !!!!!!!!!</a>
							</div>

							<div class="owl-carousel owl-theme">
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/1.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Lay's vị nấm truffle  <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>

								</div>

								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/4.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Swing Snack maxx <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/3.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Snack Cheetos <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/2.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Lay's Vị tảo biển Nori <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>
								
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/5.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Snack O'star <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>
								
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/6.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Snack Poca vị bò lúc lắc <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>
								
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/7.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Snack Oishi vị bắp ngọt <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>
								
								<div class="owl-carousel-info-wrap item">
									<img
										src="homehead/images/profile/8.png"
										class="owl-carousel-image img-fluid" alt="">

									<div class="owl-carousel-info">
										<h7 class="mb-2">
											Snack Mi <img src="homehead/images/verified.png"
												class="owl-carousel-verified-image img-fluid" alt="">
										</h4>
									</div>
								</div>

								

								
								
								</div>
							</div>
						</div>

					</div>
				</div>
			</section>
			<div class="row g-4 py-3">

				<s:iterator var="food" value="foodlist">

					<div class="col-sx-6 col-md-4 col-lg-3">
						<div
							class="card pt-5 border border-secondary btn btn-outline-light">
							<a href='SnackMoTaAction?id=<s:property value="id"/>'
								class="text-decoration-none"> <img
								src='./img/<s:property value="hinh"/>' class="card-img-top"
								alt="snack hình ảnh" style="width: 100%; height: 300px;">
								<div class="card-body text-left mt-2">
									<p class="card-text text-dark">
										<s:property value="ten" />
									</p>
									<p class="fw-bold text-dark">
										<s:property value="gia" />
										₫
									</p>
								</div></a>
							<s:if test="trangthai ==1">
								<a href='ThemGioHangAction?id=<s:property value="id"/>'
									class="btn btn-outline-success w-100">Chọn mua</a>
							</s:if>
							<s:else>
								<div class="btn btn-outline-danger w-100">Hết hàng</div>
							</s:else>

						</div>
					</div>
				</s:iterator>

			</div>

		</main>
		<jsp:include page="footer.jsp"></jsp:include>

	</div>

	<script src="homehead/js/jquery.min.js"></script>
	<script src="homehead/js/bootstrap.bundle.min.js"></script>
	<script src="homehead/js/owl.carousel.min.js"></script>
	<script src="homehead/js/custom.js"></script>
</body>
</html>