package com.animalguard.sistema.controller;

import com.AnimalGuard.project.model.Enderecos;
import com.AnimalGuard.project.repositories.EnderecoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class EnderecoController {

    @Autowired
    private EnderecoRepository enderecoRepository;

    @PostMapping(value = "salvarEndereco")
    @ResponseBody
    private ResponseEntity<Enderecos> salvar(@RequestBody Enderecos enderecos) {
        Enderecos enderecosSalvo = enderecoRepository.save(enderecos);
        return new ResponseEntity<Enderecos>(enderecosSalvo, HttpStatus.CREATED);
    };

    @PostMapping(value = "listarTodosEnderecos")
    @ResponseBody
    private ResponseEntity<List<Enderecos>> listarEndereco() {
        List<Enderecos> listaEnderecos = enderecoRepository.findAll();
        return new ResponseEntity<List<Enderecos>>(listaEnderecos, HttpStatus.OK);
    }
