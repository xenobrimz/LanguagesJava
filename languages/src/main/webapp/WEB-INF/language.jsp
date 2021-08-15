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
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Name: <c:out value="${language.name}"/></h5>
            <h6 class="card-subtitle mb-2 text-muted">Creator: <c:out value="${language.creator}"/></h6>
            <p class="card-text">Version: <c:out value="${language.version}"/></p>
        </div>
    </div>
    </div>
</body>
</html>