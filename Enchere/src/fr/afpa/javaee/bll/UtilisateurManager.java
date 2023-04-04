package fr.afpa.javaee.bll;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import fr.afpa.javaee.bo.Utilisateur;
import fr.afpa.javaee.dao.DAOFactory;
import fr.afpa.javaee.dao.UtilisateurDAO;

public class UtilisateurManager {
	private UtilisateurDAO utilisateurDAO = DAOFactory.getUtilisateurDAO();
	
	public void addUtilisateur(Utilisateur utilisateur) throws BusinessException{

		try {
			this.utilisateurDAO.addUtilisateur(utilisateur);
		} catch(SQLException e) {
			e.printStackTrace();
			throw new BusinessException("Erreur SQL lors de l'ajout de l'utilisateur a la BDD");
		}
		
	}
	
	//récupération de tout les utilisateurs dans une liste (pseudo / mdp)
	public Utilisateur recupUtilisateur(String pseudo, String motDePasse) throws BusinessException, SQLException{
	
			return this.utilisateurDAO.recupUtilisateur(pseudo, motDePasse);
	
	}

	
	
	
	}

