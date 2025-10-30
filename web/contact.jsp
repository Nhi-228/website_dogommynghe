<%-- 
    Document   : contact
    Created on : 29 Oct 2025, 10:53:53 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Liên hệ | Mỹ Nghệ Việt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;600;700&display=swap" rel="stylesheet">

</head>
<body>

<%@ include file="includes/header.jsp" %>

<div class="container py-5">
    <h2 class="text-center fw-bold mb-4">Liên hệ với chúng tôi</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form>
                <div class="mb-3">
                    <label class="form-label">Họ và tên</label>
                    <input type="text" class="form-control" placeholder="Nhập họ và tên">
                </div>
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" placeholder="Nhập địa chỉ email">
                </div>
                <div class="mb-3">
                    <label class="form-label">Nội dung</label>
                    <textarea class="form-control" rows="4" placeholder="Nhập lời nhắn của bạn"></textarea>
                </div>
                <button type="submit" class="btn btn-success w-100">Gửi liên hệ</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="includes/footer.jsp" %>

</body>
</html>
