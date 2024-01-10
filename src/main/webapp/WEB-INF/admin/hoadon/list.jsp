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
									<h4>Danh sách hóa đơn</h4>

									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<th>Id hóa đơn</th>
												<th>Tên người mua</th>
												<th>Trạng thái</th>

												<th class="text-center">Xem chi tiết đơn hàng</th>
											</thead>
											<tbody>
												<s:iterator var="hd" value="hoadon">
													<tr>
														<td><s:property value="id" /></td>
														<td><s:property value="tennguoidung" /></td>
														<td><s:if test="trangthai == 1">
																<a class="btn btn-success"
																	href='deleteHoaDonAction?id=<s:property value="id"/>'>
																	Đã xử lý</a>
															</s:if> <s:else>
																<a class="btn btn-danger"
																	href='deleteHoaDonAction?id=<s:property value="id"/>'>
																	Đang xử lý</a>
															</s:else></td>
														<td class="text-center"><a
															href='showHoaDonAction?id=<s:property value="id"/>'><i
																class="fa-regular fa-circle-check"></i></a></td>
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

