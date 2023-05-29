<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Creation</title>
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
    <div layout:fragment="content1" class=" container mt-2 my-lg-2">
        <div class="col-md-6 offset-3">
    <form action="UpdatePatient" method="post">
        <div>
           <!-- <label for="idPatient">Patient Id : </label> <-->
            <input type="hidden"  class="form-control" type="text" id="idPatient" name="nom" value="${patientJsp.id}">
        </div>
        <div>
            <label for="namePatient">Patient Name : </label>
            <input class="form-control" type="text" id="namePatient" name="nom" value="${patientJsp.nom}">
        </div>
        <div>
            <label for="dateBirth">Birth : </label>
            <fmt:formatDate pattern="yyyyy-MM-dd" value="${patientJsp.dateNaissance}" var="formatDate" />
            <input class="form-control" type="date" id="dateBirth" name="dateNaissance" value="${formatDate}">
        </div>
        <div>
            <label for="adressPatient">Adress : </label>
            <input class="form-control" type="text" id="adressPatient" name="adresse" value="${patientJsp.adresse}">
        </div>
        <div>
            <label for="CodePostal">CodePostal : </label>
            <input class="form-control" type="text" id="CodePostal" name="codePostal" value="${patientJsp.codePostal}">
        </div>
        <div>
            <label for="phonePatient">Phone Number : </label>
            <input class="form-control" type="text" id="phonePatient" name="numeroTelephone" value="${patientJsp.numeroTelephone}">
        </div>
        <div>
            <label for="sicknessPatient">Sickness : </label>
            <input  type="checkbox" id="sicknessPatient" name="malade" value="${patientJsp.malade}">
        </div>


        <div>
            <input type="submit" class="btn btn-primary" value="Update">
        </div>
    </form>
        </div>
    </div>
</main>
<footer class="text-center text-white fixed-bottom" style="background-color: #21081a;">
    <div class="container p-4"></div>

    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2023 Copyright:
        <a class="text-white" href="createPatient">Patient Creation</a>
        <a class="text-white" href="patientList">Patient List</a>
    </div>
</footer>


</body>
</html>
