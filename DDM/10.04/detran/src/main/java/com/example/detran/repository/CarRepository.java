package com.example.detran.repository;

import com.example.detran.model.Car;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CarRepository extends JpaRepository <Car, String> {
}
