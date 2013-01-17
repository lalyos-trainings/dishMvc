<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>products</h2>
<ul>
<c:forEach items="${products}" var="product">
<li>${product.name} [${product.price }]</li>
</c:forEach>
</ul>