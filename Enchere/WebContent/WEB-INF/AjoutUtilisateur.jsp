<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="./ajoutUtilisateur" method="POST">
		<label>pseudo :</label>
		<input type="text" name="pseudo"><br><br>
		<label>nom : </label>
		<input type="text" name="nom"><br><br>
		<label>prenom :</label>
		<input type="text" name="prenom"><br><br>
		<label>email : </label>
		<input type="text" name="email"><br>
		<label>telephone :</label>
		<input type="text" name="telephone"><br><br>
		<label>rue :</label>
		<input type="text" name="rue"><br><br>
		<label>code postal :</label>
		<input type="text" name="codePostal"><br><br>
		<label>ville :</label>
		<input type="text" name="ville"><br><br>
		<label>mot de passe :</label>
		<input type="password" name="motDePasse"><br><br>

		<input type="submit" value="valider">
	</form>
</body>
</html>