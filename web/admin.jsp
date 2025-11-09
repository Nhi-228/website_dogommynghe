<%-- 
    Document   : admin
    Created on : 30 Oct 2025, 1:09:55 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Trị - Mỹ Nghệ Việt</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        /* =============================
           NỀN MỜ CHO NỘI DUNG CHÍNH
           ============================= */
       .main-content {
            position: relative;
            z-index: 1;
            background-color: rgba(255, 255, 255, 0.8); /* từ 0.9 -> 0.8 để tối hơn chút */
            overflow: hidden;
        }


        .main-content::before {
            content: "";
            position: absolute;
            inset: 0;
            background: url("images/nen.jpg") no-repeat center center/cover;
            opacity: 0.15;
            filter: blur(3px);
            z-index: -1;
        }

        /* =============================
           BỐ CỤC CHUNG
           ============================= */
        body {
            margin: 0;
            font-family: "Segoe UI", sans-serif;
            background-color: #f4f5f7;
        }

        .wrapper {
            display: flex;
            min-height: 100vh;
        }

        /* =============================
           SIDEBAR
           ============================= */
        .sidebar {
            width: 250px;
            background: #1f2937; /* xám đậm */
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .sidebar .logo {
            text-align: center;
            padding: 20px;
        }

        .sidebar .logo img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
        }

        .sidebar .menu {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .sidebar .menu li {
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .sidebar .menu a {
            display: block;
            color: #fff;
            text-decoration: none;
            padding: 12px 20px;
            transition: 0.3s;
        }

        .sidebar .menu a:hover {
            background: #374151;
        }

        /* =============================
           NÚT ĐĂNG XUẤT
           ============================= */
        .logout {
            text-align: center;
            padding: 20px;
            background: transparent;
        }

        .logout a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            background-color: #555;   /* màu xám nhạt hơn sidebar */
            color: #fff;
            padding: 8px 14px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .logout a:hover {
            background-color: #c0392b; /* đỏ nhấn mạnh */
            transform: scale(1.05);
            box-shadow: 0 0 8px rgba(192, 57, 43, 0.5);
        }

        /* =============================
           KHU VỰC NỘI DUNG
           ============================= */
        .main-content {
            flex: 1;
            padding: 20px 30px;
        }

        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: #fff;
            border-radius: 20px;
            padding: 5px 15px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .search-box input {
            border: none;
            outline: none;
            padding: 5px 10px;
        }

        .admin-profile {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: bold;
        }

        .dashboard-content {
            text-align: center;
            margin-top: 30px;
        }

        .dashboard-content h1 {
            font-size: 28px;
            font-weight: 600;
        }

        .dashboard-content p {
            color: #555;
            margin-bottom: 30px;
        }

        .stats {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 25px 40px;
            text-align: center;
            width: 180px;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.15);
        }

        .card i {
            font-size: 36px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .card h3 {
            font-size: 22px;
            margin: 0;
            font-weight: bold;
        }

        .card p {
            margin: 5px 0 0;
            color: #555;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">
            <h2>Mỹ Nghệ Việt</h2>
        </div>

        <ul class="menu">
            <li><a href="admin.jsp"><i class="fas fa-home"></i> Trang chủ</a></li>

            <li class="menu-section">Quản lý sản phẩm</li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"><i class="fas fa-box"></i> Sản phẩm <i class="fas fa-chevron-down arrow"></i></a>
                <ul class="dropdown-content">
                    <li><a href="listSanPham.jsp"><i class="fas fa-list"></i> Danh sách sản phẩm</a></li>
                    <li><a href="themSanPham.jsp"><i class="fas fa-plus-circle"></i> Thêm sản phẩm</a></li>
                    <li><a href="danhMuc.jsp"><i class="fas fa-tags"></i> Danh mục</a></li>
                </ul>
            </li>

            <li class="menu-section">Quản lý khách hàng</li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"><i class="fas fa-users"></i> Khách hàng <i class="fas fa-chevron-down arrow"></i></a>
                <ul class="dropdown-content">
                    <li><a href="listKhachHang.jsp"><i class="fas fa-address-book"></i> Danh sách khách hàng</a></li>
                    <li><a href="themKhachHang.jsp"><i class="fas fa-user-plus"></i> Thêm khách hàng</a></li>
                </ul>
            </li>

            <li class="menu-section">Quản lý nhân viên</li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle"><i class="fas fa-id-badge"></i> Nhân viên <i class="fas fa-chevron-down arrow"></i></a>
                <ul class="dropdown-content">
                    <li><a href="listNhanVien.jsp"><i class="fas fa-list"></i> Danh sách nhân viên</a></li>
                    <li><a href="themNhanVien.jsp"><i class="fas fa-user-plus"></i> Thêm nhân viên</a></li>
                    <li><a href="thongTinNhanVien.jsp"><i class="fas fa-info-circle"></i> Thông tin nhân viên</a></li>
                </ul>
            </li>

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
