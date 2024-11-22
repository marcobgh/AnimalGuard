package com.animalguard.sistema.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "Clinica_veterinaria")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ClinicaVeterinaria {

    @Id
    @Column(nullable = false, unique = true)
    private Long id;

    @Column(nullable = false)
    private String cnpj;

    @Column(nullable = false)
    private String razaoSocial;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String telefone;

    @Column(nullable = false)
    private String senha;

    @ManyToOne
    @JoinColumn
    private Endereco endereco;

    @ManyToOne
    @JoinColumn
    private Usuario usuario;
}
