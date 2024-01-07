<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/head.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">
		<jsp:include page="../layouts/navbar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<jsp:include page="../layouts/sidebar.jsp"></jsp:include>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper" id="content">
					<div class="row">
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Sửa món ăn</h4>

									<form class="forms-sample" action="updateFoodAction"
										method="POST" enctype="multipart/form-data" validate="true">

										<div class="form-group">
											<input type="hidden" class="form-control"
												id="exampleInputUsername1" name="id"
												value='<s:property value="food.id"/>'>
										</div>

										<div class="form-group">
											<label for="exampleInputUsername1">Tên bánh snack</label> <input
												type="text" class="form-control" id="exampleInputUsername1"
												placeholder="Osi snack" name="tenmonan"
												value='<s:property value="food.ten"/>'>
										</div>

										<div class="form-group">
											<label>Hình</label> <img width='80'
												src='./img/<s:property value="food.hinh"/>' />
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1">Hình ảnh</label> <input
												type="file" class="form-control" id="exampleInputEmail1"
												placeholder="hinh ảnh" name="hinh"
												accept="image/png, image/jpeg, image/gif">
										</div>

										<div class="form-group">
											<label for="exampleInputEmail1">Giá</label> <input
												type="number" class="form-control" id="exampleInputEmail1"
												placeholder="Giá" name="gia"
												value='<s:property value="food.gia"/>'>
										</div>

										<button type="submit" class="btn btn-primary me-2">Sửa</button>
										<a href="listFoodAction" class="btn btn-light">Hủy </a>
									</form>

								</div>
							</div>
						</div>
					</div>
					<jsp:include page="../layouts/footer.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
