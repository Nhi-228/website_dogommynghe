<%-- 
    Document   : formdangnhap
    Created on : Oct 29, 2025, 2:03:48 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng nhập hệ thống</title>

    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #D8E2DC, #A3D9C9); /* kem - xanh ngọc */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 380px;
            background-color: #fffaf3;
            margin: 100px auto;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.15);
            border: 1px solid #e0d8c3;
        }

        h2 {
            text-align: center;
            color: #5b4032; /* nâu gỗ */
            margin-bottom: 25px;
            font-weight: 600;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #5b5b5b;
            font-weight: 500;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            background-color: #fffdf8;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input:focus {
            border-color: #8BC6A9; /* xanh ngọc */
            box-shadow: 0 0 5px rgba(139, 198, 169, 0.5);
            outline: none;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #8BC6A9; /* xanh ngọc */
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            margin-bottom: 10px;
        }

        .btn:hover {
            background-color: #7AB697;
            transform: translateY(-2px);
        }

        .btn-secondary {
            background-color: #A97458; /* nâu gỗ nhẹ */
        }

        .btn-secondary:hover {
            background-color: #94624C;
        }

        .note {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #5c5144;
        }

        .note a {
            color: #8BC6A9;
            text-decoration: none;
            font-weight: bold;
        }

        .note a:hover {
            text-decoration: underline;
        }

        /* 🔥 Hiển thị thông báo */
        .message {
            text-align: center;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .error {
            color: #D9534F;
        }

        .success {
            color: #5cb85c;
        }

        /* 🔗 Quên mật khẩu */
        .forgot {
            text-align: right;
            margin-top: -10px;
            margin-bottom: 15px;
        }

        .forgot a {
            font-size: 13px;
            color: #A97458; /* nâu nhạt */
            text-decoration: none;
        }

        .forgot a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Đăng nhập hệ thống</h2>

        <%-- Hiển thị lỗi/thông báo --%>
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
        <% } %>

        <form action="login" method="post">
            <label>Tên đăng nhập:</label>
            <input type="text" name="username" required>

            <label>Mật khẩu:</label>
            <input type="password" name="password" required>

            <div class="forgot">
                <a href="formforgetpassword.jsp">Quên mật khẩu?</a>
            </div>

            <input type="submit" class="btn" value="Đăng nhập">
        </form>

        <div class="note">
            Chưa có tài khoản? <a href="formdangki.jsp">Đăng ký ngay</a>
        </div>
    </div>
</body>
</html>
