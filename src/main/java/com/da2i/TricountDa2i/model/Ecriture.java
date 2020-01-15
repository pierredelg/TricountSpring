package com.da2i.TricountDa2i.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the ecriture database table.
 * 
 */
@Entity
@NamedQuery(name="Ecriture.findAll", query="SELECT e FROM Ecriture e")
public class Ecriture implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer idEcriture;

	@Temporal(TemporalType.DATE)
	private Date date;

	private String libelle;

	private Double montant;

	private byte[] photo;

	@ManyToOne
	private Devise devise;

	@ManyToOne
	private Evenement evenement;

	@ManyToOne
	private Participant participant;

	@ManyToOne
	private TypeEcriture typeEcriture;

	@ManyToMany(mappedBy= "ecrituresAPayer")
	private List<Participant> participants;

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

	public byte[] getPhoto() {
		return this.photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
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