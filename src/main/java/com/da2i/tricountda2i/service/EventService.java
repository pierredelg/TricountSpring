package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.dto.EvenementDTO;
import com.da2i.tricountda2i.dto.ParticipantDTO;
import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.repository.EntryRepository;
import com.da2i.tricountda2i.repository.EventRepository;
import com.da2i.tricountda2i.repository.ParticipantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EventService {

    @Autowired
    EventRepository eventRepository;

    @Autowired
    EntryRepository entryRepository;

    @Autowired
    ParticipantRepository participantRepository;

    @Autowired
    ParticipantService participantService;

    public List<Evenement> getAllEvenement(){

        return (List<Evenement>)  eventRepository.findAll();
    }

    public Evenement getEvenement(Long id){

        return eventRepository.findById(id).orElse(null);
    }

    public List<Evenement> getEvenementByUser(Utilisateur user){

        return eventRepository.findByUser(user);
    }

    public Evenement addEvenement(EvenementDTO evenementDTO){

        Evenement evenement = new Evenement();
        evenement.setDescription(evenementDTO.getDescription());
        evenement.setTitre(evenementDTO.getTitre());
        ArrayList<Participant> participants = new ArrayList<>();
        for (ParticipantDTO participantDTO : evenementDTO.getParticipants()){

            Participant participant = participantService.addParticipant(participantDTO);

            if(!participant.getEvenementsParticipes().contains(evenement)) {
                participant.getEvenementsParticipes().add(evenement);
            }
            participant = participantRepository.save(participant);
            participants.add(participant);
        }
        evenement.setParticipants(participants);

        return eventRepository.save(evenement);
    }

    public boolean deleteEvenement(Long id){
        if(eventRepository.existsById(id)){
            eventRepository.findById(id).ifPresent(
                    evenement -> evenement.getEcritures().forEach(
                            ecriture -> {
                                if(ecriture != null) {
                                    List<Participant> participants = ecriture.getParticipants();
                                    participants.forEach(participant -> {
                                        participant.getEcrituresAPayer().remove(ecriture);
                                        participantRepository.save(participant);
                                    });
                                    Participant participant = ecriture.getParticipant();
                                    participant.getEcrituresPayees().remove(ecriture);
                                    participantRepository.save(participant);
                                    entryRepository.delete(ecriture);
                                }
                            }
                    )
            );
            eventRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public Evenement updateEvenement(Evenement evenement){

        return eventRepository.save(evenement);
    }
}
