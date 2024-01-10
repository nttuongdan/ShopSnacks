<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>

<jsp:include page="head.jsp"></jsp:include>

</head>
<body>
	<div class="container">
		<jsp:include page="navbar.jsp"></jsp:include>
		<main class="bg-body-secondary mx-2">
			<div class="row justify-content-center py-5">
				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Đăng ký tài khoản</h4>
							<p class="card-description">Với tư cách khách hàng</p>
							<form class="forms-sample my-3" action="dangkyxulyAction" method="post">
								<div class="form-group row my-2">
									<label for="exampleInputUsername2"
										class="col-sm-3 col-form-label">Tên người dùng</label>
									<div class="col-sm-9">
										<input type="text" class="form-control"
											id="exampleInputUsername2" placeholder="Nguyễn Thị Tường Dân">
									</div>
								</div>
								<div class="form-group row my-2">
									<label for="exampleInputEmail2" class="col-sm-3 col-form-label">Tên
										đăng nhập</label>
									<div class="col-sm-9">
										<input type="email" class="form-control"
											id="exampleInputEmail2" placeholder="nmt123">
									</div>
								</div>
								<div class="form-group row my-2">
									<label for="exampleInputPassword2"
										class="col-sm-3 col-form-label">Mật khẩu</label>
									<div class="col-sm-9">
										<input type="password" class="form-control"
											id="exampleInputPassword2" placeholder="Vd:123456">
									</div>
								</div>
								<div class="form-group row my-2">
									<label for="exampleInputConfirmPassword2"
										class="col-sm-3 col-form-label">Xác nhận mật khẩu</label>
									<div class="col-sm-9">
										<input type="password" class="form-control"
											id="exampleInputConfirmPassword2" placeholder="Xác nhận">
									</div>
								</div>

								<div class="text-center my-4">
									<button type="submit" class="btn btn-primary me-2 w-50">Đăng
										ký</button>
									<a href="login" class="btn btn-light w-25">Hủy</a>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>

	</div>


</body>
</html>