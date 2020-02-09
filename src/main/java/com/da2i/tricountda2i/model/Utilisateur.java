package com.da2i.tricountda2i.model;

import io.swagger.annotations.ApiModel;

import javax.persistence.*;
import java.io.Serializable;


/**
 * The persistent class for the utilisateur database table.
 * 
 */
@Entity
@ApiModel(description ="Informations concernant un utilisateur")
public class Utilisateur implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "utilisateur_generator")
	@SequenceGenerator(name="utilisateur_generator", sequenceName = "utilisateur_seq", initialValue = 6)
	private Integer idUtilisateur;

	private String nom;

	private String email;

	private String motDePasse;

	@OneToOne
	private Participant participant;

	public Utilisateur() {
	}

	public Integer getIdUtilisateur() {
		return this.idUtilisateur;
	}

	public void setIdUtilisateur(Integer idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMotDePasse() {
		return this.motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Participant getParticipant() {
		return this.participant;
	}

	public void setParticipant(Participant participant) {
		this.participant = participant;
	}

}