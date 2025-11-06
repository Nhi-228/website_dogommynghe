<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, dao.ProductDao, model.product, model.User" %>
<%
    // Kiểm tra quyền admin
    User user = (User) session.getAttribute("user");
    if (user == null || !"admin".equalsIgnoreCase(user.getRole())) {
        response.sendRedirect(request.getContextPath() + "/formdangnhap.jsp");
        return;
    }

    ProductDao productDao = new ProductDao();
    List<product> products = productDao.getAllProducts(); // cần viết hàm getAllProducts() trong ProductDao
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Sản Phẩm - Quản Trị</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f5f6fa; }
        .container { margin-top: 40px; }
        table img { max-width: 80px; }
    </style>
</head>
<body>
<div class="container">
    <h3 class="mb-4 text-center text-success">Danh Sách Sản Phẩm</h3>

    <% if(request.getParameter("msg") != null) { %>
        <div class="alert alert-info">
            <%= request.getParameter("msg").equals("success") ? "Thao tác thành công!" : "Thao tác thất bại!" %>
        </div>
    <% } %>

    <div class="mb-3">
        <a href="addProduct.jsp" class="btn btn-primary">Thêm Sản Phẩm Mới</a>
    </div>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Ảnh</th>
                <th>Tên sản phẩm</th>
                <th>Mô tả</th>
                <th>Giá</th>
                <th>Stock</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
        <%
            for(product p : products) {
        %>
            <tr>
                <td><%= p.getProductId() %></td>
                <td><img src="<%= request.getContextPath() + "/" + p.getImageUrl() %>" alt="ảnh sản phẩm"></td>
                <td><%= p.getProductName() %></td>
                <td><%= p.getDescription() %></td>
                <td><%= p.getPrice() %> VNĐ</td>
                <td><%= p.getStock() %></td>
                <td><%= p.getStatus() %></td>
                <td>
                    <a href="editProduct.jsp?id=<%= p.getProductId() %>" class="btn btn-sm btn-warning mb-1">Sửa</a>
                    <a href="deleteProductServlet?id=<%= p.getProductId() %>" class="btn btn-sm btn-danger mb-1"
                       onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này không?');">Xóa</a>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
