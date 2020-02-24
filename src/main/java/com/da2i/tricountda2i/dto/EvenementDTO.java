package com.da2i.tricountda2i.dto;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;


public class EvenementDTO implements Serializable {

	private Long idEvenement;

	@NotNull
	private String description;

	@NotNull
	private String titre;

	@NotNull
	private List<ParticipantDTO> participants;

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

	public List<ParticipantDTO> getParticipants() {
		return this.participants;
	}

	public void setParticipants(List<ParticipantDTO> participants) {
		this.participants = participants;
	}

}