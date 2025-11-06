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
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            HttpSession session = request.getSession(false);
            
            if (session == null || session.getAttribute("user") == null) {
                response.sendRedirect("formdangnhap.jsp");
                return;
            }
            
            User sessionUser = (User) session.getAttribute("user");
            int userId = sessionUser.getUser_id();
            
            UserDao dao = new UserDao();
            User user = dao.getUserById(userId);
            
            request.setAttribute("user", user);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            request.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession(false);
            
            if (session == null || session.getAttribute("user") == null) {
                response.sendRedirect("formdangnhap.jsp");
                return;
            }
            
            User oldUser = (User) session.getAttribute("user");
            
            String fullName = request.getParameter("full_name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            
            UserDao dao = new UserDao();
            oldUser.setFull_name(fullName);
            oldUser.setEmail(email);
            oldUser.setPhone(phone);
            oldUser.setAddress(address);
            
            dao.updateUser(oldUser);
            
            // cập nhật lại session
            session.setAttribute("user", oldUser);
            
            request.setAttribute("message", "Cập nhật thông tin thành công!");
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
