<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đặt món</title>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<jsp:include page="head.jsp" />
<style>
.sizes input {
	width: 50px; /* Đặt kích thước khung theo ý muốn */
}
</style>


</head>
<body>

	<div class="container">
		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="container-fliud">
			<div class="wrapper row my-5">
				<div class="preview col-md-6">

					<div class="preview-pic tab-content border border-secondary py-5">
						<div class="tab-pane active" id="pic-1">
							<img src="./img/<s:property value='food.hinh'/>"
								style="width: 400px; max-height: 400px;" />
						</div>

						<div class="tab-pane" id="pic-2">
							<img src="http://placekitten.com/400/252" />
						</div>
						<div class="tab-pane" id="pic-3">
							<img src="http://placekitten.com/400/252" />
						</div>
						<div class="tab-pane" id="pic-4">
							<img src="http://placekitten.com/400/252" />
						</div>
						<div class="tab-pane" id="pic-5">
							<img src="http://placekitten.com/400/252" />
						</div>
					</div>


				</div>
				<div class="details col-md-6">
					<h3 class="product-title">
						<s:property value="food.ten" />
					</h3>
					<div class="rating">
						<div class="stars">
							<span class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span
								class="fa fa-star checked"></span> <span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
						</div>

					</div>
					<p class="product-description">"Thưởng thức hương vị tuyệt vời
						của snacks - sự hòa quyện hoàn hảo giữa thơm ngon và sự ngon
						miệng! Mua ngay để trải nghiệm niềm vui nhẹ nhàng trong mỗi hạt
						snack."</p>
					<h4 class="price text-danger">
						Giá tiền: <span><s:property value="food.gia" /><small>đ</small></span>
					</h4>

					<p class="vote">
						<strong>91%</strong> người đã mua! <strong>(87 votes)</strong>
					</p>
					<h6 class="sizes">
						Số Lượng: <input type="number" id="soluong" name="soluong" min="1">
					</h6>
					<br>
					<div class="action">
						<s:if test="food.trangthai ==1">
							<a href='ThemGioHangAction?id=<s:property value="id"/>'
								class="btn btn-warning"> <i class="bi bi-bag"></i> Thêm vào
								vỏ hàng
							</a>
						</s:if>
						<s:else>
							<div class="btn btn-outline-danger w-50">Hết hàng</div>
						</s:else>

						<button class="add-to-cart btn btn-default" type="button">
							<i class="bi bi-heart"></i> Yêu thích
						</button>

						<button class="like btn btn-default" type="button">
							<span class="fa fa-heart"></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>

</body>
</html>