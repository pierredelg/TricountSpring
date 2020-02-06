package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.service.EventService;
import com.da2i.tricountda2i.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Api(tags = {"Gestion des utilisateurs"})
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    EventService eventService;

    @ApiOperation(value = "Récupere les méthodes permises pour les utilisateurs inscrits")
    @RequestMapping(value="/users", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET,HttpMethod.DELETE,HttpMethod.POST,HttpMethod.PUT, HttpMethod.OPTIONS)
                .build();
    }

    @GetMapping("/users")
    @ApiOperation(value = "Récupére la liste de tous les utilisateurs inscrits")
    public ResponseEntity<List<Utilisateur>> getAllUser(){

        List<Utilisateur> utilisateurs = userService.getAllUser();

        return new ResponseEntity<>(utilisateurs, HttpStatus.OK);
    }

    @GetMapping(value ="/users/{id}")
    @ApiOperation(value = "Récupére un utilisateur avec son identifiant")
    public ResponseEntity<Utilisateur> getuser(@PathVariable Integer id){

        Utilisateur utilisateur = userService.getuser(id);

        if(utilisateur != null){
            return new ResponseEntity<>(utilisateur, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }
    @GetMapping(value ="/users/{email}")
    @ApiOperation(value = "Récupére un utilisateur avec son email")
    public ResponseEntity<Utilisateur> getuserByEmail(@PathVariable String email){

        Utilisateur utilisateur = userService.getUserByEmail(email);

        if(utilisateur != null){
            return new ResponseEntity<>(utilisateur, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }


    @GetMapping(value ="/users/{id}/events")
    @ApiOperation(value = "Récupére les événements d'un utilisateur")
    public ResponseEntity<List<Evenement>> getAllEvents(@PathVariable Integer id){

        Utilisateur utilisateur = userService.getuser(id);

        if(utilisateur != null){

            List<Evenement> evenementList = eventService.getEvenementByUser(utilisateur);

            if(evenementList != null) {
                return new ResponseEntity<>(evenementList, HttpStatus.OK);
            }
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @PostMapping("/users")
    @ApiOperation(value = "Ajoute un utilisateur")
    public ResponseEntity<Utilisateur> addUser(@RequestBody Utilisateur utilisateur){
        if (utilisateur != null){
            userService.addUser(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }

    @DeleteMapping("/users")
    @ApiOperation(value = "Supprime un utilisateur")
    public ResponseEntity<Utilisateur> deleteUser(@RequestBody Utilisateur utilisateur){
        if(utilisateur != null){
            userService.deleteUser(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.OK);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }

    @PutMapping("/users")
    @ApiOperation(value = "Modifie un utilisateur")
    public ResponseEntity<Utilisateur> updateUser(@RequestBody Utilisateur utilisateur){

        if(utilisateur != null){
            userService.updateUser(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.OK);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }
}