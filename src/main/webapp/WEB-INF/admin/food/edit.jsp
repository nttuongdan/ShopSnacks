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
									<h4 class="card-title">Thêm mới món ăn</h4>
									
									<s:form action="updateFoodAction" method="POST"
										enctype="multipart/form-data" validate="true">
										<input type="hidden" name="id"
											value='<s:property value="food.id"/>' />

										<s:textfield label="Tên món ăn" id="tenmonan" name="tenmonan"
											value="%{food.ten }" />
										<s:textfield id="gia" name="gia" label="Giá"
											value="%{food.gia }" />
		Hình: <img width='80' src='./img/<s:property value="food.hinh"/>' />
										<br />
										<s:file name="hinh" label="Chọn hình"
											accept="image/png, image/jpeg, image/gif"></s:file>
										<s:submit />
									</s:form>

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
