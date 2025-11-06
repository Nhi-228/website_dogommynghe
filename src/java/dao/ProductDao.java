package dao;

import model.product;
import java.sql.*;

public class ProductDao {
    private final Connection conn;

    public ProductDao() throws Exception {
        this.conn = Connect.getConnection();
    }

    public boolean insertProduct(product p) {
        String sql = "INSERT INTO product (category_id, product_name, description, price, stock, image_url, status) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            if (p.getCategoryId() != null) {
                ps.setInt(1, p.getCategoryId());
            } else {
                ps.setNull(1, Types.INTEGER);
            }
            ps.setString(2, p.getProductName());
            ps.setString(3, p.getDescription());
            ps.setBigDecimal(4, p.getPrice());
            ps.setInt(5, p.getStock());
            ps.setString(6, p.getImageUrl());
            ps.setString(7, p.getStatus());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
