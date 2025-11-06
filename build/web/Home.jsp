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

<!-- Giới thiệu -->
<section class="py-5 text-center">
    <div class="container">
        <h2 class="fw-bold mb-4">Về Mỹ Nghệ Việt</h2>
        <p class="text-muted w-75 mx-auto">
            Chúng tôi tự hào mang đến những sản phẩm thủ công mỹ nghệ tinh xảo, được làm từ bàn tay khéo léo của các nghệ nhân Việt Nam.
        </p>
    </div>
</section>

<!-- Sản phẩm nổi bật -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center fw-bold mb-5">Sản phẩm nổi bật</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card h-100 shadow-sm">
                    <img src="images/gom-su.jpg" class="card-img-top" alt="Lọ gốm">
                    <div class="card-body text-center">
                        <h5 class="card-title">Lọ gốm Bát Tràng</h5>
                        <p class="text-muted">Giá: 350.000đ</p>
                        <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card h-100 shadow-sm">
                    <img src="images/may-tre.jpg" class="card-img-top" alt="Tranh tre đan">
                    <div class="card-body text-center">
                        <h5 class="card-title">Tranh tre đan thủ công</h5>
                        <p class="text-muted">Giá: 450.000đ</p>
                        <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card h-100 shadow-sm">
                    <img src="images/non-la.jpg" class="card-img-top" alt="Nón Lá">
                    <div class="card-body text-center">
                        <h5 class="card-title">Nón Lá</h5>
                        <p class="text-muted">Giá: 280.000đ</p>
                        <a href="#" class="btn btn-outline-success btn-sm">Xem chi tiết</a>
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
                    </div>
                </div>
            </div>
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
        </div>
        </div>
   
</section>

<!-- Liên hệ -->
<section class="py-5 text-center">
    <div class="container">
        <h2 class="fw-bold mb-3">Liên hệ với chúng tôi</h2>
        <p>Hotline: <strong>0988 123 456</strong> | Email: <strong>myngheviet@gmail.com</strong></p>
    </div>
</section>

<%@ include file="includes/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
