package controller;

import dao.ProductDao;
import model.product;
import java.io.*;
import java.math.BigDecimal;
import java.nio.file.Paths;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

@WebServlet("/addProductServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 10,      // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)
public class AddProductServlet extends HttpServlet {

    // Đường dẫn upload ảnh trên ổ D
    private static final String UPLOAD_DIR = "D:/Web/DoGomMyNghe/images";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chuyển hướng sang trang addProduct.jsp
        response.sendRedirect(request.getContextPath() + "/addProduct.jsp");
    }

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
            String categoryIdStr = request.getParameter("category_id");
            Integer categoryId = (categoryIdStr != null && !categoryIdStr.isEmpty()) ? Integer.parseInt(categoryIdStr) : null;

            // 2️⃣ Upload ảnh
            Part imagePart = request.getPart("image");
            String imagePath = "images/default.png"; // ảnh mặc định nếu không upload

            if (imagePart != null && imagePart.getSize() > 0) {
                String fileName = System.currentTimeMillis() + "_" +
                        Paths.get(imagePart.getSubmittedFileName()).getFileName().toString()
                        .replaceAll("[^a-zA-Z0-9._-]", "_");

                File uploadDir = new File(UPLOAD_DIR);
                if (!uploadDir.exists()) uploadDir.mkdirs();

                try (InputStream input = imagePart.getInputStream();
                     FileOutputStream output = new FileOutputStream(new File(uploadDir, fileName))) {
                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    while ((bytesRead = input.read(buffer)) != -1) {
                        output.write(buffer, 0, bytesRead);
                    }
                }

                imagePath = "images/" + fileName; // lưu đường dẫn tương đối vào DB
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
                response.sendRedirect(request.getContextPath() + "/listSanPham.jsp?msg=success");
            } else {
                response.sendRedirect(request.getContextPath() + "/addProduct.jsp?msg=fail");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/addProduct.jsp?msg=error");
        }
    }
}
