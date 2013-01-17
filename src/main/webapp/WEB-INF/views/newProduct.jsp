
<c:if test="${not empty errorMsg }">
<div class="alert alert-error">
  ${errorMsg }
</div>

</c:if>

<h2>new Product</h2>

<c:url var="formUrl" value="/product/add" />
<form action="${formUrl }" method="post" class="form-horizontal">
		<iron:input name="name" value="${param.name}" />
		<iron:input name="price" value="${param.price}" />
	<br/><button type="submit" class="btn btn-primary" name="command" value="add" >Add</button>
</form>
