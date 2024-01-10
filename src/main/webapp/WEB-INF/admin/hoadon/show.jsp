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
									<h4>Chi tiết hóa đơn</h4>

									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<th>Id hóa đơn</th>
												<th>Tên snack</th>
												<th>Số lượng</th>
												<th>Đơn giá</th>
												<th>Thành tiền</th>
											</thead>
											<tbody>
												<s:iterator var="hd" value="hoadonchitiet">
													<tr>
														<td><s:property value="id" /></td>
														<td><s:property value="tenmon" /></td>
														<td><s:property value="soluong" /></td>
														<td><s:property value="dongia" /></td>
														<td><s:property value="thanhtien" /></td>
													</tr>
												</s:iterator>
												<tr>
													<td>Tổng tiền</td>
													<td></td>
													<td></td>
													<td></td>
													<td><s:property value="tongtien" /></td>
												</tr>
											</tbody>
										</table>
									</div>
									<a href="listHoaDonAction" class="btn btn-success">Trở về</a>

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

