<%-- 
    Document   : formforgetpassword
    Created on : Oct 29, 2025
    Author     : ADMIN
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <style>
        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            background-color: #fff;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        h1 {
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
        input[type="tel"],
        input[type="email"],
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
            margin-top: 5px;
        }

        .btn:hover {
            background-color: #3949AB;
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

        /* Thông báo */
        .message {
            text-align: center;
            font-size: 14px;
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 6px;
        }
        .error {
            background-color: #ffe6e6;
            color: #d8000c;
        }
        .success {
            background-color: #e6ffed;
            color: #007d1b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Quên mật khẩu</h1>

        <%-- ✅ Hiển thị thông báo lỗi hoặc thành công --%>
        <%
            String error = (String) request.getAttribute("error");
            String message = (String) request.getAttribute("message");
            if (error != null) {
        %>
            <div class="message error"><%= error %></div>
        <% } else if (message != null) { %>
            <div class="message success"><%= message %></div>
        <% } %>

        <form action="resetpassword" method="post">
            <label for="username">Tên đăng nhập:</label>
            <input type="text" id="username" name="username" required>

            <label for="phone">Số điện thoại:</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Nhập mật khẩu :</label>
            <input type="password" id="password" name="password" required>

            <label for="repassword">Nhập lại mật khẩu:</label>
            <input type="password" id="repassword" name="repassword" required>

            <button type="submit" class="btn">Cập nhật mật khẩu</button>
        </form>

        <div class="note">
            <a href="formdangnhap.jsp">← Quay lại đăng nhập</a>
        </div>
    </div>
</body>
</html>
