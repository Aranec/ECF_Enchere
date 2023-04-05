<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/stylemdpperdu.css">
    <title>reinitialiser mdp</title>
</head>
<body>
        <header>
            <a href="./index.jsp">
                <p id="afpa">AFPA-Enchères</p>
                </a>
        </header>
        <form action="lostpassword" method="post" class="formInscriptMDP">
            <div class="Inputlabel1">
                <label for="username" class="labform">Pseudo :</label>
                <input type="text" name="username" id="username">
            </div>
            <div class="Inputlabel2">
                <label for="mail" class="labform">Email :</label>
                <input type="text" name="mail" id="mail">
            </div>
            <div class="Inputlabel3">
                <label for="newpassword" class="labform">Nouveau mot de passe :</label>
                <input type="password" name="MdpPerdu" id="newpassword">
            </div>
            <div class="Inputlabel4">
                <label for="confirm newPW" class="labform">Confirmer le nouveau mot de passe :</label>
                <input type="password" name="ConfirmationMdpPerdu" id="confirm newPW">
            </div class="Inputlabel">
            <input type="submit" value="Reinitialiser le mot de passe" class="button">
        </form>

    </body>

</body>
</html>
