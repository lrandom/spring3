package com.example.demo.models;

import lombok.Data;

import javax.persistence.*;


@Data
@Entity
@Table(name = "clothes")
public class Clothe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name="name")
    String name;

    @Column(name="brand")
    String brand;


    @ManyToOne
    @JoinColumn(name = "user_id")
    User user;

}
