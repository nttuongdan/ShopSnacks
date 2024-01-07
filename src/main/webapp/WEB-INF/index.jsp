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

					<div class="col-md-3">
						<div class="card pt-5 border border-secondary">
							<img src='./img/<s:property value="hinh"/>' class="card-img-top"
								alt="snack hình ảnh" style="width: 100%; height: 250px;">
							<div class="card-body text-left mt-2">
								<p class="card-text">
									<s:property value="ten" />
								</p>
								<p class="fw-bold">
									<s:property value="gia" />
									₫
								</p>
								<a href="#" class="btn btn-outline-success w-100">Chọn mua</a>
							</div>
						</div>
					</div>

				</s:iterator>

			</div>
		</main>
		<aside class="position-fixed top-0 start-0 p-3">
			<a href="logout.jsp" class="btn btn-danger">Đăng xuất</a>
		</aside>
		
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
</body>
</html>