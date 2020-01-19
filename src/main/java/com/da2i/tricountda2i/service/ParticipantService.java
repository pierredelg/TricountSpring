package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.repository.ParticipantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/participants")
public class ParticipantService {

    @Autowired
    ParticipantRepository participantRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<Participant>> getAllParticipant(){

        List<Participant> participants = (List<Participant>) participantRepository.findAll();

        return new ResponseEntity<>(participants, HttpStatus.OK);

    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    public ResponseEntity<Participant> getParticipant(Integer id){

        Participant participant = participantRepository.findByIdParticipants(id);

        if(participant != null){
            return new ResponseEntity<>(participant, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }


    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Participant> addParticipant(Participant participant){
        if (participant != null){
            participantRepository.save(participant);
            return new ResponseEntity<>(participant,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<Participant> deleteParticipant(Participant participant){
        if(participant != null){
            participantRepository.delete(participant);
            return new ResponseEntity<>(participant,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Participant> updateParticipant(Participant participant){

        if(participant != null){
            participantRepository.save(participant);
            return new ResponseEntity<>(participant,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
