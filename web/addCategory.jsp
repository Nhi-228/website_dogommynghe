<%-- 
    Document   : addCategory
    Created on : 06 Nov 2025
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
    // Kiểm tra quyền admin
    User user = (User) session.getAttribute("user");
    if (user == null || !"admin".equalsIgnoreCase(user.getRole())) {
        response.sendRedirect(request.getContextPath() + "/formdangnhap.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Danh Mục - Quản Trị</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f6fa;
        }
        .container {
            max-width: 700px;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-top: 40px;
        }
        .btn-back {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 class="mb-4 text-center text-primary">
        <i class="bi bi-tags"></i> Thêm Danh Mục Mới
    </h3>

    <form action="addCategory" method="post">
        <div class="mb-3">
            <label class="form-label">Tên danh mục</label>
            <input type="text" class="form-control" name="category_name" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <textarea class="form-control" name="description" rows="3"></textarea>
        </div>

        <button type="submit" class="btn btn-primary w-100">Thêm danh mục</button>

        <div class="text-center btn-back">
            <a href="admin.jsp" class="btn btn-outline-secondary">← Quay lại trang quản trị</a>
        </div>
    </form>

    <% if (request.getParameter("success") != null) { %>
        <div class="alert alert-success mt-3 text-center">Thêm danh mục thành công!</div>
    <% } else if (request.getParameter("error") != null) { %>
        <div class="alert alert-danger mt-3 text-center">Thêm danh mục thất bại!</div>
    <% } %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
