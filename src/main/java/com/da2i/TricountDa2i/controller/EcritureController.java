package com.da2i.TricountDa2i.controller;

import com.da2i.TricountDa2i.model.Ecriture;
import com.da2i.TricountDa2i.repository.EcritureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/ecritures")
public class EcritureController {

    @Autowired
    EcritureRepository ecritureRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<Ecriture>> getAllWriting(){

        List<Ecriture> ecritures = (List<Ecriture>) ecritureRepository.findAll();

        return new ResponseEntity<>(ecritures, HttpStatus.OK);
    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    public ResponseEntity<Ecriture> getWriting(int id){

        Ecriture ecriture = ecritureRepository.findByIdEcriture(id);

        if(ecriture != null){
            return new ResponseEntity<>(ecriture, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Ecriture> addWriting(Ecriture ecriture){
        if (ecriture != null){
            ecritureRepository.save(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<Ecriture> deleteWriting(Ecriture ecriture){
        if(ecriture != null){
            ecritureRepository.delete(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Ecriture> updateWriting(Ecriture ecriture){

        if(ecriture != null){
            ecritureRepository.save(ecriture);
            return new ResponseEntity<>(ecriture,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}