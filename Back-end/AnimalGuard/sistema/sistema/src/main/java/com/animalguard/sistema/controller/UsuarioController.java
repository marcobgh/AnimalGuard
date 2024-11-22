package com.animalguard.sistema.controller;

import com.animalguard.sistema.entity.Usuario;
import com.animalguard.sistema.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/usuario")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @PostMapping
    public Usuario save(@RequestBody Usuario usuario) {
        return usuarioService.salvarUsuario(usuario.getNome(), usuario.getCpf(),usuario.getTelefone());
    }

    @GetMapping
    public List<Usuario> findAll() {
        return usuarioService.listarUsuarios();
    }

}
