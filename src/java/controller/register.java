package controller;

import dao.UserDao;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String fullName = request.getParameter("full_name");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        // ✅ Kiểm tra nhập lại mật khẩu
        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập tên đăng nhập!");
            request.getRequestDispatcher("formdangki.jsp").forward(request, response);
            return;
        }
        if (!password.equals(repassword)) {
            request.setAttribute("error", "Mật khẩu nhập lại không khớp!");
            request.getRequestDispatcher("formdangki.jsp").forward(request, response);
            return;
        }

        // ✅ Tạo đối tượng User
        User user = new User();
        user.setUsername(username);
        user.setFull_name(fullName);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone(phone);
        user.setAddress(address);
        user.setRole("user"); // Mặc định là user

        try {
            UserDao dao = new UserDao();

            boolean success = dao.insertUser(user);
            if (success) {
                // ✅ Đăng ký thành công → chuyển sang đăng nhập
                request.setAttribute("message", "Đăng ký thành công! Mời bạn đăng nhập.");
                request.getRequestDispatcher("formdangnhap.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Đăng ký thất bại. Vui lòng thử lại!");
                request.getRequestDispatcher("formdangki.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "❌ Lỗi kết nối cơ sở dữ liệu hoặc dữ liệu không hợp lệ!");
            request.getRequestDispatcher("formdangki.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet xử lý đăng ký người dùng mới";
    }
}
