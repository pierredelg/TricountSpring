package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Devise;
import com.da2i.tricountda2i.service.CurrencyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(tags = {"Gestion des devises"})
public class CurrencyController {

    @Autowired
    CurrencyService currencyService;

    @ApiOperation(value = "Récupere les méthodes permises pour les devises")
    @RequestMapping(value="/currency", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET,HttpMethod.DELETE,HttpMethod.POST,HttpMethod.PUT, HttpMethod.OPTIONS)
                .build();
    }

    @GetMapping("/currency")
    @ApiOperation(value = "Récupére la liste de toutes les devises")
    public ResponseEntity<List<Devise>> getAllCurrency(){

        List<Devise> devises = currencyService.getAllCurrency();

        return new ResponseEntity<>(devises, HttpStatus.OK);
    }

    @GetMapping(value ="/currency/{id}")
    @ApiOperation(value = "Récupére une devise à partir de son code")
    public ResponseEntity<Devise> getCurrency(@PathVariable String code){

        Devise devise = currencyService.getCurrency(code);

        if(devise != null){
            return new ResponseEntity<>(devise, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/currency")
    @ApiOperation(value = "Ajoute une devise")
    public ResponseEntity<Devise> addCurrency(@RequestBody Devise devise){
        if (devise != null){
            currencyService.addCurrency(devise);
            return new ResponseEntity<>(devise,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/currency")
    @ApiOperation(value = "Supprime une devise")
    public ResponseEntity<Devise> deleteCurrency(@RequestBody Devise devise){
        if(devise != null){
            currencyService.deleteCurrency(devise);
            return new ResponseEntity<>(devise,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/currency")
    @ApiOperation(value = "Modifie une devise")
    public ResponseEntity<Devise> updateCurrency(@RequestBody Devise devise){

        if(devise != null){
            currencyService.updateCurrency(devise);
            return new ResponseEntity<>(devise,HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}