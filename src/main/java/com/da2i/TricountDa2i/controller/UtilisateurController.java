package com.da2i.TricountDa2i.controller;

import com.da2i.TricountDa2i.model.Utilisateur;
import com.da2i.TricountDa2i.repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/utilisateurs")
public class UtilisateurController {

    @Autowired
    UtilisateurRepository utilisateurRepository;

    @RequestMapping(method= RequestMethod.GET)
    public ResponseEntity<List<Utilisateur>> getAllUser(){

        List<Utilisateur> utilisateurs = (List<Utilisateur>) utilisateurRepository.findAll();

        return new ResponseEntity<>(utilisateurs, HttpStatus.OK);
    }

    @RequestMapping(value ="/{id}", method= RequestMethod.GET)
    public ResponseEntity<Utilisateur> getuser(int id){

        Utilisateur utilisateur = utilisateurRepository.findByIdUtilisateur(id);

        if(utilisateur != null){
            return new ResponseEntity<>(utilisateur, HttpStatus.OK);
        }
        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Utilisateur> addUser(Utilisateur utilisateur){
        if (utilisateur != null){
            utilisateurRepository.save(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.CREATED);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.DELETE)
    public ResponseEntity<Utilisateur> deleteUser(Utilisateur utilisateur){
        if(utilisateur != null){
            utilisateurRepository.delete(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.OK);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<Utilisateur> updateUser(Utilisateur utilisateur){

        if(utilisateur != null){
            utilisateurRepository.save(utilisateur);
            return new ResponseEntity<>(utilisateur,HttpStatus.OK);
        }
        return new ResponseEntity<>(utilisateur,HttpStatus.BAD_REQUEST);
    }
}
