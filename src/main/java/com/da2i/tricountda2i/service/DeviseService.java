package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Devise;
import com.da2i.tricountda2i.repository.DeviseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/devises")
public class DeviseService {

    @Autowired
    DeviseRepository deviseRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<Devise>> getAllCurrency(){

        List<Devise> devises = (List<Devise>) deviseRepository.findAll();

        return new ResponseEntity<>(devises, HttpStatus.OK);
    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    public ResponseEntity<Devise> getCurrency(String code){

        Devise devise = deviseRepository.findByCode(code);

        if(devise != null){
            return new ResponseEntity<>(devise, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Devise> addCurrency(Devise devise){
        if (devise != null){
            deviseRepository.save(devise);
            return new ResponseEntity<>(devise,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<Devise> deleteCurrency(Devise devise){
        if(devise != null){
            deviseRepository.delete(devise);
            return new ResponseEntity<>(devise,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Devise> updateCurrency(Devise devise){

        if(devise != null){
            deviseRepository.save(devise);
            return new ResponseEntity<>(devise,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}