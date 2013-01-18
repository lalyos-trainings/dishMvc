<h2>Search Result</h2>

<ul>
<c:forEach  items="${products }" var="product">
	<li>${product.name } [ ${product.price }]</li>
</c:forEach>
</ul>