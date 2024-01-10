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


</body>
</html>