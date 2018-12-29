<%--........................................--%>


<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <title>Student List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student List</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body style="background: rgb(155,200,214);">

<div class="pageTitle">
    <h1>Student List</h1>
    <h3>You can add new Student</h3>
    <a href="/insert"><button type="button" class="btn btn-outline-primary">Add New Student</button></a>
</div>

<div class="tableDiv">
    <table class="table table-dark table-hover">
        <thead>
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>E-mail Id</th>
            <th>Fathers Name</th>
            <th>Mothers Name</th>
            <th>Gender</th>
            <th>Cell- No</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listt}" var="std" varStatus="listt">

            <form:form action="">
                <tr>
                    <td>${listt.index+1}</td>
                    <td>${std.name}</td>
                    <td>${std.fatherName}</td>
                    <td>${std.motherName}</td>
                    <td>${std.email}</td>
                    <td>${std.gender}</td>
                    <td>${std.mobile}</td>
                    <td>
                        <a href="/edit?id=${std.id}" class="btnn btn btn-outline-primary">Edit</a>
                    </td>
                    <td>
                        <a href="/delete?id=${std.id}" class="btnn btn btn-outline-danger">Delete</a>
                    </td>
                </tr>
            </form:form>

        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>


