package dao;



import java.sql.*;
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ADMIN
 */
public class Connect {
   public static Connection getConnection() {
        Connection conn = null;
        try {
            // Tên database bạn tạo trong phpMyAdmin
            String url = "jdbc:mysql://localhost:3306/thucong_store";
            String username = "root";  // Mặc định của XAMPP là root
            String password = "";      // Mặc định là rỗng

            // Nạp driver và kết nối
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection(url, username, password);
            System.out.println("✅ Kết nối MySQL thành công!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    } 
}
