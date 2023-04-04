<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<section>
	<c:choose>
		<c:when test ="${utilisateurConnecte != null}">
			<!-- formulaire pour la deconnexion -->
			<form action="${pageContext.request.contextPath}/deconnexion" method="post">
				<button>déconnexion</button>
			</form>
			</c:when>
			<c:otherwise>
				Vous n'êtes pas connecté : <a href="${pageContext.request.contextPath}/Connexion">connexion</a>
			</c:otherwise>
		</c:choose>
</section>