package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Evenement;
import com.da2i.tricountda2i.model.Utilisateur;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EventRepository extends CrudRepository<Evenement,Long>{

    @Query("select evenement from Evenement evenement join evenement.participants p where p.utilisateur = :utilisateur")
    List<Evenement> findByUser(@Param("utilisateur")Utilisateur utilisateur);

    @Query("delete from Evenement e where e.idEvenement= :idEvenement")
    Evenement deleteByIdEvenement(@Param("idEvenement") Integer idEvenement);
}
