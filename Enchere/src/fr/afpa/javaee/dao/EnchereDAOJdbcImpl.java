package fr.afpa.javaee.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import fr.afpa.javaee.bo.Enchere;

public class EnchereDAOJdbcImpl implements EnchereDAO {
	//Les différentes requetes sur la BDD
	private final static String INSERT_ENCHERE = "insert into encheres(no_utilisateur, no_article, date_enchere, montant_enchere) values(?, ?, ?, ?);";
	
	@Override
	public void addEnchere(Enchere enchere) throws SQLException {
		Connection cnx = ConnectionProvider.getConnection();
		
		PreparedStatement stmt = cnx.prepareStatement(INSERT_ENCHERE);
		stmt.setInt(1, enchere.getNuser());
		stmt.setInt(2, enchere.getNarticle());
		stmt.setDate(3, Date.valueOf(enchere.getDate()));
		stmt.setInt(4, enchere.getMontant());
		
		stmt.executeUpdate();
	}
	
	
}
