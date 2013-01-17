<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="iron"%>
<h2>products</h2>
<ul>
<c:forEach items="${products}" var="product">
<li>${product.id} :  ${product.name} [${product.price }]</li>
</c:forEach>
</ul>

