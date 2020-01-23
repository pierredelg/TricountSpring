package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailController {

    @Autowired
    EmailService emailService;

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