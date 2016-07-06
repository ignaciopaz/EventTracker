<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Event Page</title>
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
<form:form commandName="myEventCommand">
	<form:errors path="*" cssClass="errorBlock" element="div"/>
	<label for="textInput1">Enter minutes: </label>
	<form:input path="name" cssErrorClass="error"/>
	<form:errors path="name" cssClass="error" />
	<br>
	<input type="submit" class="btn" value="Enter event"/>

</form:form>

</body>
</html>