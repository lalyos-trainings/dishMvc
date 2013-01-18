<h2>products</h2>
<ul>
<c:forEach items="${products}" var="product">
	<c:url var="editUrl" value="/product/edit" >
		<c:param name="id" value="${product.id}" />
	</c:url>
	<c:url var="deleteUrl" value="/product/delete" >
		<c:param name="id" value="${product.id}" />
	</c:url>
	
	<li>${product.id} :  ${product.name} [${product.price }] 
	<a href="${editUrl}" class= "btn btn-info btn-mini">
	<i class="icon-pencil icon-white"></i>
	</a>

	<a href="${deleteUrl}" class= "btn btn-danger btn-mini">
	<i class="icon-trash icon-white"></i>
	</a></li>

</c:forEach>
</ul>

