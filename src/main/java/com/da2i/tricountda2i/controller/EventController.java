package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.service.EventService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/events")
@Api(description = "Permet de récupérer, ajouter, modifier ou supprimer un événement.")
public class EventController {

    @Autowired
    EventService eventService;

    @GetMapping
    @ApiOperation(value = "Permet de récupérer la liste de toutes les événements")
    public ResponseEntity<List<Evenement>> getAllEvenement(){

        List<Evenement> evenements = (List<Evenement>) eventService.getAllEvenement();

        return new ResponseEntity<>(evenements, HttpStatus.OK);
    }

    @GetMapping(value ="/{id}")
    @ApiOperation(value = "Permet de récupérer un événement à partir de son id")
    public ResponseEntity<Evenement> getEvenement(Integer id){

        Evenement evenement = eventService.getEvenement(id);

        if(evenement != null){
            return new ResponseEntity<>(evenement, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping
    @ApiOperation(value = "Permet d'ajouter un événement")
    public ResponseEntity<Evenement> addEvenement(Evenement evenement){
        if (evenement != null){
            eventService.addEvenement(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping
    @ApiOperation(value = "Permet de supprimer un événement")
    public ResponseEntity<Evenement> deleteEvenement(Evenement evenement){
        if(evenement != null){
            eventService.deleteEvenement(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping
    @ApiOperation(value = "Permet de modifier un événement")
    public ResponseEntity<Evenement> updateEvenement(Evenement evenement){

        if(evenement != null){
            eventService.updateEvenement(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
