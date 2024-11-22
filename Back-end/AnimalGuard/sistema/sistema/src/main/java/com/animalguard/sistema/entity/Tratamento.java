package com.animalguard.sistema.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Table(name = "Tratamento")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Tratamento {

    @Id
    @GeneratedValue
    @Column(nullable = false, unique = true)
    private Long id;

    @Column(nullable = false)
    private String tipo;

    @Column(nullable = false)
    private Date data;

    @Column(nullable = false)
    private String descricao;

    @Column(nullable = false)
    private String status;

    @ManyToOne
    @JoinColumn
    private Veterinario veterinario;

    @ManyToOne
    @JoinColumn
    private Resgate resgate;
}
