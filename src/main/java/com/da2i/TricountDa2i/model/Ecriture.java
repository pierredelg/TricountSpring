package com.da2i.TricountDa2i.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
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
	@Column(name="id_ecriture")
	private Integer idEcriture;

	@Temporal(TemporalType.DATE)
	private Date date;

	private String libelle;

	private BigDecimal montant;

	private Integer photo;

	//bi-directional many-to-one association to Devise
	@ManyToOne
	@JoinColumn(name="code")
	private Devise devise;

	//bi-directional many-to-one association to Evenement
	@ManyToOne
	@JoinColumn(name="id_evenement")
	private Evenement evenement;

	//bi-directional many-to-one association to Participant
	@ManyToOne
	@JoinColumn(name="id_participants")
	private Participant participant;

	//bi-directional many-to-one association to TypeEcriture
	@ManyToOne
	@JoinColumn(name="id_type_ecriture")
	private TypeEcriture typeEcriture;

	//bi-directional many-to-many association to Participant
	@ManyToMany(mappedBy="ecritures2")
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

	public BigDecimal getMontant() {
		return this.montant;
	}

	public void setMontant(BigDecimal montant) {
		this.montant = montant;
	}

	public Integer getPhoto() {
		return this.photo;
	}

	public void setPhoto(Integer photo) {
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