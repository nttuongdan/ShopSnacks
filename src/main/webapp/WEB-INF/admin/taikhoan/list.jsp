<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../layouts/head.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
	<div class="container-scroller">
		<jsp:include page="../layouts/navbar.jsp"></jsp:include>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<jsp:include page="../layouts/sidebar.jsp"></jsp:include>

			<s:if test="hasActionMessages()">
				<p>
					<s:actionmessage />
				</p>
			</s:if>

			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper" id="content">
					<div class="row">
						<div class="col-lg-10 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4>Danh sách tài khoản</h4>

									<a href="createTaiKhoanAction"
										class="btn btn-secondary btn-rounded btn-fw my-3">Thêm mới</a>

									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<th>Tên người dùng</th>
												<th>Tên đăng nhập</th>
												<th>Mật khẩu</th>
												<th>Loại tài khoản</th>
												<th>Trạng thái</th>
												<th>Sửa</th>
												<th>Xóa</th>
											</thead>
											<tbody>
												<s:iterator var="taikhoan" value="listTaiKhoan">
													<tr>
														<td><s:property value="tennguoidung" /></td>
														<td><s:property value="tendangnhap" /></td>
														<td><s:property value="matkhau" /></td>
														<td><s:property value="loaitaikhoan" /></td>
														<td><s:if test="trangthai == 1">
																<a class="btn btn-success"
																	href='deleteTaiKhoanAction?id=<s:property value="id"/>'>
																	Đang hoạt động</a>
															</s:if> <s:else>
																<a class="btn btn-danger"
																	href='deleteTaiKhoanAction?id=<s:property value="id"/>'>
																	Không hoạt động</a>
															</s:else></td>
														<td><a
															href='editTaiKhoanAction?id=<s:property value="id"/>'><i
																class="fa-regular fa-pen-to-square"></i></a></td>
														<td><a
															href='deleteTaiKhoanAction?id=<s:property value="id"/>'
															onclick="return confirm('Bạn chắc chắn xóa?')"><i
																class="fa-regular fa-trash-can"></i></a></td>
													</tr>
												</s:iterator>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="../layouts/footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>

