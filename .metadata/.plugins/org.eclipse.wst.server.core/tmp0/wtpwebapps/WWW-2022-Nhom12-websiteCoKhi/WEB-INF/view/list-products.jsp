<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>products list</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/grid.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/base.css">

</head>
<body>
	<h3>Products list</h3>
	<hr />

	<div class="grid wide">
		<div class="row">
			<div class="col l-12">
				<a href="#" class="btn btn--add">Thêm sản phẩm</a>
			</div>
		
			<div class="col l-12">
				<table class="styled-table">
					<thead>
						<tr>
							<th>#</th>
							<th>Tên</th>
							<th>Nội dung</th>
							<th>Tồn kho</th>
							<th>Giá</th>
							<th>Nhà sản xuất</th>
							<th>Loại sản phẩm</th>
							<th>Hình ảnh</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<% int id = 1;%>
						<c:forEach var="tempProduct" items="${products }">
							<tr>
								<td><%=id++%></td>
								<td>${tempProduct.name }</td>
								<td>${tempProduct.productContent }</td>
								<td>${tempProduct.inventoryNumber }</td>
								<td>${tempProduct.price }</td>
								<td>${tempProduct.manufacture }</td>
								<td>${tempProduct.category.categoryName }</td>
								<td><img
									src="${pageContext.request.contextPath }/resources/img/location.png" alt="" style="background: #333;" />
								</td>
								<td>
									<a href="#">Delete</a>|| <a href="#">Update</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>