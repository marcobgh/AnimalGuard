package com.animalguard.sistema.service;

import com.animalguard.sistema.entity.Endereco;
import com.animalguard.sistema.repository.EnderecoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnderecoService {

    @Autowired
    private EnderecoRepository enderecoRepository;

    public Endereco salvarEndereco(String rua, String bairro, String complemento, String cidade, String estado, String cep) {
        Endereco endereco = new Endereco();
        endereco.setRua(rua);
        endereco.setBairro(bairro);
        endereco.setComplemento(complemento);
        endereco.setCidade(cidade);
        endereco.setEstado(estado);
        endereco.setCep(cep);;
        return enderecoRepository.save(endereco);

    }

}
