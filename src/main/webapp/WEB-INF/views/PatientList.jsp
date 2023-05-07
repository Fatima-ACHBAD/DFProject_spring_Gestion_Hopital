<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Products List</title>
</head>
<body>
<header>
    <h1>Products List</h1>
</header>
<main>
    <table class="table table-hover" >
        <thead>
        <tr >
            <th >Id</th>
            <th >Nom</th>
            <th >Malade</th>
            <th >Supprimer</th>
            <th >Modifier</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${patientJsp}" var="patient">
            <tr>
                <td>${patient.id}</td>
                <td>${patient.nom}</td>
                <td>${patient.malade}</td>
                <td>
                    <a onclick="return confirm('Are you sure you want to delete this item ? ')" class="btn btn-danger" href="deletePatient?id=${patient.id}">
                        Supprimer
                    </a>
                </td>
                <td>
                    <a class="btn btn-success" href="showPatient?id=${patient.id}">
                        Modifier
                    </a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

</main>
<footer>
    <a href="CreatePatient">Patient Creation</a>
</footer>
</body>
</html>



