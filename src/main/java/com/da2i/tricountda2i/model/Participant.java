package com.da2i.tricountda2i.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModel;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


/**
 * The persistent class for the participant database table.
 * 
 */
@Entity
@ApiModel(description ="Informations concernant un participant")
public class Participant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "participant_generator")
	@SequenceGenerator(name="participant_generator", sequenceName = "participant_seq", initialValue = 6)
	private Integer idParticipant;

	private String surnom;

	//Paye des écritures
	@OneToMany(mappedBy="participant")
	@JsonIgnore
	private List<Ecriture> ecrituresPayees;

	@ManyToMany
	@JsonIgnore
	@JoinTable(
			name = "participants_ecritures",
			joinColumns = @JoinColumn(name = "id_participant"),
			inverseJoinColumns = @JoinColumn(name = "id_ecriture")
	)
	private List<Ecriture> ecrituresAPayer;

	//Liste des participations
	@ManyToMany(mappedBy = "participants")
	@JsonIgnore
	private List<Evenement> evenementsParticipes;

	@OneToOne
	@JsonIgnore
	private Utilisateur utilisateur;

	public Participant() {
	}

	public Integer getIdParticipant() {
		return this.idParticipant;
	}

	public void setIdParticipant(Integer idParticipants) {
		this.idParticipant = idParticipants;
	}

	public String getSurnom() {
		return this.surnom;
	}

	public void setSurnom(String surnom) {
		this.surnom = surnom;
	}

	public List<Ecriture> getEcrituresPayees() {
		return this.ecrituresPayees;
	}

	public void setEcrituresPayees(List<Ecriture> ecritures1) {
		this.ecrituresPayees = ecritures1;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public List<Ecriture> getEcrituresAPayer() {
		return ecrituresAPayer;
	}

	public void setEcrituresAPayer(List<Ecriture> ecritures2) {
		this.ecrituresAPayer = ecritures2;
	}

	public List<Evenement> getEvenementsParticipes() {
		return evenementsParticipes;
	}

	public void setEvenementsParticipes(List<Evenement> evenements2) {
		this.evenementsParticipes = evenements2;
	}
}