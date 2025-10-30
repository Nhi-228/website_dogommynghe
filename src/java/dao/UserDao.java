package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.User;
import java.sql.*;
import  java.util.*;

public class UserDao {
    private final Connection conn;

    public UserDao() throws Exception {
        this.conn = Connect.getConnection(); // Không cần ép kiểu
    }

    public boolean insertUser(User user) {
        String sql = "INSERT INTO users (username, email, password, full_name, phone, address, role, created_at, is_active, verified, blocked) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), 1, 0, 0)";

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getFull_name());
            ps.setString(5, user.getPhone());
            ps.setString(6, user.getAddress());
            ps.setString(7, user.getRole() == null ? "user" : user.getRole());

            int rows = ps.executeUpdate();
            return rows > 0; // true nếu thêm thành công
        } catch (SQLException e) {
            System.out.println("❌ Lỗi khi thêm user: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
    public User checkLogin(String username, String password) {
    String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            User user = new User();
            user.setUser_id(rs.getInt("user_id"));
            user.setUsername(rs.getString("username"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            user.setFull_name(rs.getString("full_name"));
            user.setPhone(rs.getString("phone"));
            user.setAddress(rs.getString("address"));
            user.setRole(rs.getString("role"));
            user.setActive(rs.getBoolean("is_active"));
            return user;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return null;
}
    public boolean updatePassword(String username, String phone, String email, String newPassword) {
    String sql = "UPDATE users SET password = ? WHERE username = ? AND phone = ? AND email = ?";
    try (PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, newPassword);
        ps.setString(2, username);
        ps.setString(3, phone);
        ps.setString(4, email);
        return ps.executeUpdate() > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}

}
