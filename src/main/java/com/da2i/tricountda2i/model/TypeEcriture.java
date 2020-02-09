package com.da2i.tricountda2i.model;

import io.swagger.annotations.ApiModel;


/**
 * The enum class for the type_ecriture.
 * 
 */
public enum TypeEcriture {

	DEPENSE("Dépense"),
	RENTREE_ARGENT("Rentrée d'argent"),
	TRANSFERT_ARGENT("Transfert d'argent");

	private String denomination;

	TypeEcriture(String s) {
		this.denomination = s;
	}

	public String getDenomination() {
		return denomination;
	}

	public void setDenomination(String denomination) {
		this.denomination = denomination;
	}
}