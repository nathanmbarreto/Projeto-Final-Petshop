package com.petshop.api.service;

import com.petshop.api.dto.TutorDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TutorService {

    public List<TutorDTO> listarTodos() {
        return List.of(
                new TutorDTO(1L,  "Ana"),
                new TutorDTO(2L, "Carlos"),
                new TutorDTO(3L, "Ana")

        );
    }

    public Optional<TutorDTO> buscarPorId(Long id) {
        return listarTodos().stream()
                .filter(n -> n.idTutor().equals(id))
                .findFirst();
    }
}
