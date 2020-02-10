package com.da2i.tricountda2i.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModel;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the ecriture database table.
 * 
 */
@Entity
@ApiModel(description ="Informations concernant une écriture")
public class Ecriture implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ecriture_generator")
	@SequenceGenerator(name="ecriture_generator", sequenceName = "ecriture_seq", initialValue = 21)
	private Integer idEcriture;

	@Temporal(TemporalType.DATE)
	private Date date;

	private String libelle;

	private Double montant;

	@ManyToOne
	@JoinColumn(name = "code",nullable = false)
	private Devise devise;

	@ManyToOne
	@JsonIgnoreProperties("ecritures")
	@JoinColumn(name = "id_evenement",nullable = false)
	private Evenement evenement;

	//Payeur
	@ManyToOne
	@JoinColumn(name = "id_Participant",nullable = false)
	private Participant participant;

	//Liste des personnes pour qui on paye
	@ManyToMany(mappedBy = "ecrituresAPayer")
	@JsonIgnore
	private List<Participant> participants;

	@Enumerated(EnumType.STRING)
	private TypeEcriture typeEcriture;

	public Ecriture() {
	}

	public Integer getIdEcriture() {
		return this.idEcriture;
	}

	public void setIdEcriture(Integer idEcriture) {
		this.idEcriture = idEcriture;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getLibelle() {
		return this.libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Double getMontant() {
		return this.montant;
	}

	public void setMontant(Double montant) {
		this.montant = montant;
	}

	public Devise getDevise() {
		return this.devise;
	}

	public void setDevise(Devise devise) {
		this.devise = devise;
	}

	public Evenement getEvenement() {
		return this.evenement;
	}

	public void setEvenement(Evenement evenement) {
		this.evenement = evenement;
	}

	public Participant getParticipant() {
		return this.participant;
	}

	public void setParticipant(Participant participant) {
		this.participant = participant;
	}

	public TypeEcriture getTypeEcriture() {
		return this.typeEcriture;
	}

	public void setTypeEcriture(TypeEcriture typeEcriture) {
		this.typeEcriture = typeEcriture;
	}

	public List<Participant> getParticipants() {
		return this.participants;
	}

	public void setParticipants(List<Participant> participants) {
		this.participants = participants;
	}

}