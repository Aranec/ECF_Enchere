package fr.afpa.javaee.bll;

import java.sql.SQLException;
import java.time.LocalDate;

import fr.afpa.javaee.bo.Enchere;
import fr.afpa.javaee.dao.DAOFactory;
import fr.afpa.javaee.dao.EnchereDAO;

public class EnchereManager {
	private EnchereDAO enchereDAO = DAOFactory.getEnchereDAO();
	
	public void addEnchere(Enchere enchere) throws BusinessException{
		
		validation(enchere);
		
		try {
			this.enchereDAO.addEnchere(enchere);
		} catch(SQLException e) {
			e.printStackTrace();
			throw new BusinessException("Erreur SQL lors de l'ajout de l'enchere a la BDD");
		}
		
	}
	
	private void validation(Enchere enchere) throws BusinessException{
		//On valide la date de l'enchere
		if(enchere.getDate().isBefore(LocalDate.now())) {
			throw new BusinessException("l'enchere ne peut etre anterieure a la date d'aujourd'hui");
		}
	}
}
