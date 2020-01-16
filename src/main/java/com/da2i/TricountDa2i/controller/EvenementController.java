package com.da2i.TricountDa2i.controller;

import com.da2i.TricountDa2i.model.Evenement;
import com.da2i.TricountDa2i.repository.EvenementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/evenements")
public class EvenementController {

    @Autowired
    EvenementRepository evenementRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<Evenement>> getAllEvenement(){

        List<Evenement> evenements = (List<Evenement>) evenementRepository.findAll();

        return new ResponseEntity<>(evenements, HttpStatus.OK);
    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    public ResponseEntity<Evenement> getEvenement(int id){

        Evenement evenement = evenementRepository.findByIdEvenement(id);

        if(evenement != null){
            return new ResponseEntity<>(evenement, HttpStatus.OK);
        }

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Evenement> addEvenement(Evenement evenement){
        if (evenement != null){
            evenementRepository.save(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<Evenement> deleteEvenement(Evenement evenement){
        if(evenement != null){
            evenementRepository.delete(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Evenement> updateEvenement(Evenement evenement){

        if(evenement != null){
            evenementRepository.save(evenement);
            return new ResponseEntity<>(evenement,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
