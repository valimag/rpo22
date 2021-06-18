package com.rpolabs.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.rpolabs.backend.models.Country;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends  JpaRepository<Country, Long> {

}
