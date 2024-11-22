package com.animalguard.sistema.repository;

import com.animalguard.sistema.entity.LocalizacaoAnimal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocalizacaoAnimalRepository extends JpaRepository<LocalizacaoAnimal, Long> {
}
