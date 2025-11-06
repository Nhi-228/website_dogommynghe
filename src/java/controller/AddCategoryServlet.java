package controller;

import dao.CategoryDao;
import model.category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addCategory")
public class AddCategoryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String categoryName = request.getParameter("category_name"); // 👈 khớp với form
        String description = request.getParameter("description");

        try {
            category c = new category();
            c.setCategoryName(categoryName);
            c.setDescription(description);

            CategoryDao dao = new CategoryDao();
            boolean success = dao.addCategory(c);

            if (success) {
                response.sendRedirect(request.getContextPath() + "/addCategory.jsp?success=true");
            } else {
                response.sendRedirect(request.getContextPath() + "/addCategory.jsp?error=true");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/addCategory.jsp?error=true");
        }
    }
}
