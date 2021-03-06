package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.dto.EcritureDTO;
import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.service.EntryService;
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
@Api(tags = {"Gestion des écritures"})
public class EntryController {

    @Autowired
    EntryService entryService;

    @ApiOperation(value = "Récupere les méthodes permises pour les écritures")
    @RequestMapping(value="/entries", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET,HttpMethod.DELETE,HttpMethod.POST,HttpMethod.PUT, HttpMethod.OPTIONS)
                .build();
    }

    @GetMapping("/entries")
    @ApiOperation(value = "Permet de récupérer la liste de toutes les écritures")
    public ResponseEntity<List<Ecriture>> getAllWriting(){

        List<Ecriture> ecritures = entryService.getAllWriting();

        return new ResponseEntity<>(ecritures, HttpStatus.OK);
    }

    @GetMapping(value ="/entries/{id}")
    @ApiOperation(value = "Permet de récupérer une écriture à partir de son id")
    public ResponseEntity<Ecriture> getWriting(@PathVariable Integer id){

        Ecriture ecriture = entryService.getWriting(id);

        if(ecriture != null){
            return new ResponseEntity<>(ecriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @GetMapping(value ="/entries/{id}/participants")
    @ApiOperation(value = "Permet de récupérer une écriture à partir de son id")
    public ResponseEntity<List<Participant>> getParticipantByEntryId(@PathVariable Integer id){

        List<Participant> participantList = entryService.getParticipantByEntryId(id);

        if(participantList != null && participantList.size() > 0){
            return new ResponseEntity<>(participantList, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/entries")
    @ApiOperation(value = "Permet d'ajouter une écriture")
    public ResponseEntity<EcritureDTO> addWriting(@RequestBody EcritureDTO ecritureDTO){
        if (ecritureDTO != null){
            entryService.addWriting(ecritureDTO);
            return new ResponseEntity<>(ecritureDTO,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/entries/{id}")
    @ApiOperation(value = "Permet de supprimer une écriture")
    public ResponseEntity<Void> deleteWriting(@PathVariable Integer id){
        try{
            entryService.deleteWriting(id);
        }catch (Exception e){
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

        }
        return new ResponseEntity<>(HttpStatus.OK);

    }

    @PutMapping("/entries")
    @ApiOperation(value = "Permet de modifier une écriture")
    public ResponseEntity<Ecriture> updateWriting(@RequestBody Ecriture ecriture){

        if(ecriture != null){
            entryService.updateWriting(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}