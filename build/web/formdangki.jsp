<%-- 
    Document   : formdangki
    Created on : Oct 29, 2025, 1:53:45 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng ký tài khoản</title>

    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #E8E3D3, #D6EFE8); /* kem – xanh ngọc nhạt */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            background-color: #FAF8F2; /* tông kem nhạt */
            margin: 80px auto;
            padding: 35px 45px;
            border-radius: 18px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.15);
            border-top: 5px solid #A77B5A; /* nâu gỗ nhẹ */
        }

        h2 {
            text-align: center;
            color: #4C7C75; /* xanh ngọc đậm */
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #6B5F51; /* nâu đất nhẹ */
            font-weight: 500;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 15px;
            border: 1px solid #C8C5B9;
            border-radius: 8px;
            font-size: 14px;
            background-color: #FFFDF8;
            transition: 0.3s ease;
        }

        input:focus {
            border-color: #4C7C75;
            box-shadow: 0 0 5px rgba(76, 124, 117, 0.3);
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4C7C75; /* xanh ngọc đậm */
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3E6B65;
        }

        .note {
            text-align: center;
            margin-top: 15px;
            color: #6B5F51;
            font-size: 14px;
        }

        .note a {
            color: #4C7C75;
            text-decoration: none;
            font-weight: bold;
        }

        .note a:hover {
            text-decoration: underline;
        }

        /* Thông báo */
        .message {
            text-align: center;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .error {
            color: #C0392B;
        }

        .success {
            color: #27AE60;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Đăng ký tài khoản</h2>

        <%-- Hiển thị thông báo lỗi/thành công từ servlet --%>
        <%
            String error = (String) request.getAttribute("error");
            String message = (String) request.getAttribute("message");
            if (error != null) {
        %>
            <div class="message error"><%= error %></div>
        <% 
            } else if (message != null) { 
        %>
            <div class="message success"><%= message %></div>
        
         <%} 
        %>

        <form action="register" method="post">
            <label>Tên đăng nhập:</label>
            <input type="text" name="username" required>

            <label>Họ và tên:</label>
            <input type="text" name="full_name" required>

            <label>Nhập mật khẩu:</label>
            <input type="password" name="password" required>

            <label>Nhập lại mật khẩu:</label>
            <input type="password" name="repassword" required>

            <label>Số điện thoại:</label>
            <input type="tel" name="phone" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Địa chỉ:</label>
            <input type="text" name="address" required>

            <input type="submit" value="Đăng ký">
        </form>

        <div class="note">
            Đã có tài khoản? <a href="formdangnhap.jsp">Đăng nhập ngay</a>
        </div>
    </div>
</body>
</html>
