import 'package:flutter/material.dart';

class user {
  final String name;
  final String email;
  final String greeting;
  final String favoriteFruit;


  user(this.email, this.name, this.favoriteFruit, this.greeting);

  factory user.fromJson(Map<String, dynamic> json) {
    return new user(
      json['email'],
      json['name'],
      json['greeting'],
      json['favoriteFruit'],
    );
  }
}