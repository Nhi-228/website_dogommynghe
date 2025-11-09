<%-- 
    Document   : listNhanVien
    Created on : 30 Oct 2025, 2:05:11 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, model.NhanVien" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách nhân viên</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: "Poppins", sans-serif;
            background-color: #f6f8fa;
            margin: 0;
        }

        .wrapper {
            display: flex;
            height: 100vh;
        }

        /* Vùng nội dung chính */
        .main-content {
            flex: 1;
            padding: 30px;
            background: #fff;
            overflow-y: auto;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: #fafafa;
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background: #2c3e50;
            color: #fff;
        }

        tr:hover {
            background: #f1f1f1;
        }

        .btn-add {
            display: inline-block;
            padding: 10px 16px;
            background: #27ae60;
            color: #fff;
            border-radius: 6px;
            text-decoration: none;
            margin-bottom: 15px;
        }

        .btn-add:hover {
            background: #219150;
        }

        .status-active {
            color: green;
            font-weight: bold;
        }

        .status-inactive {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <%@ include file="sidebar.jsp" %>

    <div class="main-content">
        <h1>Danh sách nhân viên</h1>
        <a href="themNhanVien.jsp" class="btn-add"><i class="fas fa-user-plus"></i> Thêm nhân viên</a>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên đăng nhập</th>
                    <th>Email</th>
                    <th>Họ và tên</th>
                    <th>Số điện thoại</th>
                    <th>Địa chỉ</th>
                    <th>Vai trò</th>
                    <th>Ngày tạo</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <%
                    // Giả sử bạn có danh sách nhân viên trong request attribute (ví dụ từ Servlet)
                    List<NhanVien> ds = (List<NhanVien>) request.getAttribute("listNhanVien");

                    if (ds != null && !ds.isEmpty()) {
                        for (NhanVien nv : ds) {
                %>
                <tr>
                    <td><%= nv.getId() %></td>
                    <td><%= nv.getUsername() %></td>
                    <td><%= nv.getEmail() %></td>
                    <td><%= nv.getFullname() %></td>
                    <td><%= nv.getPhone() %></td>
                    <td><%= nv.getAddress() %></td>
                    <td><%= nv.getRole() %></td>
                    <td><%= nv.getNgayTao() %></td>
                    <td>
                        <span class="<%= nv.getTrangThai().equals("Hoạt động") ? "status-active" : "status-inactive" %>">
                            <%= nv.getTrangThai() %>
                        </span>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="9" style="text-align:center; color:#888;">Chưa có nhân viên nào.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
