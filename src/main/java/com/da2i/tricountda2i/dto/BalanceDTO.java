package com.da2i.tricountda2i.dto;

import com.da2i.tricountda2i.model.Participant;

import java.util.Map;

public class BalanceDTO {
    private double montantTotalPot;

    private Map<Participant,Double> mapMontantApayerAuPot;

    private Map<Participant,Map<Participant,Double>> mapRempboursement;

    public BalanceDTO() {
    }

    public double getMontantTotalPot() {
        return montantTotalPot;
    }

    public void setMontantTotalPot(double montantTotalPot) {
        this.montantTotalPot = montantTotalPot;
    }

    public Map<Participant, Double> getMapMontantApayerAuPot() {
        return mapMontantApayerAuPot;
    }

    public void setMapMontantApayerAuPot(Map<Participant, Double> mapMontantApayerAuPot) {
        this.mapMontantApayerAuPot = mapMontantApayerAuPot;
    }

    public Map<Participant, Map<Participant, Double>> getMapRempboursement() {
        return mapRempboursement;
    }

    public void setMapRempboursement(Map<Participant, Map<Participant, Double>> mapRempboursement) {
        this.mapRempboursement = mapRempboursement;
    }
}
