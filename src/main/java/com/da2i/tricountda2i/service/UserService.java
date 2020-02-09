package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    private PasswordEncoder bcryptEncoder;

    public List<Utilisateur> getAllUser(){

        return (List<Utilisateur>) userRepository.findAll();
    }

    public Utilisateur getuser(Integer id){
        return userRepository.findByIdUtilisateur(id);
    }

    public Utilisateur addUser(Utilisateur utilisateur){

        Utilisateur utilisateurResponse = null;
        Utilisateur utilisateurBDD = userRepository.findByEmail(utilisateur.getEmail());

        if(utilisateurBDD == null) {
            utilisateur.setMotDePasse(bcryptEncoder.encode(utilisateur.getMotDePasse()));
            utilisateurResponse = userRepository.save(utilisateur);
        }
        return utilisateurResponse;
    }

    public Utilisateur deleteUser(Utilisateur utilisateur){
        userRepository.delete(utilisateur);
        return utilisateur;
    }

    public Utilisateur updateUser(Utilisateur utilisateur){
        return  userRepository.save(utilisateur);
    }

    public Utilisateur getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }
}
