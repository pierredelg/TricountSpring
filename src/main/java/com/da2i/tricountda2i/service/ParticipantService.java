package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.repository.ParticipantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParticipantService {

    @Autowired
    ParticipantRepository participantRepository;

    public List<Participant> getAllParticipant(){

        return (List<Participant>) participantRepository.findAll();
    }

    public Participant getParticipant(Integer id){

        return participantRepository.findByIdParticipant(id);
    }

    public Participant addParticipant(Participant participant){

        if(participant.getIdParticipant() == null) {
            Participant lastUser = participantRepository.findLastParticipant();
            int lastId = lastUser.getIdParticipant();
            participant.setIdParticipant(++lastId);

            return participantRepository.save(participant);
        }
        return participant;
    }

    public Participant deleteParticipant(Participant participant){
        participantRepository.delete(participant);
        return participant;
    }

    public Participant updateParticipant(Participant participant){

        return participantRepository.save(participant);
    }

    public Participant getParticipantbyUserId(Integer id) {
        return participantRepository.findByUserId(id);
    }

    public List<Participant> getAllParticipantByEventId(Long id) {
        return participantRepository.findAllByEventId(id);
    }
}
