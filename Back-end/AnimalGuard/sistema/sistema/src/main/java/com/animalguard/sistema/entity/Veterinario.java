package com.animalguard.sistema.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "Colaborador")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Veterinario extends Usuario {

    @Column(nullable = false)
    private String crmv;

    @Column(nullable = false)
    private String especialidade;

    @ManyToOne
    @JoinColumn
    private Usuario usuario;
}
