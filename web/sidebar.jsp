<%-- 
    Document   : sidebar
    Created on : 30 Oct 2025, 2:15:08 PM
    Author     : 84334
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="sidebar">
    <div class="logo">
        <img src="images/logo.png" alt="Logo">
        <h2>Mỹ Nghệ Việt</h2>
    </div>

    <ul class="menu">
        <li><a href="admin.jsp"><i class="fas fa-home"></i> Trang chủ</a></li>

        <!-- QUẢN LÝ SẢN PHẨM -->
        <li class="menu-section">Quản lý sản phẩm</li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle"><i class="fas fa-box"></i> Sản phẩm <i class="fas fa-chevron-down arrow"></i></a>
            <ul class="dropdown-content">
                <li><a href="listSanPham.jsp"><i class="fas fa-list"></i> Danh sách sản phẩm</a></li>
                <li><a href="themSanPham.jsp"><i class="fas fa-plus-circle"></i> Thêm sản phẩm</a></li>
                <li><a href="danhMuc.jsp"><i class="fas fa-tags"></i> Danh mục</a></li>
            </ul>
        </li>

        <!-- QUẢN LÝ KHÁCH HÀNG -->
        <li class="menu-section">Quản lý khách hàng</li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle"><i class="fas fa-users"></i> Khách hàng <i class="fas fa-chevron-down arrow"></i></a>
            <ul class="dropdown-content">
                <li><a href="listKhachHang.jsp"><i class="fas fa-address-book"></i> Danh sách khách hàng</a></li>
                <li><a href="themKhachHang.jsp"><i class="fas fa-user-plus"></i> Thêm khách hàng</a></li>
            </ul>
        </li>

        <!-- QUẢN LÝ NHÂN VIÊN -->
        <li class="menu-section">Quản lý nhân viên</li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle"><i class="fas fa-id-badge"></i> Nhân viên <i class="fas fa-chevron-down arrow"></i></a>
            <ul class="dropdown-content">
                <li><a href="listNhanVien.jsp"><i class="fas fa-list"></i> Danh sách nhân viên</a></li>
                <li><a href="themNhanVien.jsp"><i class="fas fa-user-plus"></i> Thêm nhân viên</a></li>
                <li><a href="thongTinNhanVien.jsp"><i class="fas fa-info-circle"></i> Thông tin nhân viên</a></li>
            </ul>
        </li>

        <!-- THỐNG KÊ -->
        <li class="menu-section">Thống kê & báo cáo</li>
        <li><a href="thongKe.jsp"><i class="fas fa-chart-bar"></i> Thống kê doanh thu</a></li>
    </ul>

    <!-- 🔻 MỤC ĐĂNG XUẤT -->
    <div class="logout">
        <a href="logout.jsp"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
    </div>
</div>

<script>
    // Mở/đóng dropdown menu
    document.querySelectorAll('.dropdown-toggle').forEach(button => {
        button.addEventListener('click', e => {
            e.preventDefault();
            const parent = button.parentElement;
            parent.classList.toggle('active');
        });
    });
</script>
