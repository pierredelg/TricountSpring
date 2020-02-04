package com.da2i.tricountda2i.service;

import com.da2i.tricountda2i.model.TypeEcriture;
import com.da2i.tricountda2i.repository.WritingTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WritingTypeService {

    @Autowired
    WritingTypeRepository writingTypeRepository;

    public List<TypeEcriture> getAllWritingType(){

        return (List<TypeEcriture>) writingTypeRepository.findAll();
    }

    public TypeEcriture getWritingType(Integer id){

        return writingTypeRepository.findByIdTypeEcriture(id);
    }

    public TypeEcriture addWritingType(TypeEcriture typeEcriture){

        return writingTypeRepository.save(typeEcriture);
    }

    public TypeEcriture deleteWritingType(TypeEcriture typeEcriture){

        writingTypeRepository.delete(typeEcriture);
        return typeEcriture;
    }

    public TypeEcriture updateWritingType(TypeEcriture typeEcriture){

        return writingTypeRepository.save(typeEcriture);
    }
}