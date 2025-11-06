<%-- 
    Document   : logout
    Created on : Nov 6, 2025, 9:10:26 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
    session.invalidate(); // xóa toàn bộ session
    response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
    </body>
</html>
