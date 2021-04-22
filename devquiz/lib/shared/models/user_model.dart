import 'package:flutter/material.dart';

class User {
  final String name;
  final String photoUrl;
  final int score;

  User({
    @required this.name,
    @required this.photoUrl,
    @required this.score});
}