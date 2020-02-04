package com.da2i.tricountda2i.model;

import io.swagger.annotations.ApiModel;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the evenement database table.
 * 
 */
@Entity
@NamedQuery(name="Evenement.findAll", query="SELECT e FROM Evenement e")
@ApiModel(description ="Informations concernant un événement")
public class Evenement implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "evenement_generator")
	@SequenceGenerator(name="evenement_generator", sequenceName = "evenement_seq", initialValue = 4)
	private Integer idEvenement;

	private String description;

	private String titre;

	@OneToMany(mappedBy="evenement",targetEntity = Ecriture.class,fetch = FetchType.EAGER)
	private List<Ecriture> ecritures;

	//Créateur
	@ManyToOne
	private Participant participant;

	@ManyToMany(mappedBy= "evenementsParticipes")
	private List<Participant> participants;

	public Evenement() {
	}

	public Integer getIdEvenement() {
		return this.idEvenement;
	}

	public void setIdEvenement(Integer idEvenement) {
		this.idEvenement = idEvenement;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitre() {
		return this.titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public List<Ecriture> getEcritures() {
		return this.ecritures;
	}

	public void setEcritures(List<Ecriture> ecritures) {
		this.ecritures = ecritures;
	}

	public Participant getParticipant() {
		return this.participant;
	}

	public void setParticipant(Participant participant) {
		this.participant = participant;
	}

	public List<Participant> getParticipants() {
		return this.participants;
	}

	public void setParticipants(List<Participant> participants) {
		this.participants = participants;
	}

}