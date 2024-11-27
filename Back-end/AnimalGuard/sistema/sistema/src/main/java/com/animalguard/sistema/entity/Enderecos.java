package com.animalguard.sistema.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@SequenceGenerator(name="seq_endereco", sequenceName = "seq_endereco", allocationSize=1, initialValue=1)
public class Enderecos implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_endereco")
    private long id;

    private String rua;

    private String numero;

    private String complemento;

    private String cidade;

    private String estado;

    private String cep;
}
