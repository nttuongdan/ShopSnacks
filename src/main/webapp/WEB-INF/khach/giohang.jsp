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

				<form action="">
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
									<td><input type="number" id="soluong" name="soluong"
										min="1" value='<s:property value="soluong" /> '></td>
									<td><s:property value="dongia" /></td>
									<td><s:property value="thanhtien" /></td>
									<td><div class="form-check">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault">
										</div></td>
								</tr>
								<s:set var="stt" value="#stt + 1" />
							</s:iterator>

						</tbody>
					</table>
					<s:if test="thanhtien !=0">
						<div class="text-center mt-5 mb-3">
							<a href="ThanhToanGioHangAction" class="btn btn-primary w-25">Chuyển
								qua thanh toán</a>
						</div>
					</s:if>
				</form>


			</div>

		</main>
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>


</body>
</html>