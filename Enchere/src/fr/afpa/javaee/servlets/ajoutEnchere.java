package fr.afpa.javaee.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.afpa.javaee.bll.BusinessException;
import fr.afpa.javaee.bll.EnchereManager;
import fr.afpa.javaee.bo.Enchere;

/**
 * Servlet implementation class ajoutEnchere
 */
@WebServlet("/ajoutEnchere")
public class ajoutEnchere extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EnchereManager enchereManager = new EnchereManager();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/AjoutEnchere.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//Recuperation des parametres
		String nuserFormatString = request.getParameter("nuser");
		String narticleFormatString = request.getParameter("narticle");
		String dateFormatString = request.getParameter("date");
		String montantFormatString = request.getParameter("montant");
		
		//Conversion des parametres
		int nuser = Integer.parseUnsignedInt(nuserFormatString);
		int narticle = Integer.parseInt(narticleFormatString);
		LocalDate date = LocalDate.parse(dateFormatString);
		int montant = Integer.parseInt(montantFormatString);
		
		Enchere enchere = new Enchere(nuser, narticle, date, montant);
		
		try {
			this.enchereManager.addEnchere(enchere);
			response.sendRedirect("./visualiserEnchere");
		} catch(BusinessException e) {
			request.setAttribute("messageErreur", e.getMessage());
			this.doGet(request, response);
		}
	}

}
