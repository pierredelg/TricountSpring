package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.service.EntryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/entries")
@Api(description = "Permet de récupérer, ajouter, modifier ou supprimer une écriture.")
public class EntryController {

    @Autowired
    EntryService entryService;

    @GetMapping
    @ApiOperation(value = "Permet de récupérer la liste de toutes les écritures")
    public ResponseEntity<List<Ecriture>> getAllWriting(){

        List<Ecriture> ecritures = entryService.getAllWriting();

        return new ResponseEntity<>(ecritures, HttpStatus.OK);
    }

    @GetMapping(value ="/{id}")
    @ApiOperation(value = "Permet de récupérer une écriture à partir de son id")
    public ResponseEntity<Ecriture> getWriting(Integer id){

        Ecriture ecriture = entryService.getWriting(id);

        if(ecriture != null){
            return new ResponseEntity<>(ecriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping
    @ApiOperation(value = "Permet d'ajouter une écriture")
    public ResponseEntity<Ecriture> addWriting(Ecriture ecriture){
        if (ecriture != null){
            entryService.addWriting(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping
    @ApiOperation(value = "Permet de supprimer une écriture")
    public ResponseEntity<Ecriture> deleteWriting(Ecriture ecriture){
        if(ecriture != null){
            entryService.deleteWriting(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping
    @ApiOperation(value = "Permet de modifier une écriture")
    public ResponseEntity<Ecriture> updateWriting(Ecriture ecriture){

        if(ecriture != null){
            entryService.updateWriting(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}