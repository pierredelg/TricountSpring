package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Utilisateur;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<Utilisateur,Long> {
    Utilisateur findByIdUtilisateur(Integer idUtilisateur);
    Utilisateur findByEmail(String email);
}
