<%-- 
    Document   : themNhanVien
    Created on : 30 Oct 2025, 2:04:20 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm nhân viên - Mỹ Nghệ Việt</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="wrapper">
    <%@ include file="sidebar.jsp" %>

    <main class="main-content">
        <header class="topbar">
            <h2>Thêm nhân viên</h2>
        </header>

        <section class="content">
            <div class="form-container">
                <h3>Thông tin nhân viên</h3>
                <form action="ThemNhanVienServlet" method="post" class="form-nhanvien">
                    <label>Tên đăng nhập:</label>
                    <input type="text" name="username" required>

                    <label>Email:</label>
                    <input type="email" name="email" required>

                    <label>Mật khẩu:</label>
                    <input type="password" name="password" required>

                    <label>Họ và tên:</label>
                    <input type="text" name="fullname" required>

                    <label>Số điện thoại:</label>
                    <input type="text" name="phone">

                    <label>Địa chỉ:</label>
                    <input type="text" name="address">

                    <label>Vai trò:</label>
                    <select name="role">
                        <option>Nhân viên</option>
                        <option>Quản lý</option>
                    </select>

                    <button type="submit" class="btn">Thêm nhân viên</button>
                </form>
            </div>
        </section>
    </main>
</div>
</body>
</html>
