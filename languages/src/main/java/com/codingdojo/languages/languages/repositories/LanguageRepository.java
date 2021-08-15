package com.codingdojo.languages.languages.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.languages.languages.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long>{
}
