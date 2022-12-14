<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container">
	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3"
		style="margin-left: auto !important;">
		<h2>Danh sách các cửa hàng</h2>
		<table id="example" class="table table-striped table-bordered"
			style="width: 100%">
			<thead>
				<tr>
					<th>ID</th>
					<th>Chủ sỡ hữu</th>
					<th>Tên cửa hàng</th>
					<th>Tên miền</th>
					<th>Địa chỉ</th>
					<th>Ngày tạo</th>
					<th>Ngày cập nhật</th>
					<th>Trạng thái hoạt động</th>
					<th>Chức năng</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${storeList}" var="store">
					<tr>
						<td>${store.id }</td>
						<td>${store.userName }</td>
						<td>${store.name }</td>
						<td>${store.slug }</td>
						<td>${store.address }</td>
						<td>${store.createdAt }</td>
						<td>${store.updatedAt }</td>
						<td>
							<c:if test="${store.status == true }">Đang hoạt động</c:if>
							<c:if test="${store.status == false }">Ngừng hoạt động</c:if>
						</td>
						<td>
							<c:if test="${store.status == false }"><a href="<c:url value='store/edit?id=${store.id }&status=true'/>"
								class="center" style="text-decoration: none">Cập nhật trạng thái</a></c:if>
							<c:if test="${store.status == true }"><a href="<c:url value='store/edit?id=${store.id }&status=false'/>"
								class="center" style="text-decoration: none">Cập nhật trạng thái</a></c:if>
							
						</td>
						
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#example').DataTable();
			});>
		</script>
	</main>
</div>














<!-- 
<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addStore" >Tạo cửa hàng</button>
								
								
<div class="container">
<table id="example" class="table table-striped table-bordered"
	style="width: 100%">
	<thead>
		<tr>
			<th>ID</th>
			<th>User ID</th>
			<th>Tên cửa hàng</th>
			<th>Tên miền</th>
			<th>Địa chỉ</th>
			<th>Ngày tạo</th>
			<th>Ngày cập nhật</th>
			<th>Chức năng</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${storeList}" var="store">	
			<tr>
				<td>${store.id }</td>
				<td>${store.userId }</td>
				<td>${store.name }</td>
				<td>${store.slug }</td>
				<td>${store.address }</td>
				<td>${store.createdAt }</td>
				<td>${store.updatedAt }</td>
				<td><a
					href="<c:url value='/vendor/store/edit?id=${store.id }'/>"
					class="center">Sửa</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
<script type="text/javascript">$(document).ready(function() {
    $('#example').DataTable();
	});></script>
	
<div id="addStore" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="add" method="post">
						<div class="modal-header">
							<h4 class="modal-title">Tạo cửa hàng</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>User ID</label> <input name="userId" type="text"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label>Tên cửa hàng</label> <input name="name" type="text"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label>Tên miền</label> <input name="slug" type="text"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label>Địa chỉ</label>
								<textarea name="address" class="form-control" required></textarea>
							</div>

						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-default" data-dismiss="modal"
								value="Trở lại"> <input type="submit"
								class="btn btn-success" value="Thêm">
						</div>
					</form>
				</div>
			</div>
		</div>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	 -->