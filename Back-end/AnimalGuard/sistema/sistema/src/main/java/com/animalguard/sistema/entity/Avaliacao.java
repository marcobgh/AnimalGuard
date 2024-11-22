package com.animalguard.sistema.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Table(name = "Avaliacao")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Avaliacao {

    @Id
    @GeneratedValue
    @Column(nullable = false, unique = true)
    private Long id;

    @Column(nullable = false)
    private String nota;

    @Column(nullable = false)
    private String comentario;

    @Column(nullable = false)
    private Date data;

    @ManyToOne
    @JoinColumn
    private Usuario usuario;

    @ManyToOne
    @JoinColumn
    private AnimalEncontrado animalEncontrado;
}
