package com.animalguard.sistema.controller;

import com.animalguard.sistema.entity.Endereco;
import com.animalguard.sistema.entity.Usuario;
import com.animalguard.sistema.service.EnderecoService;
import com.animalguard.sistema.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/endereco")
public class EnderecoController {

    @Autowired
    private EnderecoService enderecoService;

    @PostMapping
    public Endereco save(@RequestBody Endereco endereco) {
        return enderecoService.salvarEndereco(endereco.getRua(), endereco.getBairro(), endereco.getComplemento(), endereco.getCidade(), endereco.getEstado(), endereco.getCep());
    }


}
