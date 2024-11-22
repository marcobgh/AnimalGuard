package com.animalguard.sistema.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Table(name = "Colaborador")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Colaborador extends Usuario {
    @Column(nullable = false)
    private String setorAtuacao;

    @Column(nullable = false)
    private double salario;

    @Column(nullable = false)
    private Date dataAdmissao;

    @Column(nullable = false)
    private String status;
}
