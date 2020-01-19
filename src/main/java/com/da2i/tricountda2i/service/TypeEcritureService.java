package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.TypeEcriture;
import com.da2i.tricountda2i.repository.TypeEcritureRepository;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/typeEcriture")
public class TypeEcritureService {

    @Autowired
    TypeEcritureRepository typeEcritureRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<TypeEcriture>> getAllWritingType(){

        List<TypeEcriture> typeEcritures = (List<TypeEcriture>) typeEcritureRepository.findAll();

        return new ResponseEntity<>(typeEcritures, HttpStatus.OK);
    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    @ApiOperation(value = "Permet de récupérer un type d'écriture avec son identifiant")
    public ResponseEntity<TypeEcriture> getWritingType(Integer id){

        TypeEcriture typeEcriture = typeEcritureRepository.findByIdTypeEcriture(id);

        if(typeEcriture != null){
            return new ResponseEntity<>(typeEcriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ApiOperation(value = "Permet d'ajouter un type d'écriture")
    public ResponseEntity<TypeEcriture> addWritingType(TypeEcriture typeEcriture){
        if (typeEcriture != null){
            typeEcritureRepository.save(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    @ApiOperation(value = "Permet de supprimer un type d'écriture")
    public ResponseEntity<TypeEcriture> deleteWritingType(TypeEcriture typeEcriture){
        if(typeEcriture != null){
            typeEcritureRepository.delete(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ApiOperation(value = "Permet de modifier un type d'écriture")
    public ResponseEntity<TypeEcriture> updateWritingType(TypeEcriture typeEcriture){

        if(typeEcriture != null){
            typeEcritureRepository.save(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}