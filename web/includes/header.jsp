<%-- 
    Document   : header
    Created on : 29 Oct 2025
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Bootstrap CSS & Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<header class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
  <div class="container">
    <!-- Logo -->
    <a class="navbar-brand fw-bold text-success" href="home.jsp">
      <i class="bi bi-flower1 me-1"></i> Mỹ Nghệ Việt
    </a>

    <!-- Nút thu gọn khi ở chế độ mobile -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Menu -->
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto align-items-center">
        <li class="nav-item"><a class="nav-link active" href="Home.jsp">Trang chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="products.jsp">Sản phẩm</a></li>
        <li class="nav-item"><a class="nav-link" href="about.jsp">Giới thiệu</a></li>
        <li class="nav-item"><a class="nav-link" href="contact.jsp">Liên hệ</a></li>

        <% 
           // Kiểm tra trạng thái đăng nhập
           Object user = session.getAttribute("user");
           if (user == null) {
        %>
          <!-- Nếu chưa đăng nhập -->
          <li class="nav-item ms-3">
            <a class="btn btn-outline-success me-2" href="formdangnhap.jsp">
              <i class="bi bi-box-arrow-in-right me-1"></i> Đăng nhập
            </a>
            <a class="btn btn-success" href="formdangki.jsp">
              <i class="bi bi-person-plus me-1"></i> Đăng ký
            </a>
          </li>
        <% 
           } else { 
        %>
          <!-- Nếu đã đăng nhập -->
          <li class="nav-item dropdown ms-3">
            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="bi bi-person-circle fs-5 me-1"></i> Cá nhân
            </a>
            <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="userDropdown">
              <li><a class="dropdown-item" href="profile"><i class="bi bi-info-circle me-2 text-primary"></i>Thông tin cá nhân</a></li>
              <li><a class="dropdown-item" href="changePassword.jsp"><i class="bi bi-shield-lock me-2 text-warning"></i>Đổi mật khẩu</a></li>
              <li><a class="dropdown-item" href="history.jsp"><i class="bi bi-clock-history me-2 text-success"></i>Lịch sử mua hàng</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item text-danger" href="logout.jsp"><i class="bi bi-box-arrow-right me-2"></i>Đăng xuất</a></li>
            </ul>
          </li>

          <!-- Giỏ hàng -->
          <li class="nav-item ms-2">
            <a class="nav-link position-relative" href="cart.jsp" title="Giỏ hàng">
              <i class="bi bi-cart3 fs-5"></i>
              <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                <%= session.getAttribute("cartCount") != null ? session.getAttribute("cartCount") : 0 %>
                <span class="visually-hidden">items in cart</span>
              </span>
            </a>
          </li>
        <% } %>
      </ul>
    </div>
  </div>
</header>

<!-- Bootstrap Bundle (đã bao gồm Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Kích hoạt dropdown thủ công (phòng khi include trong trang JSP khác) -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const dropdownTriggerList = [].slice.call(document.querySelectorAll('.dropdown-toggle'));
    dropdownTriggerList.map(function (el) {
      return new bootstrap.Dropdown(el);
    });
  });
</script>
