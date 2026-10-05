package com.petshop.api.controller;

import com.petshop.api.dto.TutorDTO;
import com.petshop.api.service.TutorService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/tutores")
public class TutorController {

    private final TutorService tutorService;

    public TutorController(TutorService tutorService) {
        this.tutorService = tutorService;
    }

    @GetMapping
    public List<TutorDTO> listar() {
        return tutorService.listarTodos();
    }

    @GetMapping("/{id}")
    public TutorDTO buscarPorId(@PathVariable Long id) {
        return tutorService.buscarPorId(id).orElse(null);
    }
}

