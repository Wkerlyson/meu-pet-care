import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_pet_care/components/category.dart';
import 'package:meu_pet_care/constants.dart';
import 'package:meu_pet_care/screens/home/components/pet.dart';
import 'package:meu_pet_care/config/app_data.dart' as app_data;

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Olá,",
                      style: GoogleFonts.getFont(
                        'Nunito',
                        textStyle: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Text(
                      " Wkerlyson",
                      style: GoogleFonts.getFont('Nunito',
                          textStyle: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Vamos cuidar de seus bichinhos fofos!',
                        style: GoogleFonts.getFont('Quicksand',
                            textStyle: const TextStyle(fontSize: 16)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Category(
                    iconName: 'med',
                    customColor: bgPourple,
                    label: 'Saúde',
                  ),
                  Category(
                    iconName: 'icon_2',
                    customColor: bgPourpleA,
                    label: 'Cuidados',
                  ),
                  Category(
                    iconName: 'vaccine',
                    customColor: bgOrange,
                    label: 'Consulta',
                  ),
                  Category(
                    iconName: 'sun',
                    customColor: bgPink,
                    label: 'Nutrição',
                  ),
                  Category(
                    iconName: 'icon_4',
                    customColor: bgOrangeA,
                    label: 'Saúde',
                  ),
                  Category(
                    iconName: 'vaccine',
                    customColor: bgOrange,
                    label: 'Saúde',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Meus Pets",
                        style: GoogleFonts.getFont(
                          'Nunito',
                          textStyle: const TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: bgOrange,
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        onPressed: () {},
                        child: Text('ADD PET',
                            style: GoogleFonts.getFont('Nunito')),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: app_data.items.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (_, index) {
                        return Pet(pet: app_data.items[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
