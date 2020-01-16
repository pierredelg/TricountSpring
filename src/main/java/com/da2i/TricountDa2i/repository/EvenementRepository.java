package com.da2i.TricountDa2i.repository;

import com.da2i.TricountDa2i.model.Evenement;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EvenementRepository extends CrudRepository<Evenement,Long>{
    Evenement findByIdEvenement(int id);
}
