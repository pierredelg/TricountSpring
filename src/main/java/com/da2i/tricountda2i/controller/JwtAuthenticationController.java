package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.config.JwtTokenUtil;
import com.da2i.tricountda2i.model.JwtRequest;
import com.da2i.tricountda2i.model.JwtResponse;
import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.service.JwtUserDetailsService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin
public class JwtAuthenticationController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private JwtUserDetailsService userDetailsService;

    @ApiOperation(value = "Récupere les méthodes permises pour l'authentification")
    @RequestMapping(value="/authenticate", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET, HttpMethod.OPTIONS)
                .build();
    }

    @PostMapping(value = "/authenticate")
    public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtRequest authenticationRequest) throws Exception {

        authenticate(authenticationRequest.getUsername(), authenticationRequest.getPassword());

        final UserDetails userDetails = userDetailsService
                .loadUserByUsername(authenticationRequest.getUsername());

        final String token = jwtTokenUtil.generateToken(userDetails);

        return ResponseEntity.ok(new JwtResponse(token));
    }

    private void authenticate(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }

    @ApiOperation(value = "Récupere les méthodes permises pour l'enregistrement")
    @RequestMapping(value="/register", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptionsRegister()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.POST, HttpMethod.OPTIONS)
                .build();
    }


    @PostMapping(value = "/register")
    public ResponseEntity<?> saveUser(@RequestBody Utilisateur user) {
        return ResponseEntity.ok(userDetailsService.save(user));
    }
}