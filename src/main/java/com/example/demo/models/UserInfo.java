package com.example.demo.models;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name="user_infos")
public class UserInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;


    @Column(name = "dob")
    String dob;

    @Column(name="height")
    String height;

    @Column(name="weight")
    String weight;

    @Column(name="hobby")
    String hobby;

    @Column(name = "user_id")
    Long userId;

    @OneToOne
    @JoinColumn(name="user_id", insertable = false, updatable = false)
    User user;
}
