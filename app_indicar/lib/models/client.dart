import 'package:flutter/material.dart';

class Client {
  final num id;
  final String name;
  final String email;
  final String phoneNumber;
  final String otherFoneNumber;
  final String birthDate;

  const Client({
    this.id,
    @required this.name,
    @required this.email,
    @required this.phoneNumber,
    this.otherFoneNumber,
    @required this.birthDate,
  });

}