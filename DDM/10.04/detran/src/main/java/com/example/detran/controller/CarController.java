package com.example.detran.controller;

import com.example.detran.model.Car;
import com.example.detran.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping ("/apiCarros")
public class CarController {

    @Autowired
    CarRepository carRepo;

    @GetMapping ("/todos")
    public List<Car> buscarTodosCarros() {
        return carRepo.findAll();
    }

}
