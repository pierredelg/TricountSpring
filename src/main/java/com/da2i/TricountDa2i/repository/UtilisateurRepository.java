package com.da2i.TricountDa2i.repository;

import com.da2i.TricountDa2i.model.Utilisateur;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UtilisateurRepository extends CrudRepository<Utilisateur,Long> {
    Utilisateur findByIdUtilisateur(Integer idUtilisateur);
}
