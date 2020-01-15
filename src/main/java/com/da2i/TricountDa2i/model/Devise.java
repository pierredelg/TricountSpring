package com.da2i.TricountDa2i.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the devise database table.
 * 
 */
@Entity
@NamedQuery(name="Devise.findAll", query="SELECT d FROM Devise d")
public class Devise implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String code;

	private String nomDeDevise;

	private String symbole;

	@OneToMany(mappedBy="devise")
	private List<Ecriture> ecritures;

	public Devise() {
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getNomDeDevise() {
		return this.nomDeDevise;
	}

	public void setNomDeDevise(String nomDeDevise) {
		this.nomDeDevise = nomDeDevise;
	}

	public String getSymbole() {
		return this.symbole;
	}

	public void setSymbole(String symbole) {
		this.symbole = symbole;
	}

	public List<Ecriture> getEcritures() {
		return this.ecritures;
	}

	public void setEcritures(List<Ecriture> ecritures) {
		this.ecritures = ecritures;
	}

}