<h2>Selected</h2>
 <div class="alert alert-success">
${selectedAddress.id} :  (${selectedAddress.zip }) ${selectedAddress.city } ${selectedAddress.street }
</div>
 
<h2>Addresses</h2>
<ul>
<c:forEach items="${addressList}" var="address">
	<c:url var="editUrl" value="/address/edit" >
		<c:param name="id" value="${address.id}" />
	</c:url>
	<c:url var="deleteUrl" value="/address/delete" >
		<c:param name="id" value="${address.id}" />
	</c:url>
	<c:url var="selectUrl" value="/address/select" >
		<c:param name="id" value="${address.id}" />
	</c:url>
	
	<li>${address.id} :  (${address.zip }) ${address.city } ${address.street } 
	
	<a href="${selectUrl}" class= "btn  btn-success btn-mini">
	<i class="icon-fire icon-white"></i>
	</a>
	
	
	<a href="${editUrl}" class= "btn btn-info btn-mini">
	<i class="icon-pencil icon-white"></i>
	</a>

	<a href="${deleteUrl}" class= "btn btn-danger btn-mini">
	<i class="icon-trash icon-white"></i>
	</a>
	</li>
</c:forEach>
<hr/>

<c:url var="formUrl" value="/address/add" />

<form:form action="${formUrl }" method="post" cssClass="form-horizontal" modelAttribute="address">
<input type="hidden" name="id" value="${address.id }" />
		<iron:input name="street"  />
		<iron:input name="zip" />
		<iron:input name="city" />
	<br/><button type="submit" class="btn btn-primary" name="command" value="add" >Add</button>
</form:form>

</ul>

