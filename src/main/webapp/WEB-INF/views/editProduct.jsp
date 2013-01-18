<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<h2>Edit Product</h2>

<c:url var="formUrl" value="/product/save" />

<form:form action="${formUrl }" method="post" cssClass="form-horizontal" modelAttribute="product">

	<input type="hidden" name="id"  value="${product.id}"/>
			
		<iron:input name="name" />
		<iron:input name="price"  />

			

	<br/><button type="submit" class="btn btn-primary" name="command" value="save" >Save</button>
</form:form>

