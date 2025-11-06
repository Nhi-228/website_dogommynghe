<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, dao.CategoryDao, model.category, model.User" %>
<%
    // Kiểm tra quyền admin
    User user = (User) session.getAttribute("user");
    if (user == null || !"admin".equalsIgnoreCase(user.getRole())) {
        response.sendRedirect(request.getContextPath() + "/formdangnhap.jsp");
        return;
    }

    // Lấy danh sách danh mục từ DB
    CategoryDao categoryDao = new CategoryDao();
    List<category> categories = categoryDao.getAllCategories();
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Sản Phẩm - Quản Trị</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f5f6fa; }
        .container { max-width: 700px; background: #fff; padding: 30px; border-radius: 10px; box-shadow:0 2px 10px rgba(0,0,0,0.1); margin-top:40px; }
        .btn-back { margin-top: 20px; }
    </style>
</head>
<body>
<div class="container">
    <h3 class="mb-4 text-center text-success">Thêm Sản Phẩm Mới</h3>

    <%-- Hiển thị thông báo lỗi/success --%>
    <%
        String msg = request.getParameter("msg");
        if ("error".equals(msg)) {
    %>
        <div class="alert alert-danger">Có lỗi xảy ra, vui lòng thử lại.</div>
    <%
        } else if ("fail".equals(msg)) {
    %>
        <div class="alert alert-warning">Thêm sản phẩm không thành công.</div>
    <%
        } else if ("success".equals(msg)) {
    %>
        <div class="alert alert-success">Thêm sản phẩm thành công!</div>
    <%
        }
    %>

    <form action="<%=request.getContextPath()%>/addProductServlet" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" name="product_name" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Danh mục</label>
            <select class="form-select" name="category_id" required>
                <option value="">-- Chọn danh mục --</option>
                <% for (category c : categories) { %>
                    <option value="<%=c.getCategoryId()%>"><%=c.getCategoryName()%></option>
                <% } %>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Mô tả</label>
            <textarea class="form-control" name="description" rows="3"></textarea>
        </div>

        <div class="mb-3">
            <label class="form-label">Giá (VNĐ)</label>
            <input type="number" class="form-control" name="price" step="0.01" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Số lượng</label>
            <input type="number" class="form-control" name="stock" value="0">
        </div>

        <div class="mb-3">
            <label class="form-label">Ảnh sản phẩm</label>
            <input type="file" class="form-control" name="image" accept="image/*">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng thái</label>
            <select class="form-select" name="status">
                <option value="active">Hoạt động</option>
                <option value="inactive">Ngừng kinh doanh</option>
            </select>
        </div>

        <button type="submit" class="btn btn-success w-100">Thêm sản phẩm</button>
        <div class="text-center btn-back">
            <a href="admin.jsp" class="btn btn-outline-secondary">← Quay lại trang quản trị</a>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
