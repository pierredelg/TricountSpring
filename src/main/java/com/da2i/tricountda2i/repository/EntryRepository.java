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

    @Query("select e from Ecriture e join e.evenement ev where ev.idEvenement=:id")
    List<Ecriture> findAllByEventId(@Param("id") Long id);

    @Query("select e from Ecriture e join e.evenement ev where ev.idEvenement = :idevent and e.idEcriture = :identry")
    Ecriture findByEventIdAndEntryId(@Param("idevent") Long idevent,@Param("identry") Integer identry);
}
