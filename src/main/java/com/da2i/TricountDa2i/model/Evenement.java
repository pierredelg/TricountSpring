package com.da2i.TricountDa2i.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the evenement database table.
 * 
 */
@Entity
@NamedQuery(name="Evenement.findAll", query="SELECT e FROM Evenement e")
public class Evenement implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_evenement")
	private Integer idEvenement;

	private String description;

	private String titre;

	//bi-directional many-to-one association to Ecriture
	@OneToMany(mappedBy="evenement")
	private List<Ecriture> ecritures;

	//bi-directional many-to-one association to Participant
	@ManyToOne
	@JoinColumn(name="id_participants")
	private Participant participant;

	//bi-directional many-to-many association to Participant
	@ManyToMany(mappedBy="evenements2")
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

	public Ecriture addEcriture(Ecriture ecriture) {
		getEcritures().add(ecriture);
		ecriture.setEvenement(this);

		return ecriture;
	}

	public Ecriture removeEcriture(Ecriture ecriture) {
		getEcritures().remove(ecriture);
		ecriture.setEvenement(null);

		return ecriture;
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