<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag display-name="" description="" small-icon="" body-content="scriptless" %>
<%@ attribute name="min" description="" required="true" type="java.lang.Integer" %>
<%@ attribute name="max" description="" required="true" type="java.lang.Integer" %>
<%@ attribute name="var" description="" required="false" %>
<%@ variable variable-class="java.lang.Integer" description="" name-from-attribute="var" alias="x" %>

  <c:forEach begin="${min}" end="${max}" varStatus="stat" >
    <c:set var="x" value="${(max-stat.index) + 1}" />
    <jsp:doBody />
  </c:forEach>    

