package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.service.ParticipantService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/participants")
@Api(description = "Permet de récupérer, ajouter, modifier ou supprimer un participant.")
public class ParticipantController {

    @Autowired
    ParticipantService participantService;

    @GetMapping
    @ApiOperation(value = "Permet de récupérer la liste de tous les participants")
    public ResponseEntity<List<Participant>> getAllParticipant(){

        List<Participant> participants = participantService.getAllParticipant();

        return new ResponseEntity<>(participants, HttpStatus.OK);

    }

    @GetMapping(value ="/{id}")
    @ApiOperation(value = "Permet de récupérer un participant à partir de son id")
    public ResponseEntity<Participant> getParticipant(Integer id){

        Participant participant = participantService.getParticipant(id);

        if(participant != null){
            return new ResponseEntity<>(participant, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }


    @PostMapping
    @ApiOperation(value = "Permet d'ajouter un participant")
    public ResponseEntity<Participant> addParticipant(Participant participant){
        if (participant != null){
            participantService.addParticipant(participant);
            return new ResponseEntity<>(participant,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping
    @ApiOperation(value = "Permet de supprimer un participant")
    public ResponseEntity<Participant> deleteParticipant(Participant participant){
        if(participant != null){
            participantService.deleteParticipant(participant);
            return new ResponseEntity<>(participant,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping
    @ApiOperation(value = "Permet de modifier un participant")
    public ResponseEntity<Participant> updateParticipant(Participant participant){

        if(participant != null){
            participantService.updateParticipant(participant);
            return new ResponseEntity<>(participant,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
