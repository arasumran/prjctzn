package com.example.SpringDemos.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Builder
class UserDTO {
  long id;
  String firstName;
  String email;
}