package dao;

import model.product;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
    public List<product> getAllProducts() {
    List<product> list = new ArrayList<>();
    String sql = "SELECT * FROM product";
    try (PreparedStatement ps = conn.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
            product p = new product();
            p.setProductId(rs.getInt("product_id"));
            p.setCategoryId(rs.getInt("category_id"));
            p.setProductName(rs.getString("product_name"));
            p.setDescription(rs.getString("description"));
            p.setPrice(rs.getBigDecimal("price"));
            p.setStock(rs.getInt("stock"));
            p.setImageUrl(rs.getString("image_url"));
            p.setStatus(rs.getString("status"));
            list.add(p);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

}
