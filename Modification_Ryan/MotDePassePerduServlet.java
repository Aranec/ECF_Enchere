package fr.afpa.javaee.servlets;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.afpa.javaee.dao.UtilisateurDAOJdbcImpl;


@WebServlet("/ReinitialiserMDP")
public class MotDePassePerduServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/resetMdp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	UtilisateurDAOJdbcImpl passeWordLost = new UtilisateurDAOJdbcImpl();
        String newPassWord = request.getParameter("MdpPerdu");
        String confirmation = request.getParameter("ConfirmationMdpPerdu");
        String pseudo = request.getParameter("username");
        String mail = request.getParameter("mail");
        if (newPassWord.equals(confirmation)) {
            passeWordLost.updateMDPlost(mail, pseudo, newPassWord);
        }
        request.getRequestDispatcher("./index.jsp").forward(request, response);
    }
}