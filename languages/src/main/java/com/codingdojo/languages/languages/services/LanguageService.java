package com.codingdojo.languages.languages.services;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import com.codingdojo.languages.languages.models.Language;
import com.codingdojo.languages.languages.repositories.LanguageRepository;


@Service
public class LanguageService {
    // adding the Language repository as a dependency
    private final LanguageRepository languageRepository;

    public LanguageService(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }

    public List<Language> allLanguages() {
        return (List<Language>)languageRepository.findAll();
    }
    // creates a Language
    public Language createLanguage(Language b) {
        return languageRepository.save(b);
    }
    // retrieves a Language
    public Language findLanguage(Long id) {
        Optional<Language> optionalLanguage = languageRepository.findById(id);
        if(optionalLanguage.isPresent()) {
            return optionalLanguage.get();
        } else {
            return null;
        }
    }

    public Language updateLanguage(Language b){
        return languageRepository.save(b);
    }

    public void deleteLanguage(Long id){
        languageRepository.deleteById(id);
    }
}
