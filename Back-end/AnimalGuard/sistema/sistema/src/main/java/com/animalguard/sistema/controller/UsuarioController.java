package com.animalguard.sistema.controller;

import com.AnimalGuard.project.model.Usuarios;
import com.AnimalGuard.project.repositories.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class UsuarioController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @PostMapping(value = "adicionarUsuario")
    @ResponseBody
    public ResponseEntity<Usuarios>salvar(@RequestBody Usuarios usuario) {
        Usuarios usuarioSalvo = usuarioRepository.save(usuario);
        return new ResponseEntity<Usuarios>(usuarioSalvo, HttpStatus.CREATED);
    }

    @GetMapping(value = "listarTodosUsuarios")
    @ResponseBody
    public ResponseEntity<List<Usuarios>> listarUsuarios() {
        List<Usuarios> usuariosList = usuarioRepository.findAll();
        return new ResponseEntity<List<Usuarios>>(usuariosList, HttpStatus.OK);
    }


}
