<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-+gfrzC/v63YZ08RvOJ/D0aMeGDmeujE7SML8JZc0WeheM0PyLYzVj4W8vjPvx6fiJBAPgNkme+VW1J8cNnZu2Q=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/stylepage3.css">
    <title>Inscription</title>
</head>

<body>
    <header>
        <a href="./index.jsp">
        <p id="afpa">AFPA-Enchères</p>
        </a>
        <h1>Mon profil</h1>
    </header>
    <main>
        <form method="post">
            <div id="inputlabelpartie1">
                <label for="pseudo" class="labelTextePartie1">Pseudo :</label>
                <input type="text" id="pseudo" name="pseudo" placeholder="Votre pseudo"><br>
                <label for="prenom" class="labelTextePartie1">Prénom :</label>
                <input type="text" id="prenom" name="prenom" placeholder="Votre prénom"><br>
                <label for="telephone" class="labelTextePartie1">Téléphone :</label>
                <input type="tel" id="telephone" name="telephone" placeholder="Numéro de téléphone"><br>
                <label for="code_postal" class="labelTextePartie1">Code postal :</label>
                <input type="text" id="code_postal" name="codePostal" placeholder="Code postal"><br>
                <label for="mot_de_passe" class="labelTextePartie1">Mot de passe :</label>
                <input type="password" id="mot_de_passe" name="motDePasse" placeholder="Mot de passe"><br>
            </div>
            <div id="inputlabelpartie2">
                <label for="nom" class="labelTextePartie2">Nom :</label>
                <input type="text" id="nom" name="nom" placeholder="Votre nom"><br>
                <label for="email" class="labelTextePartie2">Email :</label>
                <input type="email" id="email" name="email" placeholder="Votre email"><br>
                <label for="rue" class="labelTextePartie2">Rue :</label>
                <input type="text" id="rue" name="rue"placeholder="Votre rue"><br>
                <label for="ville" class="labelTextePartie2">Ville :</label>
                <input type="text" id="ville" name="ville" placeholder="Votre ville"><br>
                <label for="confirmation_mot_de_passe" class="labelTextePartie2">Confirmation :</label>
                <input type="password" id="confirmation_mot_de_passe" name="confirmation_mot_de_passe" placeholder="Confirmation du mdp"><br>
                </div>
                <div class="button">
                    <input type="submit" value="Créer" id="creer">
                    <a href="./index.jsp">
                        <button type="button" id="annuler">Annuler</button>
                    </a>
                </div>
            
    </form>
    </main>
</body>

</html>