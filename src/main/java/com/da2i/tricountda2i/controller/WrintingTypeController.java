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
@RequestMapping(value = "/writingType")
@Api(description = "Permet de récupérer, ajouter, modifier ou supprimer un type d'écriture.")
public class WrintingTypeController {

    @Autowired
    WritingTypeService writingTypeService;

    @GetMapping
    @ApiOperation(value = "Permet de récupérer la liste de tous les types d'écritures")
    public ResponseEntity<List<TypeEcriture>> getAllWritingType(){

        List<TypeEcriture> typeEcritures = writingTypeService.getAllWritingType();

        return new ResponseEntity<>(typeEcritures, HttpStatus.OK);
    }

    @GetMapping(value ="/{id}")
    @ApiOperation(value = "Permet de récupérer un type d'écriture avec son identifiant")
    public ResponseEntity<TypeEcriture> getWritingType(Integer id){

        TypeEcriture typeEcriture = writingTypeService.getWritingType(id);

        if(typeEcriture != null){
            return new ResponseEntity<>(typeEcriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping
    @ApiOperation(value = "Permet d'ajouter un type d'écriture")
    public ResponseEntity<TypeEcriture> addWritingType(TypeEcriture typeEcriture){
        if (typeEcriture != null){
            writingTypeService.addWritingType(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping
    @ApiOperation(value = "Permet de supprimer un type d'écriture")
    public ResponseEntity<TypeEcriture> deleteWritingType(TypeEcriture typeEcriture){
        if(typeEcriture != null){
            writingTypeService.deleteWritingType(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping
    @ApiOperation(value = "Permet de modifier un type d'écriture")
    public ResponseEntity<TypeEcriture> updateWritingType(TypeEcriture typeEcriture){

        if(typeEcriture != null){
            writingTypeService.updateWritingType(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}