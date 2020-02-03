package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.service.EmailService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class EmailController {

    @Autowired
    EmailService emailService;

    @ApiOperation(value = "Récupere les méthodes permises pour l'envoie d'email")
    @RequestMapping(value="/sendWelcomeEmail", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.POST, HttpMethod.OPTIONS)
                .build();
    }

    @PostMapping("/sendWelcomeEmail")
    public ResponseEntity<String> sendWelcomeEmail(@RequestBody Utilisateur utilisateur) {
        if(utilisateur != null) {
            try {
                emailService.sendWelcomeEmail(utilisateur);
                return new ResponseEntity<>(null, HttpStatus.OK);
            } catch (Exception ex) {
                return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }
        return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
    }
}