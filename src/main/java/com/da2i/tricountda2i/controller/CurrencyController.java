package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Devise;
import com.da2i.tricountda2i.service.CurrencyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/currency")
@Api(description = "Permet de récupérer, ajouter, modifier ou supprimer une devise.")
public class CurrencyController {

    @Autowired
    CurrencyService currencyService;

    @GetMapping
    @ApiOperation(value = "Permet de récupérer la liste de toutes les devises")
    public ResponseEntity<List<Devise>> getAllCurrency(){

        List<Devise> devises = currencyService.getAllCurrency();

        return new ResponseEntity<>(devises, HttpStatus.OK);
    }

    @GetMapping(value ="/{id}")
    @ApiOperation(value = "Permet de récupérer une devise à partir de son code")
    public ResponseEntity<Devise> getCurrency(String code){

        Devise devise = currencyService.getCurrency(code);

        if(devise != null){
            return new ResponseEntity<>(devise, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping
    @ApiOperation(value = "Permet d'ajouter une devise")
    public ResponseEntity<Devise> addCurrency(Devise devise){
        if (devise != null){
            currencyService.addCurrency(devise);
            return new ResponseEntity<>(devise,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping
    @ApiOperation(value = "Permet de supprimer une devise")
    public ResponseEntity<Devise> deleteCurrency(Devise devise){
        if(devise != null){
            currencyService.deleteCurrency(devise);
            return new ResponseEntity<>(devise,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping
    @ApiOperation(value = "Permet de modifier une devise")
    public ResponseEntity<Devise> updateCurrency(Devise devise){

        if(devise != null){
            currencyService.updateCurrency(devise);
            return new ResponseEntity<>(devise,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}