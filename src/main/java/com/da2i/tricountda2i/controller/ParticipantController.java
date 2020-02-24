package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.dto.ParticipantDTO;
import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.service.ParticipantService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(tags = {"Gestion des participants"})
public class ParticipantController {

    @Autowired
    ParticipantService participantService;

    @ApiOperation(value = "Récupere les méthodes permises pour les participants")
    @RequestMapping(value="/participants", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET,HttpMethod.DELETE,HttpMethod.POST,HttpMethod.PUT, HttpMethod.OPTIONS)
                .build();
    }

    @GetMapping("/public/participants")
    @ApiOperation(value = "Récupére la liste de tous les participants")
    public ResponseEntity<List<Participant>> getAllParticipant(){

        List<Participant> participants = participantService.getAllParticipant();

        return new ResponseEntity<>(participants, HttpStatus.OK);

    }

    @GetMapping(value ="/participants/{id}")
    @ApiOperation(value = "Récupére un participant à partir de son id")
    public ResponseEntity<Participant> getParticipant(@PathVariable Integer id){

        Participant participant = participantService.getParticipant(id);

        if(participant != null){
            return new ResponseEntity<>(participant, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }


    @PostMapping("/participants")
    @ApiOperation(value = "Ajoute un participant")
    public ResponseEntity<ParticipantDTO> addParticipant(@RequestBody ParticipantDTO participant){
        if (participant != null){
            participantService.addParticipant(participant);
            return new ResponseEntity<>(participant,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/participants")
    @ApiOperation(value = "Supprime un participant")
    public ResponseEntity<Participant> deleteParticipant(@RequestBody Participant participant){
        if(participant != null){
            participantService.deleteParticipant(participant);
            return new ResponseEntity<>(participant,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/participants")
    @ApiOperation(value = "Modifie un participant")
    public ResponseEntity<Participant> updateParticipant(@RequestBody Participant participant){

        if(participant != null){
            participantService.updateParticipant(participant);
            return new ResponseEntity<>(participant,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
