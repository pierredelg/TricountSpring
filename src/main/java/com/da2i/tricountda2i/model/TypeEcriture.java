package com.da2i.tricountda2i.model;

import io.swagger.annotations.ApiModel;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the type_ecriture database table.
 * 
 */
@Entity
@NamedQuery(name="TypeEcriture.findAll", query="SELECT t FROM TypeEcriture t")
@ApiModel(description ="Informations concernant un type d'écriture")
public class TypeEcriture implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "type_ecriture_generator")
	@SequenceGenerator(name="type_ecriture_generator", sequenceName = "type_ecriture_seq", initialValue = 4)
	private Integer idTypeEcriture;

	private String nomDuType;

	@OneToMany(mappedBy="typeEcriture",targetEntity = Ecriture.class)
	private List<Ecriture> ecritures;

	public TypeEcriture() {
	}

	public Integer getIdTypeEcriture() {
		return this.idTypeEcriture;
	}

	public void setIdTypeEcriture(Integer idTypeEcriture) {
		this.idTypeEcriture = idTypeEcriture;
	}

	public String getNomDuType() {
		return this.nomDuType;
	}

	public void setNomDuType(String nomDuType) {
		this.nomDuType = nomDuType;
	}

	public List<Ecriture> getEcritures() {
		return this.ecritures;
	}

	public void setEcritures(List<Ecriture> ecritures) {
		this.ecritures = ecritures;
	}

}