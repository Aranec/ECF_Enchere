<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="./ajoutEnchere" method="POST">
		<label>nuser :</label>
		<input type="number" name="nuser"><br><br>
		<label>narticle : </label>
		<input type="number" name="narticle"><br><br>
		<label>date :</label>
		<input type="date" name="date"><br><br>
		<label>montant : </label>
		<input type="number" name="montant"><br>
		
		<input type="submit" value="valider">
	</form>
</body>
</html>