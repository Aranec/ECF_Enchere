package fr.afpa.javaee.auth;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.afpa.javaee.bll.BusinessException;
import fr.afpa.javaee.bll.UtilisateurManager;
import fr.afpa.javaee.bo.Utilisateur;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UtilisateurManager utilisateurManager = new UtilisateurManager();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/connection.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo = request.getParameter("pseudo");
		String motDePasse = request.getParameter("motDePasse");
		
		try {
			Utilisateur utilisateur = utilisateurManager.recupUtilisateur(pseudo, motDePasse);
			
			if(utilisateur == null) {
				request.setAttribute("erreur", "pseudo ou mot de passe non valide");
				this.doGet(request, response);
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("utilisateurConnecte", utilisateur);

				if(request.getParameter("souvenir") != null) {
					System.out.println("Création des cookies");
					Cookie pseudoCookie = new Cookie("pseudo", pseudo);
					Cookie motDePasseCookie = new Cookie("motDePasse", motDePasse);
					
					response.addCookie(pseudoCookie);
					response.addCookie(motDePasseCookie);
				}
				
				response.sendRedirect("./index.jsp");
			}
		} catch (BusinessException | SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
