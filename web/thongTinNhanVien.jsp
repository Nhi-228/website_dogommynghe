<%-- 
    Document   : thongTinNhanVien
    Created on : 30 Oct 2025, 3:03:00 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thông tin nhân viên - Mỹ Nghệ Việt</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="wrapper">
    <%@ include file="sidebar.jsp" %>

    <main class="main-content">
        <header class="topbar">
            <h2><i class="fas fa-id-card"></i> Thông tin nhân viên</h2>
        </header>

        <section class="content">
            
            <div class="info-card">
                <div class="info-avatar">
                    <img src="images/avatar-1.jpg" alt="Ảnh nhân viên">
                </div>
                <div class="info-details">
                    <h3>Nguyễn Thị Bình Nhi</h3>
                    <p><strong>Tên đăng nhập:</strong> binhnhi</p>
                    <p><strong>Email:</strong> binhnhi@gmail.com</p>
                    <p><strong>Số điện thoại:</strong> 098 134 5264</p>
                    <p><strong>Địa chỉ:</strong> Bắc Ninh </p>
                    <p><strong>Vai trò:</strong> Quản lý</p>
                </div>
            </div>
             <div class="info-card">
                <div class="info-avatar">
                    <img src="images/avatar-2.jpg" alt="Ảnh nhân viên">
                </div>
                <div class="info-details">
                    <h3>Nguyễn Thị Anh Thư</h3>
                    <p><strong>Tên đăng nhập:</strong> athu</p>
                    <p><strong>Email:</strong> anhthu@gmail.com</p>
                    <p><strong>Số điện thoại:</strong> 098 134 3333</p>
                    <p><strong>Địa chỉ:</strong> Ninh Bình </p>
                    <p><strong>Vai trò:</strong> Nhân viên dọn dẹp</p>
                </div>
            </div>
                <div class="info-card">
                <div class="info-avatar">
                    <img src="images/avatar-3.jpg" alt="Ảnh nhân viên">
                </div>
                <div class="info-details">
                    <h3>Đàm Thị Xuân Minh</h3>
                    <p><strong>Tên đăng nhập:</strong>XuanMinh</p>
                    <p><strong>Email:</strong> minh1507@gmail.com</p>
                    <p><strong>Số điện thoại:</strong> 098 134 3055</p>
                    <p><strong>Địa chỉ:</strong> Hà Nội </p>
                    <p><strong>Vai trò:</strong> Nhân viên bán hàng</p>
                </div>
            </div>
            <div class="action-buttons">
                <a href="suaNhanVien.jsp" class="btn-edit"><i class="fas fa-edit"></i> Sửa thông tin</a>
                <a href="xoaNhanVien.jsp" class="btn-delete" onclick="return confirm('Bạn có chắc muốn xóa nhân viên này không?')">
                    <i class="fas fa-trash"></i> Xóa nhân viên
                </a>
            </div>
        </section>
    </main>
</div>
</body>
</html>
