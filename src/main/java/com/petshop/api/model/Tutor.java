package com.petshop.api.model;

import jakarta.persistence.*;

@Entity
@Table(name = "tutores")
public class Tutor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_tutor")
    private Long id;

    @Column(nullable = false, length = 100)
    String nome;

    @Column(nullable = false, length = 20)
    String telefone;

    @Column(nullable = false, length = 100, unique = true)
    String email;

    @Column(length = 200)
    String endereco;

    public Tutor(String nome, String telefone, String email, String endereco) {
        this.nome = nome;
        this.telefone = telefone;
        this.email = email;
        this.endereco = endereco;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
}
