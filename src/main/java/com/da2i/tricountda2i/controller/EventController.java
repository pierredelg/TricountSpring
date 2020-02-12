package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.service.EntryService;
import com.da2i.tricountda2i.service.EventService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(tags = {"Gestion des événements"})
public class EventController {

    @Autowired
    EventService eventService;

    @Autowired
    EntryService entryService;

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
    public ResponseEntity<Evenement> getEvenement(@PathVariable Integer id){

        Evenement evenement = eventService.getEvenement(id);

        if(evenement != null){
            return new ResponseEntity<>(evenement, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @GetMapping(value ="/events/{eventId}/entries")
    @ApiOperation(value = "Récupére les dépenses d'un événement à partir de son id")
    public ResponseEntity<List<Ecriture>> getEntriesByEvent(@PathVariable Integer eventId){

        List<Ecriture> ecritureList = entryService.getAllWritingByEventId(eventId);

        if(ecritureList != null){
            return new ResponseEntity<>(ecritureList, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/events")
    @ApiOperation(value = "Ajoute un événement")
    public ResponseEntity<Evenement> addEvenement(@RequestBody Evenement evenement){
        if (evenement != null){
            eventService.addEvenement(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/events")
    @ApiOperation(value = "Supprime un événement")
    public ResponseEntity<Evenement> deleteEvenement(@RequestBody Evenement evenement){
        if(evenement != null){
            eventService.deleteEvenement(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
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
