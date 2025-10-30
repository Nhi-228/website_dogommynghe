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
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 380px;
            background-color: #fff;
            margin: 80px auto;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: 500;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #5563DE;
            outline: none;
        }

        input[type="submit"] {
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
        }

        input[type="submit"]:hover {
            background-color: #3949AB;
        }

        .note {
            text-align: center;
            margin-top: 10px;
            color: #777;
            font-size: 14px;
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
    </style>
</head>
<body>
    <div class="container">
        <h2>Đăng ký tài khoản</h2>

        <%-- 🔥 Hiển thị thông báo lỗi/thành công từ servlet --%>
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
