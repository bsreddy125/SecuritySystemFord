<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div>
	Dear <strong>${user}</strong>, 
	
	Welcome to 
	<sec:authorize access="hasPermission(null,'READ') or hasPermission('#targetDomainObject','DELETE')">
	<p>DBA Page.</p>
	</sec:authorize>
	<a href="<c:url value="/logout" />">Logout</a>
</div>