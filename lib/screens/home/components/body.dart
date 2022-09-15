import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_pet_care/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  Acoes(
                    iconName: 'med',
                    customColor: bgPourple,
                    label: 'Saúde',
                  ),
                  Acoes(
                    iconName: 'icon_2',
                    customColor: bgPourpleA,
                    label: 'Cuidados',
                  ),
                  Acoes(
                    iconName: 'vaccine',
                    customColor: bgOrange,
                    label: 'Consulta',
                  ),
                  Acoes(
                    iconName: 'sun',
                    customColor: bgPink,
                    label: 'Nutrição',
                  ),
                  Acoes(
                    iconName: 'icon_4',
                    customColor: bgOrangeA,
                    label: 'Saúde',
                  ),
                  Acoes(
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: const [
                          Pets(
                            imageName: 'image_2',
                            customColor: bgPourple,
                            label: 'Saúde',
                          ),
                          Pets(
                            imageName: 'image_3',
                            customColor: bgOrangeA,
                            label: 'Saúde',
                          ),
                          Pets(
                            imageName: 'image_1',
                            customColor: bgPourple,
                            label: 'Saúde',
                          ),
                        ],
                      ),
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

class Acoes extends StatelessWidget {
  final String iconName;
  final Color customColor;
  final String label;

  const Acoes({
    Key? key,
    required this.iconName,
    required this.customColor,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
              color: customColor,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            height: 70,
            width: size.width * 0.2 - 9,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 5,
                child: SvgPicture.asset("assets/icons/$iconName.svg",
                    color: Colors.white,
                    height: 5,
                    width: 5,
                    fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 13, top: 10),
            child: Text(
              label,
              style: GoogleFonts.getFont(
                'Nunito',
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Pets extends StatelessWidget {
  final String imageName;
  final Color customColor;
  final String label;

  const Pets({
    Key? key,
    required this.imageName,
    required this.customColor,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
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
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/$imageName.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: size.height * 0.2 + 70,
                      width: size.width * 0.6,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Morphy",
                            style: GoogleFonts.getFont('Nunito',
                                textStyle: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.male_rounded,
                                color: bgPourple,
                              ),
                            ),
                            decoration: const BoxDecoration(
                              color: bgPourpleB,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '2 Anos 3 Meses',
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
