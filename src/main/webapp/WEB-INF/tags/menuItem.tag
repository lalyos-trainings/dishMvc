<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag display-name="" description="" small-icon="" %>
<%@ attribute name="url" description="" required="true" type="java.lang.String" %>
<%@ attribute name="label" description="" required="true" type="java.lang.String" %>


<c:url value="${url}"  var="nextUrl" />	              
<li><a href="${nextUrl}"> ${label}</a></li>
