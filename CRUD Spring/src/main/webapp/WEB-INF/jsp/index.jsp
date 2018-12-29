<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
    <head>
        <title>Student List</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div style="padding: 50px; text-align: center">
            <a href="/insert" class="btn btn-outline-primary">Create Account</a><br><br>
            <a href="/studnetList" class="btn btn-outline-danger">Student List</a>
        </div>
    </body>
</html>


<%--<c:forEach items="${list}" var="std" varStatus="listt">--%>
    <%--${listt.index+1}, ${std.name}, ${std.fatherName}, ${std.motherName}, ${std.email}, ${std.gender}, ${std.mobile} <br><br>--%>
<%--</c:forEach>--%>