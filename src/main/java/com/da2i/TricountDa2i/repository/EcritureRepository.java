package com.da2i.TricountDa2i.repository;

import com.da2i.TricountDa2i.model.Ecriture;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EcritureRepository extends CrudRepository<Ecriture,Long> {

}
