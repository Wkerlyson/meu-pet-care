import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_pet_care/constants.dart';
import 'package:meu_pet_care/models/pet_model.dart';
import 'package:meu_pet_care/screens/pet_detail/components/pet_detail.dart';

class Pet extends StatelessWidget {
  final PetModel pet;

  const Pet({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (c) {
          return PetDetail(petModel: pet);
        }));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            height: size.height * 0.3 + 70,
            width: size.width * 0.6 - 20,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      height: size.height * 0.2 + 70,
                      width: size.width * 0.6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Hero(
                          tag: pet.imageUrl,
                          child: Image.asset(pet.imageUrl, fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pet.name,
                            style: GoogleFonts.getFont('Nunito',
                                textStyle: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: bgPourpleB,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Icon(
                                pet.genderIcon,
                                color: bgPourple,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      pet.age,
                      style: GoogleFonts.getFont('Nunito',
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
