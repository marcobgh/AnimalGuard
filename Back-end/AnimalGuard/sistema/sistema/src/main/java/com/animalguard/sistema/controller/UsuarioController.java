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
