<%@ page pageEncoding="utf-8"%>
<style>
.navbar-brand {
	padding: 0px 10px;
}
</style>

<%@ include file="../hen/header_template.jsp"%>
<!-- end header -->

<div class="container-fluid">

	<a href="${pageContext.request.contextPath}/import/index.htm"
		class="btn btn-outline-dark mb-4">Quay lại</a>

	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center mt-3">Thông tin phiếu nhập</h3>
			<div class="box-product container">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>STT</th>
							<th>Mã sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá nhập</th>
						</tr>
					</thead>
					<tbody>
					<% int i=1; %>
						<c:forEach var="detail" items="${detail}">
							<tr>
								<td><%=i %></td>
								<td>${detail.hanghoas.id}</td>
								<td>${detail.hanghoas.name}</td>
								<td>${detail.qty}</td>
								<td><f:formatNumber value="${detail.price}" type="number" /></td>
							</tr>
							<%i++; %>
						</c:forEach>
					</tbody>
				</table>
				<c:if test="${imports.status_import == 0}">
					<form action="${pageContext.request.contextPath}/import/confirm/${imports.id}.htm" method="post"
						class="form-submit">
						<button class="btn btn-outline-success text-center float-right">Xác
							nhận</button>
					</form>
				</c:if>
			</div>
		</div>
	</div>
</div>
<!-- end content -->


<!-- 		footer -->
<%@ include file="../hen/footer_template.jsp"%>
<!-- 		end	footer -->

<script type="text/javascript">
		$(document).ready(function() {
			if ('${message}') {
				alert('${message}');
				window.location.replace('https://localhost:8443/Web_BanHang/import/index.htm');
			}
		});
	</script>