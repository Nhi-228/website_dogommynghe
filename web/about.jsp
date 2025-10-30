<%-- 
    Document   : about
    Created on : 29 Oct 2025, 10:53:37 PM
    Author     : 84334
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Giới thiệu | Mỹ Nghệ Việt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Be Vietnam Pro', sans-serif;
        }
        .intro-section {
            text-align: justify;
            line-height: 1.8;
        }
        .highlight {
            color: #198754;
            font-weight: 600;
        }
        video {
            width: 100%;
            max-width: 500px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

<%@ include file="includes/header.jsp" %>

<div class="container py-5">
    <h2 class="fw-bold text-center mb-5">Về Mỹ Nghệ Việt</h2>

    <div class="row align-items-center">
        <!-- Cột trái: nội dung -->
        <div class="col-md-6 intro-section">
            <p>
                <span class="highlight">Mỹ Nghệ Việt</span> là nơi hội tụ tinh hoa của các làng nghề truyền thống Việt Nam —
                nơi những đôi bàn tay khéo léo và tâm hồn sáng tạo của người thợ được gửi gắm vào từng sản phẩm.
            </p>
            <p>
                Từ những nguyên liệu mộc mạc như <strong>tre, nứa, gốm, gỗ, lụa, mây...</strong>, các nghệ nhân Việt đã tạo nên
                những tác phẩm mang đậm bản sắc dân tộc, vừa có giá trị nghệ thuật, vừa gần gũi trong đời sống thường ngày.
            </p>
            <p>
                Chúng tôi tự hào giới thiệu đến bạn những sản phẩm thủ công tinh xảo — biểu tượng của văn hóa, trí tuệ và tình yêu quê hương đất nước.
                <br><span class="highlight">“Mỹ Nghệ Việt”</span> không chỉ là thương hiệu, mà còn là hành trình gìn giữ và lan tỏa hồn Việt.
            </p>
        </div>

        <!-- Cột phải: video -->
        <div class="col-md-6 text-center">
            <h5 class="fw-bold mb-3">Video làng nghề Việt Nam</h5>
            <video controls muted loop>
                <source src="${pageContext.request.contextPath}/videos/lang-nghe.mp4" type="video/mp4">
                Trình duyệt của bạn không hỗ trợ thẻ video.
            </video>
        </div>
    </div>
</div>

<%@ include file="includes/footer.jsp" %>

</body>
</html>
