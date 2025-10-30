/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDao;
import model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            UserDao dao = new UserDao();
            User user = dao.checkLogin(username, password);

            if (user != null) {
                // Lưu thông tin user vào session
                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                // Nếu là admin → chuyển đến trang admin
                if ("admin".equalsIgnoreCase(user.getRole())) {
                    response.sendRedirect("admin/dashboard.jsp");
                } else {
                    // Ngược lại → vào trang chủ
                    response.sendRedirect("index.jsp");
                }

            } else {
                request.setAttribute("error", "Sai tên đăng nhập hoặc mật khẩu!");
                request.getRequestDispatcher("formdangnhap.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Lỗi kết nối cơ sở dữ liệu!");
            request.getRequestDispatcher("formdangnhap.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("formdangnhap.jsp");
    }
}
