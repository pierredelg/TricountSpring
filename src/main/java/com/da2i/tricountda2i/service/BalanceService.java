package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.dto.BalanceDTO;
import com.da2i.tricountda2i.exceptions.EntryWithoutParticipantException;
import com.da2i.tricountda2i.model.Ecriture;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Participant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Service
public class BalanceService {

    @Autowired
    private EventService eventService;

    private Evenement evenement;

    private Map<String,Double> mapRemboursementPot;

    public BalanceDTO getBalance(Integer evenementId) throws Exception {

        BalanceDTO balanceDTO = new BalanceDTO();

        this.evenement = eventService.getEvenement(Long.valueOf(evenementId));

        //On calcule le montant total de l'évenement
        double montantTotalDepense = evenement.getEcritures().stream().mapToDouble(Ecriture::getMontant).sum();
        balanceDTO.setMontantTotalPot(montantTotalDepense);

        //On crée la map de remboursement au pot commun
        mapRemboursementPot = creationMapRemboursementAuPot();
        balanceDTO.setMapMontantApayerAuPot(mapRemboursementPot);

        //On crée une map contenant les remboursements entre chaques participants
        Map<Map<String,String>,Double> mapRemboursementEntreChaqueParticipant = creationMapRemboursementEntreChaqueParticipant();
        balanceDTO.setMapRempboursement(mapRemboursementEntreChaqueParticipant);

        return balanceDTO;
    }

    private Map<String,Double> creationMapDesMontantsTotauxDepensesParParticipant(){

        //On ajoute dans la map le montant total dépensé par chaque participant
        Map<String,Double> mapMontantDepenseChaqueParticipant = new HashMap<>();
        evenement.getEcritures().forEach(ecriture -> {
            Participant payeur = ecriture.getParticipant();
            if (!mapMontantDepenseChaqueParticipant.containsKey(payeur.getSurnom())) {
                mapMontantDepenseChaqueParticipant.put(payeur.getSurnom(), ecriture.getMontant());
            }else{
                Double ancienMontant = mapMontantDepenseChaqueParticipant.get(payeur.getSurnom());
                mapMontantDepenseChaqueParticipant.put(payeur.getSurnom(),ancienMontant + ecriture.getMontant());
            }
        });

        return mapMontantDepenseChaqueParticipant;
    }

    private Map<String,Double> creationMapRemboursementAuPot() throws EntryWithoutParticipantException {

        //On crée une map contenant chaque participant avec un montant initialisé à 0
        Map<String,Double> mapRemboursementPot = new HashMap<>();

        evenement.getParticipants().forEach(participant -> mapRemboursementPot.put(participant.getSurnom(), (double) 0));

        //Pour chaque écriture de l'événement
        for (Ecriture ecriture: evenement.getEcritures()) {

            //On ajoute le montant de celui qui à payé dans la map
            Participant payeur = ecriture.getParticipant();
            double montant = mapRemboursementPot.get(payeur.getSurnom()) + ecriture.getMontant();
            mapRemboursementPot.put(payeur.getSurnom(),montant);

            //On vérifie qu'il y a bien des participants pour laquelle l'écriture est créée
            if(ecriture.getParticipants().size() <= 0){
                throw new EntryWithoutParticipantException();
            }

            //On calcule le montant individuel pour chaque participant
            double montantIndiv = - ecriture.getMontant() / (double) ecriture.getParticipants().size();

            //Pour chaque participant de la liste on ajoute ce montant individuel
            for(Participant participant : ecriture.getParticipants()){
                double montantRemboursement = (mapRemboursementPot.get(participant.getSurnom()) + montantIndiv);
                montantRemboursement = Math.round(montantRemboursement * 1000.0)/1000.0;
                mapRemboursementPot.put(participant.getSurnom(),montantRemboursement);
            }
        }
        double balance = 0;
        for (Map.Entry<String, Double> entry : mapRemboursementPot.entrySet()){
            balance += entry.getValue();
        }
        if(balance > 0.01){
            System.out.println("ERREUR ARONDI CALCUL DE BALANCE MAP REMBOURSEMENT AU POT");
        }
        return mapRemboursementPot;
    }

    /**
     * On crée une nouvelle map de remboursement pour chaque participant
     * La clé de la map est une paire de participants
     * Dans la paire, La clé(key) donne de l'argent à la valeur(value)
     * La somme est indiquée en valeur de la map
     * @return La map de remboursement entre chaque participant. Qui permet de mettre chaque participant à 0.
     */
    private Map<Map<String,String>,Double> creationMapRemboursementEntreChaqueParticipant(){

        Map<Map<String,String>,Double> mapRempboursementParParticipant = new HashMap<>();

        //On crée deux map ( une pour les participants en négatifs et l'autre pour les participants en positif
        Map<String,Double> mapParticipantPositif = new HashMap<>();
        Map<String,Double> mapParticipantNegatif = new HashMap<>();
        for (Map.Entry<String, Double> entry : mapRemboursementPot.entrySet()) {
            if(entry.getValue() < 0){
                mapParticipantNegatif.put(entry.getKey(),entry.getValue());
            }else if(entry.getValue() > 0){
                mapParticipantPositif.put(entry.getKey(),entry.getValue());
            }
        }

        //On parcourt la map des participants en positif
        for (Iterator<Map.Entry<String,Double>> iteratorPositif = mapParticipantPositif.entrySet().iterator(); iteratorPositif.hasNext();) {

            Map.Entry<String,Double> entryMapPosistif = iteratorPositif.next();
            String participantPositifSelectionne = entryMapPosistif.getKey();

            //On parcourt la map des participants en négatif
            for (Iterator<Map.Entry<String,Double>> iteratorNegatif = mapParticipantNegatif.entrySet().iterator(); iteratorNegatif.hasNext();) {

                Map.Entry<String,Double> entryMapNegatif = iteratorNegatif.next();
                String participantNegatifSelectionne = entryMapNegatif.getKey();

                Map<String,String> pair = new HashMap<>();
                pair.put(participantNegatifSelectionne, participantPositifSelectionne);

                //Si le montant du participant en positif est supérieur ou égal au montant du participant en négatif
                if (Math.abs(entryMapPosistif.getValue()) >= Math.abs(entryMapNegatif.getValue())) {

                    //On ajoute le remboursement total ou partiel à la map des remboursements
                    mapRempboursementParParticipant.put(pair, Math.abs(entryMapNegatif.getValue()));

                    //On calcule le delta
                    double delta = entryMapPosistif.getValue() + entryMapNegatif.getValue();

                    //On met à jour le montant du participant de base
                    entryMapPosistif.setValue(delta);

                    //On retire le participant en negatif qui ne doit plus rien au pot commun
                    iteratorNegatif.remove();

                } else {
                    //On ajoute le remboursement à la map des remboursements
                    mapRempboursementParParticipant.put(pair, Math.abs(entryMapPosistif.getValue()));

                    //On calcule le delta
                    double delta = entryMapNegatif.getValue() + entryMapPosistif.getValue();

                    //On modifie le montant de remboursement du participant en négatif
                    entryMapNegatif.setValue(delta);

                    //On retire le participant positif qui est maintenant remboursé
                    iteratorPositif.remove();
                    break;
                }
            }
        }
        return mapRempboursementParParticipant;
    }

}
