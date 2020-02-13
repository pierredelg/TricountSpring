package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Ecriture;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EntryRepository extends CrudRepository<Ecriture,Long> {

    Ecriture findByIdEcriture(int id);

    @Query("select ec from Ecriture ec where ec.evenement.idEvenement = :id")
    List<Ecriture> findByEvenementId(@Param("id") int id);
}
