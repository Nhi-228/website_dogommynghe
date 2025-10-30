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
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 380px;
            background-color: #fff;
            margin: 100px auto;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #555;
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
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #5563DE;
            outline: none;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #5563DE;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-bottom: 10px;
        }

        .btn:hover {
            background-color: #3949AB;
        }

        .btn-secondary {
            background-color: #999;
        }

        .btn-secondary:hover {
            background-color: #777;
        }

        .note {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }

        .note a {
            color: #5563DE;
            text-decoration: none;
            font-weight: bold;
        }

        .note a:hover {
            text-decoration: underline;
        }

        /* 🔥 Thêm style hiển thị thông báo */
        .message {
            text-align: center;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .error {
            color: #E53935;
        }

        .success {
            color: #43A047;
        }

        /* 🔗 Quên mật khẩu */
        .forgot {
            text-align: right;
            margin-top: -10px;
            margin-bottom: 15px;
        }

        .forgot a {
            font-size: 13px;
            color: #5563DE;
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

        <%-- 🔥 Hiển thị lỗi hoặc thông báo từ servlet login hoặc register --%>
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
