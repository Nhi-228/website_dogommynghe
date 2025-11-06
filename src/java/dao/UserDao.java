package dao;

import java.security.MessageDigest;
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
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] bytes = md.digest(password.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : bytes) sb.append(String.format("%02x", b));
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return password; // fallback nếu lỗi
        }
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

    /**
     * Kiểm tra xem có user với username + phone + email hay không
     * Trả về true nếu tồn tại
     */
    public boolean existsByUsernamePhoneEmail(String username, String phone, String email) {
        String sql = "SELECT user_id FROM users WHERE username = ? AND phone = ? AND email = ?";
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, phone);
            ps.setString(3, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
public User getUserById(int id) {
    String sql = "SELECT * FROM users WHERE user_id = ?";
    try {
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            User user = new User();
            user.setUser_id(rs.getInt("user_id"));
            user.setUsername(rs.getString("username"));
            user.setEmail(rs.getString("email"));
            user.setFull_name(rs.getString("full_name"));
            user.setPhone(rs.getString("phone"));
            user.setAddress(rs.getString("address"));
            user.setRole(rs.getString("role"));
            user.setActive(rs.getBoolean("is_active"));
            user.setCreated_at(rs.getTimestamp("created_at"));
            user.setUpdated_at(rs.getTimestamp("updated_at"));
            user.setVerified(rs.getBoolean("verified"));
            user.setBlocked(rs.getBoolean("blocked"));
            return user;
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return null;
}
public boolean updateUser(User user) {
    String sql = "UPDATE users SET full_name = ?, email = ?, phone = ?, address = ? WHERE user_id = ?";
    try {
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, user.getFull_name());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getPhone());
        ps.setString(4, user.getAddress());
        ps.setInt(5, user.getUser_id());

        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return false;
}

}
