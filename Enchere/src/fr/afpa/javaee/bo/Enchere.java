package fr.afpa.javaee.bo;

import java.time.LocalDate;

public class Enchere {
	private int nuser;
	private int narticle;
	private LocalDate date;
	private int montant;
	
	public int getNuser() {
		return nuser;
	}

	public void setNuser(int nuser) {
		this.nuser = nuser;
	}

	public int getNarticle() {
		return narticle;
	}

	public void setNarticle(int narticle) {
		this.narticle = narticle;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public int getMontant() {
		return montant;
	}

	public void setMontant(int montant) {
		this.montant = montant;
	}

	public Enchere(int nuser, int narticle, LocalDate date, int montant) {
		this.nuser = nuser;
		this.narticle = narticle;
		this.date = date;
		this.montant = montant;
	}
}
