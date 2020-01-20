package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(description = "Service permettant de récupérer, ajouter, modifier ou supprimer un utilisateur.")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/utilisateurs")
    @ApiOperation(value = "Permet de récupérer la liste de tous les utilisateurs inscrits")
    public ResponseEntity<List<Utilisateur>> getAllUser(){

        List<Utilisateur> utilisateurs = userService.getAllUser();

        return new ResponseEntity<>(utilisateurs, HttpStatus.OK);
    }

    @GetMapping(value ="/utilisateurs/{id}")
    @ApiOperation(value = "Permet de récupérer un utilisateur avec son identifiant")
    public ResponseEntity<Utilisateur> getuser(Integer id){

        Utilisateur utilisateur = userService.getuser(id);

        if(utilisateur != null){
            return new ResponseEntity<>(utilisateur, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping
    @ApiOperation(value = "Permet d'ajouter un utilisateur")
    public ResponseEntity<Utilisateur> addUser(Utilisateur utilisateur){
        if (utilisateur != null){
            userService.addUser(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping
    @ApiOperation(value = "Permet de supprimer un utilisateur")
    public ResponseEntity<Utilisateur> deleteUser(Utilisateur utilisateur){
        if(utilisateur != null){
            userService.deleteUser(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.OK);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }

    @PutMapping
    @ApiOperation(value = "Permet de modifier un utilisateur")
    public ResponseEntity<Utilisateur> updateUser(Utilisateur utilisateur){

        if(utilisateur != null){
            userService.updateUser(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.OK);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }
}