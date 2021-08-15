package com.codingdojo.languages.languages.controllers;
import java.util.List;

import javax.validation.Valid;

import com.codingdojo.languages.languages.models.Language;
import com.codingdojo.languages.languages.services.LanguageService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class LanguageController {
    private final LanguageService languageService;
    
    public LanguageController(LanguageService languageService) {
        this.languageService = languageService;
    }
    
    @GetMapping("/languages")
    public String index(Model model, @ModelAttribute("language") Language language) {
        List<Language> languages = languageService.allLanguages();
        System.out.println("******************");
        System.out.println(languages);
        System.out.println("******************");
        model.addAttribute("languages", languages);
        return "index.jsp";
    }

    @PostMapping(value="/languages")
    public String create(@Valid @ModelAttribute("language") Language language, BindingResult result) {
        if (result.hasErrors()) {
            return "index.jsp";
        } else {
            this.languageService.createLanguage(language);
            return "redirect:/languages";
        }
    }

    @GetMapping("/languages/{id}")
    public String languageDetails(Model model, @PathVariable("id") Long id) {
        Language language = languageService.findLanguage(id);
        model.addAttribute("language", language);
        return "language.jsp";
    }

    @GetMapping("/languages/{id}/edit")
    public String editLanguage(Model model, @PathVariable("id") Long id) {
        Language language = languageService.findLanguage(id);
        model.addAttribute("language", language);
        return "edit.jsp";
    }

    @PostMapping(value="/languages/update/{id}")
    public String edit( @PathVariable("id") Long id, @Valid @ModelAttribute("language") Language language, BindingResult result) {
        if (result.hasErrors()) {
            return "edit.jsp";
        } else {
            System.out.println(language.getId());
            System.out.println(language.getName());
            this.languageService.updateLanguage(language);
            return "redirect:/languages";
        }
    }

    @GetMapping(value="/languages/delete/{id}")
    public String delete(@PathVariable("id") Long id){
        this.languageService.deleteLanguage(id);
        return "redirect:/languages";
    }
    
}