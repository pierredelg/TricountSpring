package com.da2i.tricountda2i.dto;

import com.da2i.tricountda2i.model.Participant;

import java.io.Serializable;
import java.util.List;


public class EvenementDTO implements Serializable {

	private Long idEvenement;

	private String description;

	private String titre;

	private List<Participant> participants;

	public EvenementDTO() {
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

	public List<Participant> getParticipants() {
		return this.participants;
	}

	public void setParticipants(List<Participant> participants) {
		this.participants = participants;
	}

}