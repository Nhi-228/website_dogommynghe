/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ResetPasswordServlet", urlPatterns = {"/resetpassword"})
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) action = "verify";

        HttpSession session = req.getSession();
        try {
            UserDao userDao = new UserDao();

            // ⭐ Bước 1: Xác thực user
            if ("verify".equals(action)) {
                String username = req.getParameter("username");
                String phone = req.getParameter("phone");
                String email = req.getParameter("email");

                if (username == null || phone == null || email == null ||
                    username.trim().isEmpty() || phone.trim().isEmpty() || email.trim().isEmpty()) {

                    req.setAttribute("error", "Vui lòng nhập đầy đủ Tên đăng nhập, SĐT và Email.");
                    req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
                    return;
                }

                boolean exists = userDao.existsByUsernamePhoneEmail(username.trim(), phone.trim(), email.trim());

                if (exists) {
                    session.setAttribute("resetUsername", username.trim());
                    session.setAttribute("resetPhone", phone.trim());
                    session.setAttribute("resetEmail", email.trim());

                    req.setAttribute("step", "reset");
                    req.setAttribute("message", "Xác thực thành công! Vui lòng nhập mật khẩu mới.");
                } else {
                    req.setAttribute("error", "Không tìm thấy tài khoản với thông tin đã nhập.");
                }

                req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
                return;
            }

            // ⭐ Bước 2: Reset mật khẩu
            if ("reset".equals(action)) {
                String password = req.getParameter("password");
                String repassword = req.getParameter("repassword");

                String username = (String) session.getAttribute("resetUsername");
                String phone = (String) session.getAttribute("resetPhone");
                String email = (String) session.getAttribute("resetEmail");

                if (username == null || phone == null || email == null) {
                    req.setAttribute("error", "Phiên làm việc đã hết hạn. Vui lòng xác thực lại.");
                    req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
                    return;
                }

                if (password == null || repassword == null || password.trim().isEmpty() || repassword.trim().isEmpty()) {
                    req.setAttribute("error", "Vui lòng nhập mật khẩu và nhập lại.");
                    req.setAttribute("step", "reset");
                    req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
                    return;
                }

                if (!password.equals(repassword)) {
                    req.setAttribute("error", "Mật khẩu nhập lại không khớp.");
                    req.setAttribute("step", "reset");
                    req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
                    return;
                }

                boolean updated = userDao.updatePassword(username, phone, email, password);
                if (updated) {
                    session.removeAttribute("resetUsername");
                    session.removeAttribute("resetPhone");
                    session.removeAttribute("resetEmail");

                    String msg = URLEncoder.encode("Cập nhật mật khẩu thành công! Vui lòng đăng nhập.", "UTF-8");
                    resp.sendRedirect("formdangnhap.jsp?message=" + msg);
                } else {
                    req.setAttribute("error", "Cập nhật mật khẩu thất bại, vui lòng thử lại.");
                    req.setAttribute("step", "reset");
                    req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Lỗi hệ thống: " + e.getMessage());
            req.getRequestDispatcher("formforgetpassword.jsp").forward(req, resp);
        }
    }
}