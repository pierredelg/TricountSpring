package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Utilisateur;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<Utilisateur,Long> {
    Utilisateur findByIdUtilisateur(Integer idUtilisateur);
    Utilisateur findByEmail(String email);

    @Query("select u from Utilisateur u order by u.idUtilisateur desc")
    Utilisateur findLastUser();
}
