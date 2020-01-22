package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.TypeEcriture;
import com.da2i.tricountda2i.service.WritingTypeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(tags = {"Gestion des types d'écriture"})
public class WrintingTypeController {

    @Autowired
    WritingTypeService writingTypeService;

    @GetMapping("/writingType")
    @ApiOperation(value = "Récupére la liste de tous les types d'écritures")
    public ResponseEntity<List<TypeEcriture>> getAllWritingType(){

        List<TypeEcriture> typeEcritures = writingTypeService.getAllWritingType();

        return new ResponseEntity<>(typeEcritures, HttpStatus.OK);
    }

    @GetMapping(value ="/writingType/{id}")
    @ApiOperation(value = "Récupére un type d'écriture avec son identifiant")
    public ResponseEntity<TypeEcriture> getWritingType(@PathVariable Integer id){

        TypeEcriture typeEcriture = writingTypeService.getWritingType(id);

        if(typeEcriture != null){
            return new ResponseEntity<>(typeEcriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/writingType")
    @ApiOperation(value = "Ajoute un type d'écriture")
    public ResponseEntity<TypeEcriture> addWritingType(@RequestBody TypeEcriture typeEcriture){
        if (typeEcriture != null){
            writingTypeService.addWritingType(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/writingType")
    @ApiOperation(value = "Supprime un type d'écriture")
    public ResponseEntity<TypeEcriture> deleteWritingType(@RequestBody TypeEcriture typeEcriture){
        if(typeEcriture != null){
            writingTypeService.deleteWritingType(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/writingType")
    @ApiOperation(value = "Modifie un type d'écriture")
    public ResponseEntity<TypeEcriture> updateWritingType(@RequestBody TypeEcriture typeEcriture){

        if(typeEcriture != null){
            writingTypeService.updateWritingType(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}