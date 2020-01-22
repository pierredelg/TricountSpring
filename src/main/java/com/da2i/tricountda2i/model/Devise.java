package com.da2i.tricountda2i.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the devise database table.
 * 
 */
@Entity
@NamedQuery(name="Devise.findAll", query="SELECT d FROM Devise d")
@ApiModel(description ="Informations concernant une devise")
public class Devise implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@ApiModelProperty(notes = "Le code de la devise")
	private String code;

	@ApiModelProperty(notes = "Le nom de la devise")
	private String nomDeDevise;

	@ApiModelProperty(notes = "Le symbole de la devise")
	private String symbole;

	@OneToMany(mappedBy="devise")
	@ApiModelProperty(notes = "La liste des écritures contenant la devise")
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