package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.dto.BalanceDTO;
import com.da2i.tricountda2i.exceptions.EntryWithoutParticipantException;
import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Participant;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class BalanceService {

    public BalanceDTO getBalance(Evenement evenement) throws Exception {

        BalanceDTO balanceDTO = new BalanceDTO();

        //On calcule le montant total de l'évenement
        double montantTotalDepense = evenement.getEcritures().stream().mapToDouble(Ecriture::getMontant).sum();
        balanceDTO.setMontantTotalPot(montantTotalDepense);

        //On crée une map contenant chaque participant avec un montant initialisé à 0
        Map<Participant,Double> map = new HashMap<>();
        evenement.getParticipants().forEach(participant -> map.put(participant, (double) 0));

        //On ajoute aussi celui qui crée l'évenement
        map.put(evenement.getParticipant(),(double)0);

        //Pour chaque écriture de l'événement
        for (Ecriture ecriture: evenement.getEcritures()) {

            //On retire le montant de celui qui à payer dans la map
            Participant payeur = ecriture.getParticipant();
            double montant = map.get(payeur) - ecriture.getMontant();
            map.put(payeur,montant);

            //On vérifie qu'il y a bien des participants pour laquelle l'écriture est créée
            if(ecriture.getParticipants().size() <= 0){
                throw new EntryWithoutParticipantException();
            }

            //On calcule le montant individuel pour chaque participant
            double montantIndiv = ecriture.getMontant() / (double) ecriture.getParticipants().size();

            //Pour chaque participant de la liste on ajoute ce montant individuel
            for(Participant participant : ecriture.getParticipants()){
                map.put(participant,(map.get(participant) + montantIndiv));
            }
        }

        //On ajoute cette map à la balance
        balanceDTO.setMapMontantApayerAuPot(map);

        //On cherche à mettre chaque personne à zero
        //On parcourt la map
        for (Map.Entry<Participant,Double> entry : map.entrySet()){

        }

        return balanceDTO;
    }
}
