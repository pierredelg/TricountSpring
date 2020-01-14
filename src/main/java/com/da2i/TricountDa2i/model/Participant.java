package com.da2i.TricountDa2i.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the participant database table.
 * 
 */
@Entity
@NamedQuery(name="Participant.findAll", query="SELECT p FROM Participant p")
public class Participant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_participants")
	private Integer idParticipants;

	private String surnom;

	//bi-directional many-to-one association to Ecriture
	@OneToMany(mappedBy="participant")
	private List<Ecriture> ecritures1;

	//bi-directional many-to-one association to Evenement
	@OneToMany(mappedBy="participant")
	private List<Evenement> evenements1;

	//bi-directional many-to-one association to Utilisateur
	@ManyToOne
	@JoinColumn(name="id_utilisateur")
	private Utilisateur utilisateur;

	//bi-directional many-to-many association to Evenement
	@ManyToMany
	@JoinTable(
		name="participe"
		, joinColumns={
			@JoinColumn(name="id_participants")
			}
		, inverseJoinColumns={
			@JoinColumn(name="id_evenement")
			}
		)
	private List<Evenement> evenements2;

	//bi-directional many-to-many association to Ecriture
	@ManyToMany
	@JoinTable(
		name="payee_pour"
		, joinColumns={
			@JoinColumn(name="id_participants")
			}
		, inverseJoinColumns={
			@JoinColumn(name="id_ecriture")
			}
		)
	private List<Ecriture> ecritures2;

	//bi-directional many-to-one association to Utilisateur
	@OneToMany(mappedBy="participant")
	private List<Utilisateur> utilisateurs;

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

	public List<Ecriture> getEcritures1() {
		return this.ecritures1;
	}

	public void setEcritures1(List<Ecriture> ecritures1) {
		this.ecritures1 = ecritures1;
	}

	public Ecriture addEcritures1(Ecriture ecritures1) {
		getEcritures1().add(ecritures1);
		ecritures1.setParticipant(this);

		return ecritures1;
	}

	public Ecriture removeEcritures1(Ecriture ecritures1) {
		getEcritures1().remove(ecritures1);
		ecritures1.setParticipant(null);

		return ecritures1;
	}

	public List<Evenement> getEvenements1() {
		return this.evenements1;
	}

	public void setEvenements1(List<Evenement> evenements1) {
		this.evenements1 = evenements1;
	}

	public Evenement addEvenements1(Evenement evenements1) {
		getEvenements1().add(evenements1);
		evenements1.setParticipant(this);

		return evenements1;
	}

	public Evenement removeEvenements1(Evenement evenements1) {
		getEvenements1().remove(evenements1);
		evenements1.setParticipant(null);

		return evenements1;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public List<Evenement> getEvenements2() {
		return this.evenements2;
	}

	public void setEvenements2(List<Evenement> evenements2) {
		this.evenements2 = evenements2;
	}

	public List<Ecriture> getEcritures2() {
		return this.ecritures2;
	}

	public void setEcritures2(List<Ecriture> ecritures2) {
		this.ecritures2 = ecritures2;
	}

	public List<Utilisateur> getUtilisateurs() {
		return this.utilisateurs;
	}

	public void setUtilisateurs(List<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}

	public Utilisateur addUtilisateur(Utilisateur utilisateur) {
		getUtilisateurs().add(utilisateur);
		utilisateur.setParticipant(this);

		return utilisateur;
	}

	public Utilisateur removeUtilisateur(Utilisateur utilisateur) {
		getUtilisateurs().remove(utilisateur);
		utilisateur.setParticipant(null);

		return utilisateur;
	}

}