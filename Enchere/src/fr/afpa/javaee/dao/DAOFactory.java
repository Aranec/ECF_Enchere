package fr.afpa.javaee.dao;

public class DAOFactory {
	public static EnchereDAO getEnchereDAO() {
		return new EnchereDAOJdbcImpl();
	}
}
