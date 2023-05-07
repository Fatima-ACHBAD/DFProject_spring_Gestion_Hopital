<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Creation</title>
</head>
<body>
<header>
    <h1>Patient Edition</h1>
</header>
<main>
    <form action="updatePatient" method="post">
        <div>
            <label for="namePatient">Patient Name : </label>
            <input type="text" id="namePatient" name="nom" value="${patientJsp.nom}">
        </div>
        <div>
            <label for="dateBirth">Birth : </label>
            <fmt:formatDate pattern="yyyy-MM-dd" value="${patientJsp.dateNaissance}" var="formatDate"
            <input type="date" id="dateBirth" name="dateNaissance" value="${formatDate}>
        </div>
        <div>
            <label for="sicknessPatient">Sickness : </label>
            <input type="text" id="sicknessPatient" name="malade" value="${patientJsp.malade}>
        </div>
        <div>
            <label for="adressPatient">Adress : </label>
            <input type="text" id="adressPatient" name="adresse" value="${patientJsp.adresse}>
        </div>
        <div>
            <label for="CodePostal">CodePostal : </label>
            <input type="text" id="CodePostal" name="codePostal" value="${patientJsp.codePostal}>
        </div>
        <div>
            <label for="phonePatient">Phone Number : </label>
            <input type="text" id="phonePatient" name="numeroTelephone" value="${patientJsp.numeroTelephone}>
        </div>


        <div>
            <input type="submit" value="Save">
        </div>
    </form>
    ${messageJsp}
</main>
<footer>
    <a href="patientsList">Patients List</a>
</footer>
</body>
</html>

