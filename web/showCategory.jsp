<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, dao.CategoryDao, model.category" %>
<%
    // Lấy danh sách category
    Connection conn = (Connection) application.getAttribute("conn"); 
    CategoryDao categoryDao = new CategoryDao();
    List<category> categories = categoryDao.getAllCategories();
%>


<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách danh mục</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h3 class="mb-4 text-center text-primary">Danh Sách Danh Mục</h3>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Tên danh mục</th>
                <th>Mô tả</th>
                <th>Ngày tạo</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
        <%
            for (category cat : categories) {
        %>
            <tr>
                <td><%=cat.getCategoryId()%></td>
                <td><%=cat.getCategoryName()%></td>
                <td><%=cat.getDescription()%></td>
                <td><%=cat.getCreatedAt()%></td>
                <td>
                    <a href="deleteCategory?id=<%=cat.getCategoryId()%>" 
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này?');">
                       Xóa
                    </a>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <div class="text-center mt-3">
        <a href="addCategory.jsp" class="btn btn-success">Thêm danh mục mới</a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
