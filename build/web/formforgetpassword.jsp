<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.net.URLDecoder" %>
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
            width: 420px;
            background-color: #fff;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 18px;
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
            margin-bottom: 14px;
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
            margin-top: 12px;
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

        .message {
            text-align: center;
            font-size: 14px;
            margin-bottom: 12px;
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

        .small {
            font-size: 13px;
            color: #666;
        }

    </style>

    <script>
        function validateVerify() {
            const username = document.getElementById("username").value.trim();
            const phone = document.getElementById("phone").value.trim();
            const email = document.getElementById("email").value.trim();
            if (!username || !phone || !email) {
                alert("Vui lòng nhập đầy đủ Tên đăng nhập, SĐT và Email.");
                return false;
            }
            return true;
        }

        function validateReset() {
            const pw = document.getElementById("password").value;
            const repw = document.getElementById("repassword").value;
            if (!pw || !repw) {
                alert("Vui lòng nhập mật khẩu và mật khẩu nhập lại.");
                return false;
            }
            if (pw !== repw) {
                alert("Mật khẩu nhập lại không khớp.");
                return false;
            }
            if (pw.length < 6) {
                alert("Mật khẩu nên có ít nhất 6 ký tự.");
                return false;
            }
            return true;
        }

        function showStepReset() {
            document.getElementById("verifyBox").style.display = "none";
            document.getElementById("resetBox").style.display = "block";
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Quên mật khẩu</h1>

        <%-- Hiển thị message lỗi/thành công (request attribute 'error' hoặc 'message') --%>
        <%
            String error = (String) request.getAttribute("error");
            String message = (String) request.getAttribute("message");
            if (error != null) {
        %>
            <div class="message error"><%= error %></div>
        <% } else if (message != null) { %>
            <div class="message success"><%= message %></div>
        <% } %>

        <%-- Nếu có message query param (từ redirect), hiển thị nó --%>
        <%
            String msgParam = request.getParameter("message");
            if (msgParam != null && !msgParam.trim().isEmpty()) {
                String decoded = URLDecoder.decode(msgParam, "UTF-8");
        %>
            <div class="message success"><%= decoded %></div>
        <% } %>

        <%-- Lấy step: nếu request attribute step == "reset" hoặc session có resetUsername thì hiển thị reset step --%>
        <%
            String step = (String) request.getAttribute("step");
            String sessUsername = (String) session.getAttribute("resetUsername");
            boolean showReset = "reset".equals(step) || sessUsername != null;
        %>

        <%-- BƯỚC 1: Verify (username, phone, email) --%>
        <div id="verifyBox" style="<%= showReset ? "display:none;" : "" %>">
            <form action="resetpassword" method="post" onsubmit="return validateVerify();">
                <input type="hidden" name="action" value="verify">
                <label for="username">Tên đăng nhập:</label>
                <input type="text" id="username" name="username" required autofocus>

                <label for="phone">Số điện thoại:</label>
                <input type="tel" id="phone" name="phone" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <button type="submit" class="btn">Xác thực</button>
            </form>
        </div>

        <%-- BƯỚC 2: Reset mật khẩu (chỉ hiện nếu verify thành công) --%>
        <div id="resetBox" style="<%= showReset ? "" : "display:none;" %>">
            <form action="resetpassword" method="post" onsubmit="return validateReset();">
                <input type="hidden" name="action" value="reset">

                <%-- Lấy username/phone/email từ session để gửi kèm (hoặc servlet sẽ lấy từ session) --%>
                <%
                    String usernameSession = (String) session.getAttribute("resetUsername");
                    String phoneSession = (String) session.getAttribute("resetPhone");
                    String emailSession = (String) session.getAttribute("resetEmail");
                    if (usernameSession != null) {
                %>
                    <div class="small" style="margin-bottom:10px;">
                        Tài khoản: <strong><%= usernameSession %></strong>
                    </div>
                <% } %>

                <label for="password">Nhập mật khẩu mới:</label>
                <input type="password" id="password" name="password" required autocomplete="off">

                <label for="repassword">Nhập lại mật khẩu:</label>
                <input type="password" id="repassword" name="repassword" required autocomplete="off">

                <button type="submit" class="btn">Cập nhật mật khẩu</button>
            </form>
        </div>

        <div class="note">
            <a href="formdangnhap.jsp">← Quay lại đăng nhập</a>
        </div>
    </div>

    <%-- Nếu server trả về step=reset (forward), hiện reset box tự động bằng JS để trải nghiệm mượt hơn --%>
    <%
        if (showReset) {
    %>
    <script>showStepReset();</script>
    <% } %>
</body>
</html>
