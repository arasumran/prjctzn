package com.example.SpringDemos.models;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
class User {
  long id;
  String firstName;
  String lastName;
  String email;
  String password;
  String securitySocialNumber;
  boolean isAdmin;
}