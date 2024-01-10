<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container-fluid">
		<a class="navbar-brand ms-5" href="homepage">LOGO</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-center"
			id="navbarSupportedContent">
			<ul class="navbar-nav mb-2 mb-lg-0">
				<li class="nav-item"><a
					class="nav-link active fw-bold text-danger" aria-current="page"
					href="homepage">Trang chủ</a></li>
				<li class="nav-item"><a class="nav-link fw-bold text-success"
					href="blog">Blog</a></li>

				<li class="nav-item"><a class="nav-link fw-bold text-info"
					href="call">Liên hệ</a></li>

			</ul>
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search"
					placeholder="Tìm kiếm" aria-label="Search">
				<button class="btn btn-outline-success" type="submit">
					<i class="bi bi-search"></i>
				</button>
			</form>

		</div>

		<div class="me-5">
			
				 <a href="ThanhToanGioHangAction" class="btn btn-warning">

			<a class="text-decoration-none text-secondary" href="homeKhachAction"><i
				class="bi bi-person-bounding-box"></i> Khách hàng</a> <a href="login"
				class="btn btn-primary">Đăng nhập</a> <a
				href="GioHangAction" class="btn btn-warning"><i
				class="bi bi-bag"></i> <span class="text-danger fw-bold"><s:property
						value="soluongsanpham" /> </span></a>

		</div>
	</div>
</nav>