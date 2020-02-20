package com.da2i.tricountda2i.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModel;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


/**
 * The persistent class for the evenement database table.
 * 
 */
@Entity
@ApiModel(description ="Informations concernant un événement")
public class Evenement implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "evenement_generator")
	@SequenceGenerator(name="evenement_generator", sequenceName = "evenement_seq", initialValue = 4)
	private Long idEvenement;

	private String description;

	private String titre;

	@OneToMany(mappedBy="evenement")
	@JsonIgnore
	private List<Ecriture> ecritures;

	@ManyToMany
	@JsonIgnore
	@JoinTable(
			name = "participants_evenements",
			joinColumns = @JoinColumn(name = "id_evenement"),
			inverseJoinColumns = @JoinColumn(name = "id_participant")
	)
	private List<Participant> participants;

	public Evenement() {
	}

	public Long getIdEvenement() {
		return this.idEvenement;
	}

	public void setIdEvenement(Long idEvenement) {
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

	public List<Participant> getParticipants() {
		return this.participants;
	}

	public void setParticipants(List<Participant> participants) {
		this.participants = participants;
	}

}