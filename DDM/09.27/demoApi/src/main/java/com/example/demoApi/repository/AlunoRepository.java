package com.example.demoApi.repository;

import com.example.demoApi.model.Aluno;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlunoRepository extends JpaRepository <Aluno, Integer> {
}
