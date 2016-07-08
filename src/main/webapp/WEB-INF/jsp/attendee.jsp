<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Attendee Page</title>
<style type="text/css">
.error {
	color: #ff0000;
}

.errorBlock {
	color: #000;
	background-color: #ffeeee;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>

</head>
<body>

	<a href="?language=en">
		English
	</a>
	<a href="?language=es">
		Spanish
	</a>	

	<form:form commandName="attendeeInfo">
		<form:errors path="*" cssClass="errorBlock" element="div" />
		<label for="textInput1"><spring:message code="attendee.name"/>: </label>
		<form:input path="name" cssErrorClass="error" />
		<form:errors path="name" cssClass="error" />
		<br>
		<label for="textInput2"><spring:message code="attendee.email.address"/>: </label>
		<form:input path="email" cssErrorClass="error" />
		<form:errors path="email" cssClass="error" />
		<br/>		
		<input type="submit" class="btn" value="Enter attendee" />
	</form:form>
</body>
</html>