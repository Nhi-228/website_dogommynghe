package controller;

import dao.ProductDao;
import model.product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.math.BigDecimal;

@WebServlet("/addProductServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        try {
            // 1️⃣ Lấy dữ liệu từ form
            String productName = request.getParameter("product_name");
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));
            int stock = Integer.parseInt(request.getParameter("stock"));
            String status = request.getParameter("status");
            int categoryId = Integer.parseInt(request.getParameter("category_id"));

            // 2️⃣ Upload ảnh
            Part filePart = request.getPart("image");
            String fileName = null;
            String imagePath = null;

            if (filePart != null && filePart.getSize() > 0) {
                fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
                String uploadPath = getServletContext().getRealPath("") + File.separator + "images" + File.separator + "products";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdirs();

                filePart.write(uploadPath + File.separator + fileName);
                imagePath = "images/products/" + fileName;
            } else {
                imagePath = "images/products/default.png"; // ảnh mặc định
            }

            // 3️⃣ Tạo đối tượng Product
            product p = new product();
            p.setCategoryId(categoryId);
            p.setProductName(productName);
            p.setDescription(description);
            p.setPrice(BigDecimal.valueOf(price));
            p.setStock(stock);
            p.setImageUrl(imagePath);
            p.setStatus(status);

            // 4️⃣ Lưu vào DB
            ProductDao dao = new ProductDao();
            boolean success = dao.insertProduct(p);

            if (success) {
                response.sendRedirect("listSanPham.jsp?msg=success");
            } else {
                response.sendRedirect("addProduct.jsp?msg=fail");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("addProduct.jsp?msg=error");
        }
    }
}
