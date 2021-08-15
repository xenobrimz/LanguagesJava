<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>languages</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="container">
    <h1>EditLanguage</h1>
        <form:form action="/languages/update/${language.id}" method="post" modelAttribute="language">
        <p>
            <form:label path="name">Language name</form:label>
            <form:errors path="name"/>
            <form:input path="name"/>
        </p>
        <p>
            <form:label path="creator">Language creator</form:label>
            <form:errors path="creator"/>
            <form:input path="creator"/>
        </p>
        <p>
            <form:label path="version">Language version</form:label>
            <form:errors path="version"/>
            <form:input path="version"/>
        </p>
     
        <input type="submit" value="Submit"/>
        </form:form>    
</div>
</body>
</html>