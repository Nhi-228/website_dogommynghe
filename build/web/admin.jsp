<%-- 
    Document   : admin
    Created on : 30 Oct 2025, 1:09:55 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Trị - Mỹ Nghệ Việt</title>
   <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/styles.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <%
    model.User user = (model.User) session.getAttribute("user");
    if (user == null || !"admin".equalsIgnoreCase(user.getRole())) {
        response.sendRedirect(request.getContextPath() + "/formdangnhap.jsp");
        return;
    }
%>
<div class="wrapper">
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">
            <h2>Mỹ Nghệ Việt</h2>
        </div>

        <ul class="menu">
           <li><a href="<%= request.getContextPath() %>/index.jsp"><i class="fas fa-home"></i> Trang chủ</a></li>


            <!-- Quản lý sản phẩm -->
            <li class="menu-section">Quản lý sản phẩm</li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"><i class="fas fa-box"></i> Sản phẩm <i class="fas fa-chevron-down arrow"></i></a>
                <ul class="dropdown-content">
                    <li><a href="listSanPham.jsp"><i class="fas fa-list"></i> Danh sách sản phẩm</a></li>
                    <li><a href="addProduct.jsp"><i class="fas fa-plus-circle"></i> Thêm sản phẩm</a></li>
                    <li><a href="addCategory.jsp"><i class="fas fa-tags"></i> Thêm danh mục </a></li>
                     <li><a href="showCategory.jsp"><i class="fas fa-tags"></i> Danh mục</a></li>
                </ul>
            </li>

            <!-- Quản lý khách hàng -->
            <li class="menu-section">Quản lý khách hàng</li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"><i class="fas fa-users"></i> Khách hàng <i class="fas fa-chevron-down arrow"></i></a>
                <ul class="dropdown-content">
                    <li><a href="listKhachHang.jsp"><i class="fas fa-address-book"></i> Danh sách khách hàng</a></li>
                    <li><a href="themKhachHang.jsp"><i class="fas fa-user-plus"></i> Thêm khách hàng</a></li>
                </ul>
            </li>

            <!-- Quản lý nhân viên -->
            <li class="menu-section">Quản lý nhân viên</li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"><i class="fas fa-id-badge"></i> Nhân viên <i class="fas fa-chevron-down arrow"></i></a>
                <ul class="dropdown-content">
                    <li><a href="listNhanVien.jsp"><i class="fas fa-list"></i> Danh sách nhân viên</a></li>
                    <li><a href="themNhanVien.jsp"><i class="fas fa-user-plus"></i> Thêm nhân viên</a></li>
                    <li><a href="thongTinNhanVien.jsp"><i class="fas fa-info-circle"></i> Thông tin nhân viên</a></li>
                </ul>
            </li>

            <!-- Thống kê -->
            <li class="menu-section">Thống kê & báo cáo</li>
<li><a href="thongKe.jsp"><i class="fas fa-chart-bar"></i> Thống kê doanh thu</a></li>
        </ul>

        <!-- Nút đăng xuất -->
        <div class="logout">
            <a href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
        </div>
    </div>

    <!-- Nội dung chính -->
    <main class="main-content">
        <header class="topbar">
            <div class="search-box">
                <input type="text" placeholder="Tìm kiếm...">
                <i class="fa-solid fa-search"></i>
            </div>
            <div class="admin-profile">
                <i class="fa-solid fa-user-circle"></i>
                <span>Admin</span>
            </div>
        </header>

        <section class="dashboard-content">
            <h1>Chào mừng đến trang quản trị Mỹ Nghệ Việt</h1>
            <p>Chọn mục trong thanh bên trái để bắt đầu quản lý hệ thống.</p>

            <div class="stats">
                <div class="card">
                    <i class="fas fa-box"></i>
                    <h3>120</h3>
                    <p>Sản phẩm</p>
                </div>
                <div class="card">
                    <i class="fas fa-users"></i>
                    <h3>85</h3>
                    <p>Khách hàng</p>
                </div>
                <div class="card">
                    <i class="fas fa-id-badge"></i>
                    <h3>10</h3>
                    <p>Nhân viên</p>
                </div>
                <div class="card">
                    <i class="fas fa-coins"></i>
                    <h3>25 triệu</h3>
                    <p>Doanh thu tháng</p>
                </div>
            </div>
        </section>
    </main>
</div>

<script>
    // Dropdown menu toggle
    document.querySelectorAll('.dropdown-toggle').forEach(button => {
        button.addEventListener('click', e => {
            e.preventDefault();
            const parent = button.parentElement;
            parent.classList.toggle('active');
        });
    });
</script>
</body>
</html>