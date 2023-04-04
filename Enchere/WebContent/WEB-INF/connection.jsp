<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-+gfrzC/v63YZ08RvOJ/D0aMeGDmeujE7SML8JZc0WeheM0PyLYzVj4W8vjPvx6fiJBAPgNkme+VW1J8cNnZu2Q=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/stylepage2.css">
    <title>Connexion</title>
</head>

<body>
    <header>
        <a href="./index.jsp">
        <p id="afpa">AFPA-Enchères</p>
        </a>
    </header>
    <main>
        <form action="./Connexion" method="POST">
            <label for="identifiant" id="identifiantTexte">Identifiant:</label>
            <input type="text" id="identifiant" name="pseudo"><br>
            <label for="motdepasse" id="mdpTexte">Mot de passe:</label>
            <input type="password" id="motdepasse" name="motDePasse"><br>
            <button type="submit" id="buttonconnexion">Connexion</button><br>
            <div id="souvenirEtmdpOublie">
                <input type="checkbox" id="souvenir" name="souvenir">
                <label for="souvenir">Se souvenir de moi</label><br>
                <a href="#">Mot de passe oublié</a><br>
            </div>
            <button type="button" onclick="location.href='page3.html'" id="buttoncreercompte">Créer un compte</button>
        </form>
    </main>
    <footer>

    </footer>
</body>

</html>