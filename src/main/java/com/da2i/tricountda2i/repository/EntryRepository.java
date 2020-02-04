package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Ecriture;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EntryRepository extends CrudRepository<Ecriture,Long> {

    Ecriture findByIdEcriture(int id);
}
