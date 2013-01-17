<h2>products</h2>
<ul>
<c:forEach items="${products}" var="product">
<li>${product.id} :  ${product.name} [${product.price }]</li>
</c:forEach>
</ul>

