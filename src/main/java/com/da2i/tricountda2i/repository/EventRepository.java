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
    Evenement findByIdEvenement(int id);

    @Query("select evenement from Evenement evenement")
    List<Evenement> findByUser(@Param("utilisateur")Utilisateur utilisateur);
}
