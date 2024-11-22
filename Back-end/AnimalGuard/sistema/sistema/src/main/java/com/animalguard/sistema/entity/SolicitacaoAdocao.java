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
public class SolicitacaoAdocao {

    @Id
    @GeneratedValue
    @Column(nullable = false, unique = true)
    private Long id;

    @Column(nullable = false)
    private Date dataSolicitacao;

    @Column(nullable = false)
    private String status;

    @Column(nullable = false)
    private String descricao;

    @ManyToOne
    @JoinColumn
    private AnimalEncontrado animalEncontrado;

    @ManyToOne
    @JoinColumn
    private Usuario usuario;

    @ManyToOne
    @JoinColumn
    private Colaborador colaborador;
}
