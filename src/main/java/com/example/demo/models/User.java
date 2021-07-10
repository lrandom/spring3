package com.example.demo.models;

import lombok.Data;

import javax.persistence.*;
import java.util.Collection;

@Data
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name = "email")
    String email;

    @Column(name="pwd")
    String password;

    @Column(name="address")
    String address;

    @Column(name="phone")
    String phone;

    @OneToOne(mappedBy = "user", fetch = FetchType.EAGER)
    UserInfo userInfo;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    Collection<Clothe> clothes;

    @ManyToMany(mappedBy = "users")
    Collection<School> schools;
}
