<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop Snack</title>

<jsp:include page="../head.jsp"></jsp:include>

</head>
<body>
	<div class="container">
		<jsp:include page="../navbar.jsp"></jsp:include>
		<main class="container">
			<div class="row p-3 my-5 border border-secondary">
				<h4 class="text-center mb-5 text-primary">Giỏ hàng</h4>

				<table class="table table-striped table-hover">
					<thead>
						<th>STT</th>
						<th>Tên snack</th>
						<th>Số lượng</th>
						<th>Đơn giá</th>
						<th>Thành tiền</th>
						<th>Chọn</th>
					</thead>
					<tbody>
						<s:set var="stt" value="1" />
						<s:iterator var="food" value="donhangchitiet">

							<tr>
								<td><s:property value="#stt" /></td>
								<td><s:property value="tenmon" /></td>
								<td>
									<div class="form-group">
										<form action="CapNhatSoLuongAction" method="get">
											<input type="hidden" name="id"
												value='<s:property value="monan_id" />'>
											<div class="row">
												<div class="col-2">
													<input type="number" class="form-control w-100"
														name="soluong" id="soluong" min="1"
														value='<s:property value="soluong"/>'>
												</div>
												<div class="col-3">
													<button type="submit" class="btn btn-success w-100">Cập
														nhật</button>
												</div>
											</div>
										</form>

									</div>
								</td>
								<td><s:property value="dongia" /></td>
								<td><s:property value="thanhtien" /></td>
								<td><a
									href='XoaGioHangAction?id=<s:property value="monan_id" />'
									class="btn btn-warning"><i class="bi bi-trash"></i></a></td>
							</tr>
							<s:set var="stt" value="#stt + 1" />
						</s:iterator>

					</tbody>
					<s:if test="thanhtien !=0">
						<tfoot>
							<tr>
								<td colspan=4 class="text-center">Tổng tiền</td>
								<td class="text-danger"><s:property value="thanhtien" /></td>
							</tr>
						</tfoot>
					</s:if>

				</table>

				<s:if test="thanhtien !=0">
					<div class="text-center mt-5 mb-3">
						<a href="ThanhToanGioHangAction" class="btn btn-primary w-25">Thanh
							toán</a>
					</div>
				</s:if>


			</div>

		</main>
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>


</body>
</html>