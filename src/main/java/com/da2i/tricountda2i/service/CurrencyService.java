package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.Devise;
import com.da2i.tricountda2i.repository.CurrencyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CurrencyService {

    @Autowired
    CurrencyRepository currencyRepository;

    public List<Devise> getAllCurrency(){
        return (List<Devise>) currencyRepository.findAll();
    }

    public Devise getCurrency(String code){
        return currencyRepository.findByCode(code);
    }

    public Devise addCurrency(Devise devise){
        return currencyRepository.save(devise);
    }

    public Devise deleteCurrency(Devise devise){
        currencyRepository.delete(devise);
        return devise;
    }

    public Devise updateCurrency(Devise devise){

       return currencyRepository.save(devise);
    }
}