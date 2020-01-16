package com.da2i.TricountDa2i.controller;

import com.da2i.TricountDa2i.model.TypeEcriture;
import com.da2i.TricountDa2i.repository.TypeEcritureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/typeEcriture")
public class TypeEcritureController {

    @Autowired
    TypeEcritureRepository typeEcritureRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<TypeEcriture>> getAllWritingType(){

        List<TypeEcriture> typeEcritures = (List<TypeEcriture>) typeEcritureRepository.findAll();

        return new ResponseEntity<>(typeEcritures, HttpStatus.OK);
    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    public ResponseEntity<TypeEcriture> getWritingType(int id){

        TypeEcriture typeEcriture = typeEcritureRepository.findByIdTypeEcriture(id);

        if(typeEcriture != null){
            return new ResponseEntity<>(typeEcriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<TypeEcriture> addWritingType(TypeEcriture typeEcriture){
        if (typeEcriture != null){
            typeEcritureRepository.save(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<TypeEcriture> deleteWritingType(TypeEcriture typeEcriture){
        if(typeEcriture != null){
            typeEcritureRepository.delete(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<TypeEcriture> updateWritingType(TypeEcriture typeEcriture){

        if(typeEcriture != null){
            typeEcritureRepository.save(typeEcriture);
            return new ResponseEntity<>(typeEcriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}