<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <meta charset="utf-8">
    <title>Products List</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarNavAltMarkup"
                    aria-controls="navbarNavAltMarkup"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                    <a class="nav-link" href="#">Features</a>
                    <a class="nav-link" href="#">Pricing</a>
                    <a class="nav-link disabled"
                    >Disabled</a
                    >
                </div>
            </div>
        </div>
    </nav>
<main>
    <div class=" container mt-2 " >
    <div class="card">
        <div class="card-header">LISTE DES PATIENTS</div>
        <div class="card-body">
            <div>

                <form class="form-inline my-2 my-lg-0" method="get" th:action="@{/user/index}">
                    <input type="text" name="keyword" th:value="${keyword}" placeholder="chercher un patient">
                    <button class="btn btn-outline-info" type="submit">Rechercher</button>
                </form>
            </div>

            <table class="table table-hover" >
        <thead class="table-dark">
        <tr >
            <th >Id</th>
            <th >Nom</th>
            <th >Malade</th>
            <th >Supprimer</th>
            <th >Modifier</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${patientJsp.content}" var="patient">
            <tr >
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

        </div>

    </div>
    </div>
    </div>

</main>
    <footer class="text-center text-white fixed-bottom" style="background-color: #21081a;">
        <div class="container p-4"></div>

        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023 Copyright:
            <a class="text-white" href="createPatient">Patient Creation</a>
        </div>
    </footer>

</body>
</html>



