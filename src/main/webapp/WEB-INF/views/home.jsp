<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<h1>
	Hello world!  
</h1>

<ul>
<iron:reverse max="5" min="1" var="barmi">
 <li>${barmi}. hello</li>
</iron:reverse>
</ul>

barmi = ${barmi}