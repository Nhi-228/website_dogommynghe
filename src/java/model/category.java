package model;

import java.sql.Timestamp;

public class category {
    private int categoryId;           // Mã danh mục
    private String categoryName;      // Tên danh mục
    private String description;       // Mô tả danh mục
    private Timestamp createdAt;      // Thời gian tạo

    // ✅ Constructor rỗng
    public category() {}

    // ✅ Constructor đầy đủ
    public category(int categoryId, String categoryName, String description, Timestamp createdAt) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.description = description;
        this.createdAt = createdAt;
    }

    // ✅ Getter & Setter
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    // ✅ Tùy chọn: ghi đè toString()
    @Override
    public String toString() {
        return "Category{" +
                "categoryId=" + categoryId +
                ", categoryName='" + categoryName + '\'' +
                ", description='" + description + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
    
}
