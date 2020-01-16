package com.da2i.TricountDa2i.repository;

import com.da2i.TricountDa2i.model.TypeEcriture;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TypeEcritureRepository extends CrudRepository<TypeEcriture,Long> {
    TypeEcriture findByIdTypeEcriture(int id);
}
