package com.example.dorikader.models;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class Users {
    private Long id;
    private String name;
    private String surname;
    private String telephone;
    private String title;
    private String description;
}
