package com.example.demo.respository;

import com.example.demo.models.School;
import org.springframework.data.repository.CrudRepository;

public interface SchoolRepo extends CrudRepository<School,Long> {

}
