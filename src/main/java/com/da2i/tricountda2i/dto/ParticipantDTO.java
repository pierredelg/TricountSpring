package com.da2i.tricountda2i.dto;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Objects;



public class ParticipantDTO implements Serializable {

	private Integer idParticipant;

	@NotNull
	private String surnom;

	public ParticipantDTO() {
	}

	public Integer getIdParticipant() {
		return this.idParticipant;
	}

	public void setIdParticipant(Integer idParticipants) {
		this.idParticipant = idParticipants;
	}

	public String getSurnom() {
		return this.surnom;
	}

	public void setSurnom(String surnom) {
		this.surnom = surnom;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		ParticipantDTO that = (ParticipantDTO) o;
		return idParticipant.equals(that.idParticipant) && Objects.equals(surnom, that.surnom);
	}

	@Override
	public int hashCode() {
		return Objects.hash(idParticipant, surnom);
	}
}