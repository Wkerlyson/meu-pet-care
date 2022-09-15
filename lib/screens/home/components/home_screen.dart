import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_pet_care/constants.dart';
import 'package:meu_pet_care/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: kBackgroundColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        'Meu Pet Care',
        style: GoogleFonts.getFont(
          'Nunito',
          textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg", color: Colors.black),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/user-icon.svg",
              color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }
}
