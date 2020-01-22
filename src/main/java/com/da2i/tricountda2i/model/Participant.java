package com.da2i.tricountda2i.model;

import io.swagger.annotations.ApiModel;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the participant database table.
 * 
 */
@Entity
@NamedQuery(name="Participant.findAll", query="SELECT p FROM Participant p")
@ApiModel(description ="Informations concernant un participant")
public class Participant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer idParticipants;

	private String surnom;

	//Paye des écritures
	@OneToMany(mappedBy="participant")
	private List<Ecriture> ecrituresPayees;

	//liste des événement créés
	@OneToMany(mappedBy="participant")
	private List<Evenement> evenementsCrees;

	//Liste des participations
	@ManyToMany
	private List<Evenement> evenementsParticipes;

	@OneToOne
	private Utilisateur utilisateur;

	@ManyToMany
	private List<Ecriture> ecrituresAPayer;

	public Participant() {
	}

	public Integer getIdParticipants() {
		return this.idParticipants;
	}

	public void setIdParticipants(Integer idParticipants) {
		this.idParticipants = idParticipants;
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

	public List<Evenement> getEvenementsCrees() {
		return this.evenementsCrees;
	}

	public void setEvenementsCrees(List<Evenement> evenements1) {
		this.evenementsCrees = evenements1;
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