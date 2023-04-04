<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mot de passe oublié</title>
</head>
<body>
    <h1>Mot de passe oublié</h1>
    <p>Entrez votre adresse e-mail pour recevoir les instructions de réinitialisation du mot de passe.</p>
    <form action="./MotDePasseOublie" method="POST">
        <label for="email">Adresse e-mail:</label>
        <input type="email" id="email" name="email" required><br>
        <button type="submit">Envoyer</button>
    </form>
</
