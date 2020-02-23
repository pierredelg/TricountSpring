package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Participant;
import com.da2i.tricountda2i.model.Utilisateur;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.NamedQuery;
import java.util.List;

@Repository
public interface ParticipantRepository extends CrudRepository<Participant,Long> {
    Participant findByIdParticipant(int id);

    @Query(value = "SELECT * FROM participant p ORDER BY p.id_participant DESC LIMIT 1",nativeQuery = true)
    Participant findLastParticipant();

    @Query("select p from Participant p  join p.utilisateur u where u.idUtilisateur = :id")
    Participant findByUserId(@Param("id") Integer id);

    @Query("select p from Participant p join p.evenementsParticipes e where e.idEvenement = :id")
    List<Participant> findAllByEventId(@Param("id") Long id);

    @Query("select p from Participant p join p.ecrituresAPayer e where e.idEcriture=:id")
    List<Participant> findAllByEntryId(@Param("id") Integer id);
}
