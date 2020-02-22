package com.da2i.tricountda2i.dto;

import com.da2i.tricountda2i.model.Participant;
import org.springframework.data.util.Pair;

import java.io.Serializable;
import java.util.Map;

public class BalanceDTO implements Serializable {

    private double montantTotalPot;

    private Map<String,Double> mapMontantDepenseParticipant;

    private Map<String,Double> mapMontantApayerAuPot;

    private Map<Map<String,String>,Double> mapRempboursement;

    public BalanceDTO() {
    }
    public double getMontantTotalPot() {
        return montantTotalPot;
    }

    public void setMontantTotalPot(double montantTotalPot) {
        this.montantTotalPot = montantTotalPot;
    }

    public Map<String, Double> getMapMontantDepenseParticipant() {
        return mapMontantDepenseParticipant;
    }

    public void setMapMontantDepenseParticipant(Map<String, Double> mapMontantDepenseParticipant) {
        this.mapMontantDepenseParticipant = mapMontantDepenseParticipant;
    }

    public Map<String, Double> getMapMontantApayerAuPot() {
        return mapMontantApayerAuPot;
    }

    public void setMapMontantApayerAuPot(Map<String, Double> mapMontantApayerAuPot) {
        this.mapMontantApayerAuPot = mapMontantApayerAuPot;
    }

    public Map<Map<String, String>, Double> getMapRempboursement() {
        return mapRempboursement;
    }

    public void setMapRempboursement(Map<Map<String, String>, Double> mapRempboursement) {
        this.mapRempboursement = mapRempboursement;
    }
}
