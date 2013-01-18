<%@taglib tagdir="/WEB-INF/tags"  prefix="iron"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag display-name="input" description="" small-icon="" body-content="empty" dynamic-attributes="dynamo" %>
<%@ attribute name="name" description="" required="true" type="java.lang.String" %>


<c:set var="filedError" ><form:errors path="${name}" /></c:set>

<div class="control-group ${not empty filedError ? 'error' : '' }">
    <label class="control-label" for="${name}">${name}</label>
    <div class="controls">
      
      <form:input path="${name}" placeholder="${name}"  />      
      
	<c:if test="${not empty filedError}">
      <span class="help-inline">${filedError }</span>
	</c:if>
      
    </div>
  </div>
