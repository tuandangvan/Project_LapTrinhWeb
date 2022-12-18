<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
	<!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="<c:url value="/assets/img/banner_img_01.jpg"/>" alt=""/>
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>Zay</b> eCommerce</h1>
                                <h3 class="h2">Chào mừng bạn đến với trang người bán</h3>
                                <p>
                                    Zay Vendor là một trang web dành cho người bán để họ có thể theo dõi công việc của mình 
                                    Rất vui được hợp tác với bạn <a rel="sponsored" class="text-success" href="https://templatemo.com" target="_blank"></a> . 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="<c:url value="/assets/img/banner_img_02.jpg"/>" alt=""/>
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Giao diện đơn giản</h1>
                                <h3 class="h2">Dễ sử dụng, thao tác trên mọi thiết bị</h3>
                                <p>
                                    Bạn sử dụng trang web để đăng thông tin sản phẩm 
                                    Bạn có thể liên lạc <strong>Admin</strong> để biết thêm thông tin chi tiết.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="<c:url value="/assets/img/banner_img_03.jpg"/>" alt=""/>
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Theo dõi đơn hàng</h1>
                                <h3 class="h2">Quản lý cửa hàng </h3>
                                <p>
                                    Bạn có thể theo dõi cửa hàng, đơn hàng, sản phẩm của mình.
                                    Bạn có thể làm việc ở bất cứ đâu, bán hàng thoải mái.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


	<!-- Start Categories of The Month -->
	<section class="container py-5">
		<div class="row text-center pt-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">Categories of The Month</h1>
				<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa
					qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${pro}" var="pro">
				<div class="col-12 col-md-4 p-5 mt-3">
					<a href="product?id=${pro.id }"><img src="${pro.img }"
						class="rounded-circle img-fluid border"></a>
					<h5 class="text-center mt-3 mb-3">${pro.name }</h5>
					<h5 class="text-center mt-3 mb-3">Đã bán ${pro.sold }</h5>
					<p class="text-center">
						<a class="btn btn-success" href="store?id=${pro.storeId }">Go
							Shop</a>
					</p>
				</div>
			</c:forEach>
		</div>
	</section>

		
		<script type="text/javascript">
			$(document).ready(function() {
				$('#global-modal').modal('show');
			});
		</script>
</body>
</html>

