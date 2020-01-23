package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class JwtUserDetailsService implements UserDetailsService {

    @Autowired
    UserService userService;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

        Utilisateur utilisateur = userService.getUserByEmail(email);

        if (utilisateur == null) {
            throw new UsernameNotFoundException("User not found with email: " + email);
        }
        return new org.springframework.security.core.userdetails.User(utilisateur.getEmail(), utilisateur.getMotDePasse(),
                new ArrayList<>());
    }

    //TODO remplacer Utilisateur en param avec un DTO
    public Utilisateur save(Utilisateur user) {
//        Utilisateur newUser = new Utilisateur();
//        newUser.setEmail(user.getEmail());
//        newUser.setMotDePasse(bcryptEncoder.encode(user.getMotDePasse()));
        return userService.addUser(user);
    }
}