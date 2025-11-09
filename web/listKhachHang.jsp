<%-- 
    Document   : listKhachHang
    Created on : 30 Oct 2025, 3:21:18 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng - Mỹ Nghệ Việt</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<div class="wrapper">
    <%@ include file="sidebar.jsp" %>

    <main class="main-content">
        <header class="topbar">
            <h2><i class="fas fa-users"></i> Danh sách khách hàng</h2>
        </header>

        <section class="content">
            <div class="table-actions">
                <a href="themKhachHang.jsp" class="btn-add"><i class="fas fa-user-plus"></i> Thêm khách hàng</a>
            </div>

            <table class="data-table">
                <thead>
                    <tr>
                        <th>Mã KH</th>
                        <th>Họ tên</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Địa chỉ</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>KH001</td>
                        <td>Trần Thị B</td>
                        <td>tranb@example.com</td>
                        <td>0987 654 321</td>
                        <td>456 Lý Thường Kiệt, TP.HCM</td>
                        <td>
                            <a href="xemKhachHang.jsp" class="btn-view"><i class="fas fa-eye"></i></a>
                            <a href="suaKhachHang.jsp" class="btn-edit"><i class="fas fa-edit"></i></a>
                            <a href="#" class="btn-delete" onclick="return confirm('Bạn có chắc muốn xóa khách hàng này không?')"><i class="fas fa-trash"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>KH002</td>
                        <td>Nguyễn Văn C</td>
                        <td>nguyenvanc@example.com</td>
                        <td>0909 888 777</td>
                        <td>123 Hai Bà Trưng, Hà Nội</td>
                        <td>
                            <a href="xemKhachHang.jsp" class="btn-view"><i class="fas fa-eye"></i></a>
                            <a href="suaKhachHang.jsp" class="btn-edit"><i class="fas fa-edit"></i></a>
                            <a href="#" class="btn-delete" onclick="return confirm('Bạn có chắc muốn xóa khách hàng này không?')"><i class="fas fa-trash"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
    </main>
</div>
</body>
</html>
