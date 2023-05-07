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
    <h1>Patient Creation</h1>
</header>
<main>
    <form action="savePatient" method="post">
        <div>
            <label for="namePatient">Patient Name : </label>
            <input type="text" id="namePatient" name="nom">
        </div>
        <div>
            <label for="dateBirth">Birth : </label>
            <input type="date" id="dateBirth" name="dateNaissance" value="${now}">
        </div>
        <div>
            <label for="sicknessPatient">Sickness : </label>
            <input type="text" id="sicknessPatient" name="malade">
        </div>
        <div>
            <label for="adressPatient">Adress : </label>
            <input type="text" id="adressPatient" name="adresse">
        </div>
        <div>
            <label for="CodePostal">CodePostal : </label>
            <input type="text" id="CodePostal" name="codePostal">
        </div>
        <div>
            <label for="phonePatient">Phone Number : </label>
            <input type="text" id="phonePatient" name="numeroTelephone">
        </div>


        <div>
            <input type="submit" value="Save">
        </div>
    </form>
    ${messageJsp}
</main>
<footer>
    <a href="PatientList">Patients List</a>
</footer>
</body>
</html>

