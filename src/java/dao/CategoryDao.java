package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.category;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    private final Connection conn;

    public CategoryDao() throws Exception {
        this.conn = Connect.getConnection(); // Gọi class Connect của bạn
    }
    


    // ✅ Thêm danh mục mới
    public boolean addCategory(category c) {
        String sql = "INSERT INTO category (category_name, description) VALUES (?, ?)";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, c.getCategoryName());
            ps.setString(2, c.getDescription());
            int rows = ps.executeUpdate();
            return rows > 0; // Trả về true nếu thêm thành công
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
     public List<category> getAllCategories() throws SQLException {
        List<category> list = new ArrayList<>();
        String sql = "SELECT category_id, category_name, description, created_at FROM category";
        try (PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                category c = new category();
                c.setCategoryId(rs.getInt("category_id"));
                c.setCategoryName(rs.getString("category_name"));
                c.setDescription(rs.getString("description"));
                c.setCreatedAt(rs.getTimestamp("created_at"));
                list.add(c);
            }
        }
        return list;
    }
     public boolean deleteCategory(int categoryId) {
    String sql = "DELETE FROM category WHERE category_id = ?";
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setInt(1, categoryId);
        int rows = ps.executeUpdate();
        return rows > 0;
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}
}
