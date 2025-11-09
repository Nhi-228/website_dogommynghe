<%-- 
    Document   : themKhachHang
    Created on : 30 Oct 2025, 3:24:27 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm khách hàng - Mỹ Nghệ Việt</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="wrapper">
    <%@ include file="sidebar.jsp" %>

    <main class="main-content">
        <header class="topbar">
            <h2><i class="fas fa-user-plus"></i> Thêm khách hàng mới</h2>
        </header>

        <section class="content">
            <div class="form-container">
                <h3>Thông tin khách hàng</h3>
                <form action="KhachHangServlet" method="post" class="form-nhanvien">
                    <input type="hidden" name="action" value="add">

                    <label for="maKH">Mã khách hàng:</label>
                    <input type="text" id="maKH" name="maKH" placeholder="VD: KH001" required>

                    <label for="hoTen">Họ tên:</label>
                    <input type="text" id="hoTen" name="hoTen" placeholder="Nhập họ tên khách hàng" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Nhập email" required>

                    <label for="soDienThoai">Số điện thoại:</label>
                    <input type="text" id="soDienThoai" name="soDienThoai" placeholder="Nhập số điện thoại" required>

                    <label for="diaChi">Địa chỉ:</label>
                    <input type="text" id="diaChi" name="diaChi" placeholder="Nhập địa chỉ" required>

                    <button type="submit" class="btn"><i class="fas fa-save"></i> Lưu khách hàng</button>
                </form>
            </div>
        </section>
    </main>
</div>
</body>
</html>
