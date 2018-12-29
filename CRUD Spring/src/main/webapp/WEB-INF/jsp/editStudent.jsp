<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <title>
        Create Form
    </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container" style=""text-align: center">
<h1>Insert Student</h1>

<form:form method="post" modelAttribute="student" action="/edit">
    <form:input path="id" cssStyle="display: none"/>
    <table>
        <tr>
            <td>Name : </td>
            <td><form:input path="name"/></td>
        </tr>

        <tr>
            <td>Fathers Name : </td>
            <td><form:input path="fatherName"/></td>
        </tr>

        <tr>
            <td>Mothers Name : </td>
            <td><form:input path="motherName"/></td>
        </tr>

        <tr>
            <td>E-mail Address : </td>
            <td><form:input path="email"/></td>
        </tr>

        <tr>
            <td>Gender : </td>
            <td>
                <form:select path="gender">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="others">Others</option>
                </form:select>
            </td>
        </tr>

        <tr>
            <td>Cell No : </td>
            <td><form:input path="mobile"/></td>
        </tr>
        <tr>
            <td colspan="5">
                <input type="submit" value="Submite">
            </td>
        </tr>
    </table>
</form:form>
</div>
</body>
</html>