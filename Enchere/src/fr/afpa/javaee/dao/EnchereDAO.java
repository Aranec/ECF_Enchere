package fr.afpa.javaee.dao;

import java.sql.SQLException;

import fr.afpa.javaee.bo.Enchere;

public interface EnchereDAO {
	//interface contenant les method pour les encheres

	public void addEnchere(Enchere enchere) throws SQLException;
}
