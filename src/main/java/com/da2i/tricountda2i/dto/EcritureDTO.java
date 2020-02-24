package com.da2i.tricountda2i.dto;

import com.da2i.tricountda2i.model.Devise;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.model.TypeEcriture;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModel;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


public class EcritureDTO implements Serializable {

	private Integer idEcriture;

	@NotNull
	private Date date;

	@NotNull
	private String libelle;

	@NotNull
	private Double montant;

	@NotNull
	private String devise;

	@NotNull
	private Evenement evenement;

	@NotNull
	private TypeEcriture typeEcriture;

	//Payeur
	@NotNull
	private String participant;

	//Liste des personnes pour qui on paye
	@NotNull
	private List<ParticipantDTO> participants;


	public EcritureDTO() {
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

	public String getDevise() {
		return devise;
	}

	public void setDevise(String devise) {
		this.devise = devise;
	}

	public Evenement getEvenement() {
		return evenement;
	}

	public void setEvenement(Evenement evenement) {
		this.evenement = evenement;
	}

	public String getParticipant() {
		return participant;
	}

	public void setParticipant(String participant) {
		this.participant = participant;
	}

	public TypeEcriture getTypeEcriture() {
		return this.typeEcriture;
	}

	public void setTypeEcriture(TypeEcriture typeEcriture) {
		this.typeEcriture = typeEcriture;
	}

	public List<ParticipantDTO> getParticipants() {
		return this.participants;
	}

	public void setParticipants(List<ParticipantDTO> participants) {
		this.participants = participants;
	}

}