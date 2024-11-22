package com.animalguard.sistema.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Table(name = "Solicitacao_adocao")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AnimalPerdido {

    @Id
    @GeneratedValue
    @Column(nullable = false, unique = true)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private String especie;

    @Column(nullable = false)
    private String raca;

    @Column(nullable = false)
    private String idade;

    @Column(nullable = false)
    private String cor;

    @Column(nullable = false)
    private String porteFisico;

    @Column(nullable = false)
    private Date dataDesaparecimento;

    @Column(nullable = false)
    private String status;

    @ManyToOne
    @JoinColumn
    private Usuario usuario;

    @ManyToOne
    @JoinColumn
    private LocalizacaoAnimal localizacao;
}
