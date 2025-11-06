package controller;

import dao.CategoryDao;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteCategory")
public class DeleteCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idStr = request.getParameter("id");
        if (idStr != null) {
            try {
                int categoryId = Integer.parseInt(idStr);
                CategoryDao dao = new CategoryDao();
                dao.deleteCategory(categoryId);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        response.sendRedirect("showCategory.jsp");
    }
}
