import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final String iconName;
  final Color customColor;
  final String label;

  const Category({
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
