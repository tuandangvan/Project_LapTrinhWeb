<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="zay/product" var="product"></c:url>

		<div class="container" align="center">
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="product?id=${pro.id }"><img src="${pro.img }"
					class="rounded-circle img-fluid border"></a>
				<h5 class="text-center mt-3 mb-3">${pro.name }</h5>
				<h6 class="text-center mt-3 mb-3">${pro.categoryName }</h6>
				<h6 class="text-center mt-3 mb-3">Giá ${pro.price }đ</h6>
				<h6 class="text-center mt-3 mb-3">Đã bán ${pro.sold }</h6>
			</div>
		</div>

</body>

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});>
</script>