package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Devise;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DeviseRepository extends CrudRepository<Devise, Long> {

    Devise findByCode(String code);
}
