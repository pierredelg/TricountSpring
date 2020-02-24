package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.dto.EcritureDTO;
import com.da2i.tricountda2i.dto.ParticipantDTO;
import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.repository.CurrencyRepository;
import com.da2i.tricountda2i.repository.EntryRepository;
import com.da2i.tricountda2i.repository.EventRepository;
import com.da2i.tricountda2i.repository.ParticipantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EntryService {

    @Autowired
    EntryRepository entryRepository;

    @Autowired
    ParticipantRepository participantRepository;

    @Autowired
    CurrencyRepository currencyRepository;

    @Autowired
    EventRepository eventRepository;

    public List<Ecriture> getAllWriting(){

        return (List<Ecriture>) entryRepository.findAll();
    }

    public List<Ecriture> getAllWritingByEventId(Integer id){
        return entryRepository.findAllByEventId(Long.valueOf(id));
    }

    public Ecriture getWriting(Integer id){

        return entryRepository.findByIdEcriture(id);
    }

    public Ecriture addWriting(EcritureDTO ecritureDTO){
        Ecriture ecriture = new Ecriture();

        ecriture.setDate(ecritureDTO.getDate());
        ecriture.setMontant(ecritureDTO.getMontant());
        ecriture.setLibelle(ecritureDTO.getLibelle());
        List<Participant> participantList = new ArrayList<>();
        for (ParticipantDTO participantDTO : ecritureDTO.getParticipants()){
            Participant participant = participantRepository.findBySurnom(participantDTO.getSurnom());
            participantList.add(participant);
        }
        ecriture.setParticipants(participantList);
        ecriture.setTypeEcriture(ecritureDTO.getTypeEcriture());
        ecriture.setEvenement(ecritureDTO.getEvenement());

        ecriture.setDevise(currencyRepository.findByCode(ecritureDTO.getDevise()));

        Evenement evenement = eventRepository.findById(ecritureDTO.getEvenement().getIdEvenement()).orElse(null);
        final Participant[] participantPayeur = {null};
        if(evenement != null) {
            evenement.getParticipants().forEach(participantFromEvent -> {
                if (participantFromEvent.getSurnom().equals(ecritureDTO.getParticipant())){
                    participantPayeur[0] = participantFromEvent;
                }
            });
            ecriture.setParticipant(participantPayeur[0]);
        }
        ecriture.getParticipant().getEcrituresPayees().add(ecriture);
        participantRepository.save(ecriture.getParticipant());

        ecriture = entryRepository.save(ecriture);
        for (Participant participant: ecriture.getParticipants()){
            participant = participantRepository.findBySurnom(participant.getSurnom());
            participant.getEcrituresAPayer().add(ecriture);
            participant.getEvenementsParticipes().add(ecriture.getEvenement());
            participant = participantRepository.save(participant);
        }

        return ecriture;
    }

    public void deleteWriting(Integer id){

        entryRepository.deleteById(Long.valueOf(id));
    }

    public Ecriture updateWriting(Ecriture ecriture){

        return entryRepository.save(ecriture);
    }

    public List<Ecriture> getAllWritingByEventId(Long id) {

        return entryRepository.findAllByEventId(id);
    }

    public Ecriture getEntryByIdByEventId(Long idevent, Integer identry) {
        return entryRepository.findByEventIdAndEntryId(idevent,identry);
    }

    public List<Participant> getParticipantByEntryId(Integer id) {
        return participantRepository.findAllByEntryId(id);
    }

    public Ecriture deleteEntryByIdByEventId(Long idevent, Integer identry) {
        Ecriture ecriture = entryRepository.findByEventIdAndEntryId(idevent, identry);

        if(ecriture != null) {
            Participant participantPayeur = ecriture.getParticipant();
            participantPayeur.getEcrituresPayees().remove(ecriture);
            participantRepository.save(participantPayeur);

            List<Participant> participants = ecriture.getParticipants();
            participants.forEach(participant -> {
                participant.getEcrituresAPayer().remove(ecriture);
                participantRepository.save(participant);
            });
            entryRepository.delete(ecriture);
        }
        return ecriture;
    }
}