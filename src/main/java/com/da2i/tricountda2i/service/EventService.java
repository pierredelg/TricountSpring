package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Utilisateur;
import com.da2i.tricountda2i.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {

    @Autowired
    EventRepository eventRepository;

    public List<Evenement> getAllEvenement(){

        return (List<Evenement>)  eventRepository.findAll();
    }

    public Evenement getEvenement(Integer id){

        return eventRepository.findByIdEvenement(id);
    }

    public List<Evenement> getEvenementByUser(Utilisateur user){

        return eventRepository.findByUser(user);
    }

    public Evenement addEvenement(Evenement evenement){

        return eventRepository.save(evenement);
    }

    public void deleteEvenement(Integer id){
        eventRepository.deleteById(Long.valueOf(id));
    }

    public Evenement updateEvenement(Evenement evenement){

        return eventRepository.save(evenement);
    }
}
