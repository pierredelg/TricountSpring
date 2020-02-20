package com.da2i.tricountda2i.controller;

import com.da2i.tricountda2i.dto.BalanceDTO;
import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.service.BalanceService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(tags = {"Gestion de l'équilibre"})
public class BalanceController {
    @Autowired
    BalanceService balanceService;

    @ApiOperation(value = "Récupere les méthodes permises pour l'équilibre")
    @RequestMapping(value="/equilibre", method = RequestMethod.OPTIONS)
    ResponseEntity<?> collectionOptions()
    {
        return ResponseEntity
                .ok()
                .allow(HttpMethod.GET, HttpMethod.OPTIONS)
                .build();
    }

    @GetMapping("/equilibre")
    @ApiOperation(value = "Récupere l'equilibre d'un événement")
    public ResponseEntity<BalanceDTO> addCurrency(@RequestBody Evenement evenement) throws Exception {
        BalanceDTO balanceDTO = null;
        if (evenement != null){
            return new ResponseEntity<>(balanceDTO, HttpStatus.OK);
        }
        return new ResponseEntity<>(null,HttpStatus.BAD_REQUEST);
    }
}
