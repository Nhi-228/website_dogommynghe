<%-- 
    Document   : index
    Created on : 29 Oct 2025, 9:23:13 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Mỹ Nghệ Việt - Trang chủ</title>
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

<!-- Banner -->
<section class="banner text-center text-white d-flex align-items-center justify-content-center"
         style="background: url('images/banner.jpg') center/cover no-repeat; height: 60vh;">
    <div class="bg-dark bg-opacity-50 p-4 rounded">
        <h1 class="display-4">Tinh Hoa Thủ Công Việt Nam</h1>
        <p class="lead">Khám phá sản phẩm độc đáo, mang đậm bản sắc dân tộc</p>
        <a href="#" class="btn btn-success btn-lg mt-3">Khám phá ngay</a>
        
    </div>
</section>



<!-- Sản phẩm nổi bật -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center fw-bold mb-5">Sản phẩm nổi bật</h2>
        <div class="row g-4">
            <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/gom-su.jpg" class="card-img-top" alt="Gốm sứ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bình gốm Bát Tràng</h5>
                    <p class="text-muted">Giá: 350.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    <a href="cart?action=add&id=1&name=Bình gốm Bát Tràng&price=350.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/non-la.jpg" class="card-img-top" alt="Nón lá">
                <div class="card-body text-center">
                    <h5 class="card-title">Nón lá Huế</h5>
                    <p class="text-muted">Giá: 180.000đ</p>
                       <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    <a href="cart?action=add&id=2&name=Nón lá Huế&price=180.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/may-tre.jpg" class="card-img-top" alt="Mây tre đan">
                <div class="card-body text-center">
                    <h5 class="card-title">Giỏ mây tre đan</h5>
                    <p class="text-muted">Giá: 250.000đ</p>
                       <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    <a href="cart?action=add&id=3&name=Giỏ mây tre đan&price=250.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/tranh-lua.jpg" class="card-img-top" alt="Tranh Lụa">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh Lụa</h5>
                    <p class="text-muted">Giá: 1.200.000đ</p>
                       <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
<a href="cart?action=add&id=4&name=Tranh Lụa&price=1.200.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/03_gomsu.jpg" class="card-img-top" alt="Lọ Hoa Gốm Sứ (Mã Đáo Thành Công)-Họa Tiết Bát Mã Vẽ Vàng ">
                <div class="card-body text-center">
                    <h5 class="card-title">Lọ Hoa Gốm Sứ (Mã Đáo Thành Công)-Họa Tiết Bát Mã Vẽ Vàng </h5>
                    <p class="text-muted">Giá: 350.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    <a href="cart?action=add&id=4&name=Lọ hoa gốm sứ &price=350.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>
<div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/04_gomsu.jpg" class="card-img-top" alt="Bộ 6ly/tách trà gốm sứ hoa văn xanh kèm khay và hộp quà ">
                <div class="card-body text-center">
                    <h5 class="card-title">Bộ 6ly/tách trà gốm sứ hoa văn xanh kèm khay và hộp quà </h5>
                    <p class="text-muted">Giá: 450.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                     <a href="cart?action=add&id=4&name=Bộ 6ly/tách trà gốm sứ hoa văn xanh kèm khay và hộp quà &price=450.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                       
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
                      <a href="cart?action=add&id=4&name=Bộ quà tặng 2 ly gốm sứ men kem chấm bi-Hộp đỏ cao cấp &price=200.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
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
                    <a href="cart?action=add&id=4&name=Đèn ngủ gốm sứ xuyên sáng- Họa tiết hoa  &price=190.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>
            
            
            <div class="col-md-4">
                <div class="card h-100 shadow-sm">
                    <img src="images/01_gomsu.jpg" class="card-img-top" alt="Lọ gốm">
                    <div class="card-body text-center">
                        <h5 class="card-title">Lọ gốm Bát Tràng</h5>
                        <p class="text-muted">Giá: 350.000đ</p>
                        <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                        <a href="cart?action=add&id=4&name=Lọ gốm Bát Tràng  &price=350.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                    </div>
                </div>
            </div>
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/tranh-lua.jpg" class="card-img-top" alt="Tranh Lụa">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh Lụa</h5>
                    <p class="text-muted">Giá: 1.200.000đ</p>
                       <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
        <a href="cart?action=add&id=4&name=Tranh Lụa&price=1.200.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100 shadow-sm">
                <img src="images/31_tranh.jpg" class="card-img-top" alt="Tranh sơn mài Bác Hồ">
                <div class="card-body text-center">
                    <h5 class="card-title">Tranh sơn mài Bác Hồ </h5>
                    <p class="text-muted">Giá: 6.845.000đ</p>
                    <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    <a href="cart?action=add&id=4&name=Tranh sơn mài Bác Hồ  &price=6.845.000" class="btn btn-success btn-sm">🛒 Thêm vào giỏ</a>
                </div>
            </div>
        </div>
    

 
        </div>
        </div>
   
</section>



<%@ include file="includes/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
