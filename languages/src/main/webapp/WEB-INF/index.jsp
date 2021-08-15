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
    <h1>All Languages</h1>
        <table class="table">
            <thead>
                <tr  class="table-dark">
                    <th>id#</th>
                    <th>Name</th>
                    <th>Creator</th>
                    <th>Version</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${languages}" var="lang">
                <tr class="table-dark">
                    <td><c:out value="${lang.id}"/></td>
                    <td><a href="/languages/${lang.id}"><c:out value="${lang.name}"/></a></td>
                    <td><c:out value="${lang.creator}"/></td>
                    <td><c:out value="${lang.version}"/></td>
                    <td><a href="/languages/${lang.id}/edit">Edit</a>/<a href="/languages/delete/${lang.id}">Delete</a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
</div>
<div class="container">
    <h1>New Language</h1>
        <form:form action="/languages" method="post" modelAttribute="language">
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