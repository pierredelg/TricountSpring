package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.dto.BalanceDTO;
import com.da2i.tricountda2i.dto.EvenementDTO;
import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.service.BalanceService;
import com.da2i.tricountda2i.service.EntryService;
import com.da2i.tricountda2i.service.EventService;
import com.da2i.tricountda2i.service.ParticipantService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@Api(tags = {"Gestion des événements"})
public class EventController {

    @Autowired
    EventService eventService;

    @Autowired
    EntryService entryService;

    @Autowired
    ParticipantService participantService;

    @Autowired
    BalanceService balanceService;

    @ApiOperation(value = "Récupere les méthodes permises pour les événements")
    @RequestMapping(value="/events", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET,HttpMethod.DELETE,HttpMethod.POST,HttpMethod.PUT, HttpMethod.OPTIONS)
                .build();
    }

    @GetMapping("/events")
    @ApiOperation(value = "Récupére la liste de toutes les événements")
    public ResponseEntity<List<Evenement>> getAllEvenement(){

        List<Evenement> evenements = eventService.getAllEvenement();

        return new ResponseEntity<>(evenements, HttpStatus.OK);
    }

    @GetMapping(value ="/events/{id}")
    @ApiOperation(value = "Récupére un événement à partir de son id")
    public ResponseEntity<Evenement> getEvenement(@PathVariable Long id){

        Evenement evenement = eventService.getEvenement(id);

        if(evenement != null){
            return new ResponseEntity<>(evenement, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }


    @GetMapping(value ="/events/{id}/entries")
    @ApiOperation(value = "Récupére les dépenses d'un evenement à partir de son id")
    public ResponseEntity<List<Ecriture>> getEntriesByEvent(@PathVariable Long id){


        List<Ecriture> ecritures = entryService.getAllWritingByEventId(id);

        if(ecritures != null && ecritures.size() > 0) {
            return new ResponseEntity<>(ecritures, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @GetMapping(value ="/events/{id}/participants")
    @ApiOperation(value = "Récupére les participants d'un evenement à partir de son id")
    public ResponseEntity<List<Participant>> getParticipantsByEvent(@PathVariable Long id){

        List<Participant> participantList = participantService.getAllParticipantByEventId(id);

        if(participantList != null && participantList.size() > 0) {
            return new ResponseEntity<>(participantList, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @GetMapping(value = "/events/{id}/balance")
    @ApiOperation(value = "Récupere l'equilibre d'un événement à partir de son id")
    public ResponseEntity<BalanceDTO> addCurrency(@PathVariable Integer id) throws Exception {

        BalanceDTO balanceDTO = balanceService.getBalance(id);

        if (balanceDTO != null){
            return new ResponseEntity<>(balanceDTO, HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.NOT_FOUND);
    }

    @GetMapping(value ="/events/{idevent}/entries/{identry}")
    @ApiOperation(value = "Récupére une dépense d'un evenement à partir de son id")
    public ResponseEntity<Ecriture> getEntryByIdByEventId(@PathVariable Long idevent,@PathVariable Integer identry){


        Ecriture ecriture = entryService.getEntryByIdByEventId(idevent,identry);

        if(ecriture != null) {
            return new ResponseEntity<>(ecriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/events")
    @ApiOperation(value = "Ajoute un événement")
    public ResponseEntity<EvenementDTO> addEvenement(@RequestBody EvenementDTO evenementDTO){

        if (evenementDTO != null){
            for(Participant participant : evenementDTO.getParticipants()){
                participant = participantService.addParticipant(participant);
            }
            eventService.addEvenement(evenementDTO);
            return new ResponseEntity<>(evenementDTO,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/events/{id}")
    @ApiOperation(value = "Supprime un événement")
    public ResponseEntity<Evenement> deleteEvenement(@PathVariable Long id){

        if(eventService.deleteEvenement(id)) {
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/events")
    @ApiOperation(value = "Modifie un événement")
    public ResponseEntity<Evenement> updateEvenement(@RequestBody Evenement evenement){

        if(evenement != null){
            eventService.updateEvenement(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
