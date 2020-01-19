package com.da2i.tricountda2i.repository;

import com.da2i.tricountda2i.model.Participant;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ParticipantRepository extends CrudRepository<Participant,Long> {
    Participant findByIdParticipants(int id);
}