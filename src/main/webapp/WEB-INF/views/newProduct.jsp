<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:if test="${not empty errorMsg }">
<div class="alert alert-error">
  ${errorMsg }
</div>
</c:if>

<ul>

<h2>new Product</h2>

<c:url var="formUrl" value="/product/add" />

<form:form action="${formUrl }" method="post" cssClass="form-horizontal" modelAttribute="product">


			
		<iron:input name="name" value="${param.name}" />
		<iron:input name="price" value="${param.price}" />

			

	<br/><button type="submit" class="btn btn-primary" name="command" value="add" >Add</button>
</form:form>

<iron:debug map="${requestScope}" title="request"/>