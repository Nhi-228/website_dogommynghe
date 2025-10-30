<%-- 
    Document   : products
    Created on : 29 Oct 2025, 10:51:34 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Sản phẩm | Mỹ Nghệ Việt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .card img {
            transition: transform 0.5s ease;
        }

        .card:hover img {
            transform: scale(1.05);
        }
    </style>
</head>

<body>

<%@ include file="includes/header.jsp" %>

<div class="container py-5">
    <h2 class="text-center fw-bold mb-4">Sản phẩm thủ công mỹ nghệ</h2>
    <div class="row g-4">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/gom-su.jpg" class="card-img-top" alt="Gốm sứ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bình gốm Bát Tràng</h5>
                    <p class="text-muted">Giá: 350.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>

        <!-- Sản phẩm 2 -->
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/non-la.jpg" class="card-img-top" alt="Nón lá">
                <div class="card-body text-center">
                    <h5 class="card-title">Nón lá Huế</h5>
                    <p class="text-muted">Giá: 180.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>

        <!-- Sản phẩm 3 -->
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/may-tre.jpg" class="card-img-top" alt="Mây tre đan">
                <div class="card-body text-center">
                    <h5 class="card-title">Giỏ mây tre đan</h5>
                    <p class="text-muted">Giá: 250.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>

        <!-- Sản phẩm 4 -->
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/tranh-lua.jpg" class="card-img-top" alt="Tranh Lụa">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh Lụa</h5>
                    <p class="text-muted">Giá: 1.200.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
        <!-- Sản Phẩm 5 -->
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/03_gomsu.jpg" class="card-img-top" alt="Lọ Hoa Gốm Sứ (Mã Đáo Thành Công)-Họa Tiết Bát Mã Vẽ Vàng ">
                <div class="card-body text-center">
                    <h5 class="card-title">Lọ Hoa Gốm Sứ (Mã Đáo Thành Công)-Họa Tiết Bát Mã Vẽ Vàng </h5>
                    <p class="text-muted">Giá: 350.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
 <!-- Sản Phẩm 6 -->
            <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/04_gomsu.jpg" class="card-img-top" alt="Bộ 6ly/tách trà gốm sứ hoa văn xanh kèm khay và hộp quà ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bộ 6ly/tách trà gốm sứ hoa văn xanh kèm khay và hộp quà </h5>
                    <p class="text-muted">Giá: 450.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
 <!-- Sản Phẩm 7  -->
  <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/05_gomsu.jpg" class="card-img-top" alt="Bộ quà tặng 2 ly gốm sứ men kem chấm bi-Hộp đỏ cao cấp ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bộ quà tặng 2 ly gốm sứ men kem chấm bi-Hộp đỏ cao cấp</h5>
                    <p class="text-muted">Giá: 200.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
 <!-- Sản Phẩm 8 -->
<div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/06_gomsu.jpg" class="card-img-top" alt="Đèn ngủ gốm sứ xuyên sáng- Họa tiết hoa ">
                <div class="card-body text-center">
                    <h5 class="card-title">Đèn ngủ gốm sứ xuyên sáng- Họa tiết hoa  </h5>
                    <p class="text-muted">Giá: 190.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
 <!-- Sản Phẩm 9 -->
 <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/07_gomsu.jpg" class="card-img-top" alt="Đèn thông tinh dầu gốm sứ Bát Tràng- Họa tiết Quê Hương ">
                <div class="card-body text-center">
                    <h5 class="card-title">Đèn thông tinh dầu gốm sứ Bát Tràng- Họa tiết Quê Hương </h5>
                    <p class="text-muted">Giá: 240.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
  <!-- Sản Phẩm 10 -->
  <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/12_qua.jpg" class="card-img-top" alt="Tranh Thư Pháp ">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh Thư Pháp</h5>
                    <p class="text-muted">Giá: 240.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
   <!-- Sản Phẩm 11 -->
   <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/13_qua.jpg" class="card-img-top" alt="Khăn lụa thêu tay họa tiết đuôi công ">
                <div class="card-body text-center">
                    <h5 class="card-title">Khăn lụa thêu tay họa tiết đuôi công </h5>
                    <p class="text-muted">Giá: 750.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
   <!-- Sản Phẩm 13 -->
   <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/14_qua.jpg" class="card-img-top" alt="Khăn lụa thêu tay họa tiết hồng thỏ nhí ">
                <div class="card-body text-center">
                    <h5 class="card-title">Khăn lụa thêu tay họa tiết hồng thỏ nhí </h5>
                    <p class="text-muted">Giá: 650.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
   <!-- Sản Phẩm 13 -->
   <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/15_qua.jpg" class="card-img-top" alt="Đĩa đồng lưu niệm ">
                <div class="card-body text-center">
                    <h5 class="card-title">Đĩa đồng lưu niệm </h5>
                    <p class="text-muted">Giá: 600.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
    <!-- Sản Phẩm 14 -->
    <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/21_an.jpg" class="card-img-top" alt="Bộ chén dĩa bàn ăn ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bộ chén dĩa bàn ăn</h5>
                    <p class="text-muted">Giá: 800.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
    <!-- Sản Phẩm 15 -->
    <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/22_an.jpg" class="card-img-top" alt="Bộ chén dĩa Bát Tràng vẽ chuồn kim ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bộ chén dĩa Bát Tràng vẽ chuồn kim </h5>
                    <p class="text-muted">Giá: 845.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
     <!-- Sản Phẩm 16 -->
     <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/31_tranh.jpg" class="card-img-top" alt="Tranh sơn mài Bác Hồ">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh sơn mài Bác Hồ </h5>
                    <p class="text-muted">Giá: 6.845.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
    
     <!-- Sản Phẩm 17 -->
     <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/32_tranh.jpg" class="card-img-top" alt="Tranh sơn mài 3D cá mẫu đơn đắp nổi">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh sơn mài 3D cá mẫu đơn đắp nổi </h5>
                    <p class="text-muted">Giá: 1.845.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
      <!-- Sản Phẩm 18 -->
      <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/33_tranh.jpg" class="card-img-top" alt="Tranh đồng quê">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh đồng quê</h5>
                    <p class="text-muted">Giá: 1.870.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
      <!-- Sản Phẩm 19 -->
      <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/34_tranh.jpg" class="card-img-top" alt="Tranh sơn mài 3D mã đáo đắp nổi">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh sơn mài 3D mã đáo đắp nổi</h5>
                    <p class="text-muted">Giá: 2.570.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
        </div>
       <!-- Sản Phẩm 20 -->
       <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/35_tranh.jpg" class="card-img-top" alt="Tranh hoa sen cao cấp ">
                    <h5 class="card-title">Tranh hoa sen cao cấp</h5>
                    <p class="text-muted">Giá:5.000.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                </div>
            </div>
       
        </div>
</div>
    

<%@ include file="includes/footer.jsp" %>

</body>
</html>
