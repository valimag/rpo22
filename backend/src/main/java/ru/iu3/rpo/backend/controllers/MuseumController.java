package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.repositories.MuseumRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class MuseumController {
    @Autowired
    MuseumRepository museumRepository;

    @GetMapping("/museums")
    public Page<Museum> getAllArtists(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return museumRepository.findAll(PageRequest.of(page,limit, Sort.by(Sort.Direction.ASC, "name")));
    }

    @PostMapping("/museums")
    public ResponseEntity<Object> createMuseum(@Validated @RequestBody Museum museum) {
        try {
            Museum nc = museumRepository.save(museum);
            return new ResponseEntity<Object>(nc, HttpStatus.OK);
        } catch (Exception ex) {
            String error;
            if (ex.getMessage().contains("museum.name_UNIQUE"))
                error = "museum already exists";
            else
                error = "undefined error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return new ResponseEntity<Object>(map, HttpStatus.OK);
        }
    }

//        @PutMapping("/countries/{id}")
//        public ResponseEntity<Country> updateCountry(@PathVariable(value = "id") Long countryId,
//                                                     @Validated @RequestBody Country countryDetails) {
//                Country country = null;
//                Optional<Country> cc = countryRepository.findById(countryId);
//                if (cc.isPresent()) {
//                        country = cc.get();
//                        country.name = countryDetails.name;
//                        countryRepository.save(country);
//                }
//                else {
//                        throw new ResponseStatusException(
//                                HttpStatus.NOT_FOUND, "country not found"
//                        );
//                }
//                return ResponseEntity.ok(country);
//        }
//        @DeleteMapping("/countries/{id}")
//        public Map<String, Boolean> deleteCountry(@PathVariable(value = "id") Long countryId) {
//                Optional<Country> country = countryRepository.findById(countryId);
//                Map<String, Boolean> response = new HashMap<>();
//                if (country.isPresent()) {
//                        countryRepository.delete(country.get());
//                        response.put("deleted", Boolean.TRUE);
//                }
//                else {
//                        response.put("deleted", Boolean.FALSE);
//                }
//                return response;
//        }
}