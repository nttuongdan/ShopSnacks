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
									<h4 class="card-title">Thêm mới tài khoản</h4>

									<form class="forms-sample" action="storeTaiKhoanAction"
										method="POST" enctype="multipart/form-data" validate="true">

										<div class="form-group">
											<label for="exampleInputUsername1">Tên người dùng</label> <input
												type="text" class="form-control" id="exampleInputUsername1"
												placeholder="Huỳnh Hồng Huân" name="tennguoidung">
										</div>

										<div class="form-group">
											<label for="exampleInputUsername1">Tên đăng nhập</label> <input
												type="text" class="form-control" id="exampleInputUsername1"
												placeholder="Huỳnh Hồng Huân" name="tendangnhap">
										</div>

										<div class="form-group">
											<label for="exampleInputPassword1">Mật khẩu</label> <input
												type="password" class="form-control"
												id="exampleInputPassword1" placeholder="Mật khẩu"
												name="matkhau">
										</div>

										<div class="form-group">
											<label for="exampleInputConfirmPassword1">Xác nhận
												mật khẩu </label> <input type="password" class="form-control"
												id="exampleInputConfirmPassword1"
												placeholder="Xác nhận mật khẩu" name="xacnhanmatkhau">
										</div>

										<div class="form-group">
											<label for="exampleInputUsername1">Tên người dùng</label> <select
												name="loaitaikhoan" class="ms-3 border rounded-4">
												<option value="admin">Admin</option>
												<option value="khach">Khách hàng</option>
											</select>
										</div>

										<button type="submit" class="btn btn-primary me-2">Thêm</button>
										<a href="listTaiKhoanAction" class="btn btn-light">Hủy </a>
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