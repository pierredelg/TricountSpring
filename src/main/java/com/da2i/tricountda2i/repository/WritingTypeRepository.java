package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.TypeEcriture;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WritingTypeRepository extends CrudRepository<TypeEcriture,Long> {
    TypeEcriture findByIdTypeEcriture(int id);
}
