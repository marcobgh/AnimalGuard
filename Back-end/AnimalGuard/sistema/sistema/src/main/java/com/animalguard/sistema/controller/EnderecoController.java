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

    @PostMapping(value = "salvarEndereco")
    @ResponseBody
    private ResponseEntity<Enderecos> salvar(@RequestBody Enderecos enderecos) {
        Enderecos enderecosSalvo = enderecoRepository.save(enderecos);
        return new ResponseEntity<Enderecos>(enderecosSalvo, HttpStatus.CREATED);
    };

    @PostMapping(value = "listarTodosEndereco")
    @ResponseBody
    private ResponseEntity<List<Enderecos>> listarEndereco() {
        List<Enderecos> listaEnderecos = enderecoRepository.findAll();
        return new ResponseEntity<List<Enderecos>>(listaEnderecos, HttpStatus.OK);
    }


}
