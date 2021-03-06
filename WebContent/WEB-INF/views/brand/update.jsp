<%@ page pageEncoding="utf-8"%>
<style>
</style>
<%@ include file="../hen/header_template.jsp"%>
<div class="container-fluid">

	<a href="${pageContext.request.contextPath}/admin/brand/index.htm"
		class="btn btn-outline-dark mb-4">Back</a>

	<div class="row">
		<div class="col-lg-12">
			<h3 class=" text-center">Chỉnh sửa danh mục hàng hóa</h3>

			<p class="errors">${message}</p>
			<form:form action="${pageContext.request.contextPath}/admin/brand/update.htm" method="post"
				modelAttribute="loaihang" enctype="multipart/form-data">
				<div class="form-group">
					<label>Mã danh mục</label>
					<form:input readonly="true" path="id" class="form-control" />
				</div>
				<div class="form-group">
					<label>Tên danh mục</label>
					<form:input path="name" type="text" class="form-control" />
					<form:errors class="errors" path="name" />
				</div>
				<div class="form-group">
					<label>Hình ảnh</label>
					<form:input readonly="true" path="images" type="text"
						class="form-control" />
					<br> <input type="file" name="photo">
					<p class="errors">${message_image}</p>
				</div>
				<button class="btn btn-outline-success">Cập Nhật</button>
				
			</form:form>
		</div>
	</div>
</div>
<!--    end content -->

<%@ include file="../hen/footer_template.jsp"%>