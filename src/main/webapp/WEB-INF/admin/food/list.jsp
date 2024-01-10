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
									<h4>Danh sách bánh Snack</h4>

									<a href="createFoodAction"
										class="btn btn-secondary btn-rounded btn-fw my-3">Thêm mới</a>

									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<th>Tên món ăn</th>
												<th>Hình ảnh</th>
												<th>Giá</th>
												<th>Tình trạng</th>
												<th>Sửa</th>
												<th>Xóa</th>
											</thead>
											<tbody>
												<s:iterator var="food" value="foodlist">
													<tr>
														<td><s:property value="ten" /></td>
														<td><img style="width: 80px; height: 100px;"
															src=' ./img/<s:property value="hinh"/>' /></td>

														<td><s:property value="gia" /></td>
														<td><s:if test="trangthai == 1">
																<a class="btn btn-success"
																	href='deleteFoodAction?id=<s:property value="id"/>'>
																	Đang bán</a>
															</s:if> <s:else>
																<a class="btn btn-danger"
																	href='deleteFoodAction?id=<s:property value="id"/>'>
																	Hết hàng</a>
															</s:else></td>
														<td><a
															href='editFoodAction?id=<s:property value="id"/>'><i
																class="fa-regular fa-pen-to-square"></i></a></td>
														<td><a
															href='deleteFoodAction?id=<s:property value="id"/>'
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

