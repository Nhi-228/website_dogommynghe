<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>

<%
    User user = (User) request.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin cá nhân</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: "Inter", sans-serif;
            background: #f2f4f7;
            margin: 0;
            padding: 40px 0;
        }

        .profile-container {
            width: 450px;
            background: #fff;
            margin: auto;
            border-radius: 14px;
            padding: 28px 35px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(8px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
            color: #2c7be5;
        }

        .info-box {
            margin: 10px 0;
            padding: 10px 14px;
            background: #f8f9fc;
            border-radius: 8px;
            border-left: 4px solid #2c7be5;
        }

        .label {
            font-weight: 600;
            color: #001a49;
        }

        .value {
            margin-left: 5px;
            color: #333;
        }

        .btn {
            display: inline-block;
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            text-align: center;
            text-decoration: none;
            font-size: 15px;
            font-weight: 600;
            border-radius: 8px;
            transition: 0.25s;
        }

        .btn-edit {
            background: #ffb703;
            color: #000;
        }

        .btn-edit:hover {
            background: #ff9800;
        }

        .btn-home {
            background: #e5e5e5;
            color: #111;
        }

        .btn-home:hover {
            background: #d4d4d4;
        }
    </style>
</head>
<body>

<div class="profile-container">
    <h2>Thông Tin Cá Nhân</h2>

    <div class="info-box"><span class="label">Họ và tên:</span> <span class="value"><%= user.getFull_name() %></span></div>
    <div class="info-box"><span class="label">Username:</span> <span class="value"><%= user.getUsername() %></span></div>
    <div class="info-box"><span class="label">Email:</span> <span class="value"><%= user.getEmail() %></span></div>
    <div class="info-box"><span class="label">Số điện thoại:</span> <span class="value"><%= user.getPhone() %></span></div>
    <div class="info-box"><span class="label">Địa chỉ:</span> <span class="value"><%= user.getAddress() %></span></div>
    <div class="info-box"><span class="label">Vai trò:</span> <span class="value"><%= user.getRole() %></span></div>
    <div class="info-box">
        <span class="label">Trạng thái:</span> 
        <span class="value" style="color: <%= user.isActive() ? "green" : "red" %>;">
            <%= user.isActive() ? "Hoạt động" : "Bị khóa" %>
        </span>
    </div>

    <a href="editProfile.jsp" class="btn btn-edit">✏ Chỉnh sửa thông tin</a>
    <a href="index.jsp" class="btn btn-home">⬅ Quay lại trang chủ</a>
</div>

</body>
</html>
