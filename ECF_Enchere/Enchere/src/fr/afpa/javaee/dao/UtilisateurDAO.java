package fr.afpa.javaee.dao;

import java.sql.SQLException;

import fr.afpa.javaee.bo.Utilisateur;

public interface UtilisateurDAO {
	//interface contenant les method pour les utilisateurs
	
	public void addUtilisateur(Utilisateur utilisateur) throws SQLException;
	public Utilisateur recupUtilisateur(String pseudo, String motDePasse) throws SQLException;
}
