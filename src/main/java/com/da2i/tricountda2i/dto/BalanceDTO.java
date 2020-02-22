package com.da2i.tricountda2i.dto;

import com.da2i.tricountda2i.model.Participant;
import org.springframework.data.util.Pair;

import java.io.Serializable;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.util.Map;

public class BalanceDTO implements Serializable {

    private double montantTotalPot;

    private Map<Participant,Double> mapMontantDepenseParticipant;

    private Map<Participant,Double> mapMontantApayerAuPot;

    private Map<Pair<Participant,Participant>,Double> mapRempboursement;

    public BalanceDTO() {
    }

    public double getMontantTotalPot() {
        return montantTotalPot;
    }

    public void setMontantTotalPot(double montantTotalPot) {
        this.montantTotalPot = montantTotalPot;
    }

    public Map<Participant, Double> getMapMontantDepenseParticipant() {
        return mapMontantDepenseParticipant;
    }

    public void setMapMontantDepenseParticipant(Map<Participant, Double> mapMontantDepenseParticipant) {
        this.mapMontantDepenseParticipant = mapMontantDepenseParticipant;
    }

    public Map<Participant, Double> getMapMontantApayerAuPot() {
        return mapMontantApayerAuPot;
    }

    public void setMapMontantApayerAuPot(Map<Participant, Double> mapMontantApayerAuPot) {
        this.mapMontantApayerAuPot = mapMontantApayerAuPot;
    }

    public Map<Pair<Participant,Participant>,Double> getMapRempboursement() {
        return mapRempboursement;
    }

    public void setMapRempboursement(Map<Pair<Participant,Participant>,Double> mapRempboursement) {
        this.mapRempboursement = mapRempboursement;
    }
}
