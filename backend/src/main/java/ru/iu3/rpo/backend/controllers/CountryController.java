package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Lazy;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.repositories.CountryRepository;
import ru.iu3.rpo.backend.tools.DataValidationException;

import java.util.*;


    @CrossOrigin(origins = "http://localhost:3000")
    @RestController
    @RequestMapping("/api/v1")
    public class CountryController {
        @Autowired
        CountryRepository countryRepository;

        @GetMapping("/countries")
        public Page<Country> getAllCountries(@RequestParam("page") int page, @RequestParam("limit") int limit) {
            return countryRepository.findAll(PageRequest.of(page,limit, Sort.by(Sort.Direction.ASC, "name")));
        }

        @GetMapping("/countries/{id}/artists")
        public ResponseEntity<List<Artist>> getCountryArtists(@PathVariable(value = "id") Long countryId) {
            Optional<Country> cc = countryRepository.findById(countryId);
            if (cc.isPresent()) {
                return ResponseEntity.ok(cc.get().artists);
            }
            return ResponseEntity.ok(new ArrayList<Artist>());
        }

        @GetMapping("/countries/{id}")
        public ResponseEntity<Country> getCountry(@PathVariable(value = "id") Long countryId)
                throws DataValidationException {
            Country country = countryRepository.findById(countryId).orElseThrow(() -> new DataValidationException("Страна с таким индексом не найдена"));
            return ResponseEntity.ok(country);
        }

        @PostMapping("/countries")
        public ResponseEntity<Object> createCountry(@Validated @RequestBody Country country)
                throws DataValidationException {
            try {
                Country nc = countryRepository.save(country);
                return new ResponseEntity<Object>(nc, HttpStatus.OK);
            } catch(Exception ex){
                String error;
                if (ex.getMessage().contains("countries.name_UNIQUE"))
                   throw new DataValidationException("country already exists");
                else
                    throw new DataValidationException("неизвестная ошибка");
            }
        }




        @PutMapping("/countries/{id}")
        public ResponseEntity<Country> updateCountry(@PathVariable(value = "id") Long countryId,
                                                     @Validated @RequestBody Country countryDetails) throws DataValidationException {

            try {
                Country country = countryRepository.findById(countryId).orElseThrow(() -> new DataValidationException("Страна с таким индексом не найдена"));
                country.name = countryDetails.name;
                countryRepository.save(country);
                return ResponseEntity.ok(country);
            } catch (Exception ex) {
                String error;
                if (ex.getMessage().contains("countries. name_UNIQUE"))
                    throw new DataValidationException("Эта страна уже есть в базе");
                else
                    throw new DataValidationException("Неизвестная ошибка");
            }
        }

        @PostMapping("/deletecountries")
        public ResponseEntity deleteCountries(@Validated @RequestBody List<Country> countries) {
            countryRepository.deleteAll(countries);
            return new ResponseEntity(HttpStatus.OK);
        }

        @DeleteMapping("/countries/{id}")
        public Map<String, Boolean> deleteCountry(@PathVariable(value = "id") Long countryId) {
            Optional<Country> country = countryRepository.findById(countryId);
            Map<String, Boolean> response = new HashMap<>();
            if (country.isPresent()) {
                countryRepository.delete(country.get());
                response.put("deleted", Boolean.TRUE);
            }
            else {
                response.put("deleted", Boolean.FALSE);
            }
            return response;
        }

    }