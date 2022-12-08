<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/admin/infoUser/edit" var="edit"></c:url>
	<form role="form" action="${edit }" method="post">
		<input name="user" value="${user.id }" hidden="" name="id">
		<td>"${user.name}"</td>
		<div class="form-group">
			<label>Tên:</label> <input type="text" class="form-control"
				value="${user.name }" name="name" />
		</div>
		<div class="form-group">
			<label>Tên miền:</label> <input type="text" class="form-control"
				value="${user.slug }" name="slug" />
		</div>
		<div class="form-group">
			<label>Email:</label> <input type="text" class="form-control"
				value="${user.email }" name="email" />
		</div>
		<div class="form-group">
			<label>Số điện thoại:</label> <input type="text" class="form-control"
				value="${user.phone }" name="phone" />
		</div>
		<div class="form-group">
			<label>Địa chỉ:</label> <input type="text" class="form-control"
				value="${user.address }" name="address" />
		</div>
		<div class="form-group">
			<label>Avatar:</label> <input type="text" class="form-control"
				value="${user.avatar }" name="avatar" />
		</div>
		<div class="form-group">
			<label>Ngày tạo:</label> <label>${user.createdAt}</label>
		</div>
		
		<button type="submit" class="btn btn-default">Edit</button>
		<button type="reset" class="btn btn-primary">Reset</button>
	</form>
</body>
</html>