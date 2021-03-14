import 'package:flutter/material.dart';

class User {
  final num id;
  final String name;
  final String email;
  final String phoneNumber;
  final String otherFoneNumber;
  final String birthDate;

  const User({
    this.id,
    @required this.name,
    @required this.email,
    @required this.phoneNumber,
    this.otherFoneNumber,
    @required this.birthDate,
  });

}