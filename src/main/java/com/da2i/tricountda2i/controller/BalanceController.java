package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.dto.BalanceDTO;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.service.BalanceService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = {"Gestion de l'équilibre"})
public class BalanceController {
    @Autowired
    BalanceService balanceService;

    @GetMapping("/equilibre")
    @ApiOperation(value = "Récupere l'equilibre d'un événement")
    public ResponseEntity<BalanceDTO> addCurrency(@RequestBody Evenement evenement) throws Exception {
        if (evenement != null){
            BalanceDTO balanceDTO = balanceService.getBalance(evenement);
            return new ResponseEntity<>(balanceDTO, HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
