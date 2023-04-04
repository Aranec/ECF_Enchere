package fr.afpa.javaee.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import fr.afpa.javaee.bo.Utilisateur;

public class UtilisateurDAOJdbcImpl implements UtilisateurDAO {
	//Les diff�rentes requetes sur la BDD
	private final static String INSERT_ENCHERE = "insert into utilisateurs(pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	private final static String SQL_CONNECTION = "select * FROM utilisateurs WHERE pseudo = ? AND mot_de_passe = ?";
	@Override
	public void addUtilisateur(Utilisateur utilisateur) throws SQLException {
		Connection cnx = ConnectionProvider.getConnection();
		
		PreparedStatement stmt = cnx.prepareStatement(INSERT_ENCHERE);
		
		stmt.setString(1, utilisateur.getPseudo());
		stmt.setString(2, utilisateur.getNom());
		stmt.setString(3, utilisateur.getPrenom());
		stmt.setString(4, utilisateur.getEmail());
		stmt.setString(5, utilisateur.getTelephone());
		stmt.setString(6, utilisateur.getRue());
		stmt.setString(7, utilisateur.getCodePostal());
		stmt.setString(8, utilisateur.getVille());
		stmt.setString(9, utilisateur.getMotDePasse());
		stmt.setInt(10, utilisateur.getCredit());
		stmt.setBoolean(11, utilisateur.isAdmin());
		
		stmt.executeUpdate();
	}
	
	@Override
	public Utilisateur recupUtilisateur(String pseudo, String motDePasse) throws SQLException{
		
		Connection cnx = ConnectionProvider.getConnection();
		
		PreparedStatement stmt = cnx.prepareStatement(SQL_CONNECTION);
		
		stmt.setString(1, pseudo);
		stmt.setString(2, motDePasse);
		
		ResultSet rs = stmt.executeQuery();
		
		if(rs.next()) {
			int idUtilisateur = rs.getInt("no_utilisateur");
			String pseudoUtilisateur = rs.getString("pseudo");
			String nomUtilisateur = rs.getString("nom");
			String prenomUtilisateur = rs.getString("prenom");
			String emailUtilisateur = rs.getString("email");
			String telephoneUtilisateur = rs.getString("telephone");
			String rueUtilisateur = rs.getString("rue");
			String codePostalUtilisateur = rs.getString("code_postal");
			String villeUtilisateur = rs.getString("ville");
			String motDePasseUtilisateur = rs.getString("mot_de_passe");
			int creditUtilisateur = rs.getInt("credit");
			boolean isAdmin = rs.getBoolean("administrateur");
			
			 Utilisateur utilisateur = new Utilisateur(idUtilisateur, pseudoUtilisateur, nomUtilisateur, 
					 prenomUtilisateur, emailUtilisateur, telephoneUtilisateur, rueUtilisateur, codePostalUtilisateur, 
					 villeUtilisateur, motDePasseUtilisateur, creditUtilisateur, isAdmin);
			 
			 return utilisateur;
		}else {
			return null;
		}
	}
}
