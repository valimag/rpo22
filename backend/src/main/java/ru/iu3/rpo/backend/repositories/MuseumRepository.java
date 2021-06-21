package ru.iu3.rpo.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.iu3.rpo.backend.models.Museum;

@Repository
public interface MuseumRepository extends JpaRepository<Museum, Long> {

}