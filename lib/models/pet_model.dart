import 'package:flutter/cupertino.dart';

class PetModel {
  final String name;
  final String imageUrl;
  final IconData genderIcon;
  final String age;

  PetModel({
    required this.name,
    required this.imageUrl,
    required this.genderIcon,
    required this.age,
  });
}
