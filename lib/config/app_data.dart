import 'package:flutter/material.dart';
import 'package:meu_pet_care/models/pet_model.dart';

PetModel pet1 = PetModel(
    name: 'Ralf',
    imageUrl: 'assets/images/image_2.jpg',
    age: '2 ano e 3 meses',
    genderIcon: Icons.male_outlined);

PetModel pet2 = PetModel(
    name: 'Dog',
    imageUrl: 'assets/images/image_3.jpg',
    age: '2 ano e 3 meses',
    genderIcon: Icons.male_outlined);

PetModel pet3 = PetModel(
    name: 'Xande',
    imageUrl: 'assets/images/image_1.jpg',
    age: '2 ano e 3 meses',
    genderIcon: Icons.female_outlined);

// Lista de produtos
List<PetModel> items = [
  pet1,
  pet2,
  pet3,
];
