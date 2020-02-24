package com.da2i.tricountda2i.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;


/**
 * The persistent class for the devise database table.
 * 
 */
@Entity
@ApiModel(description ="Informations concernant une devise")
public class Devise implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@NotNull
	@ApiModelProperty(notes = "Le code de la devise")
	private String code;

	@NotNull
	@ApiModelProperty(notes = "Le nom de la devise")
	private String nomDeDevise;

	@NotNull
	@ApiModelProperty(notes = "Le symbole de la devise")
	private String symbole;

	@ApiModelProperty(notes = "La liste des écritures contenant la devise")
	@OneToMany(mappedBy="devise")
	@JsonIgnore
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