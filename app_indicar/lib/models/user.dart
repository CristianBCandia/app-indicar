import 'package:flutter/material.dart';

class User {
  final num id;
  final String name;
  final String email;

  const User({
    this.id,
    @required this.name,
    @required this.email,
  });

}