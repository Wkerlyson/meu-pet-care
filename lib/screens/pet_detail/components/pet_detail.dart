import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_pet_care/constants.dart';
import 'package:meu_pet_care/models/pet_model.dart';
import 'package:meu_pet_care/screens/home/components/pet.dart';

class PetDetail extends StatelessWidget {
  final PetModel petModel;

  const PetDetail({
    super.key,
    required this.petModel,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Container(
            height: size.height * 0.5 + 40,
            child: Stack(children: [
              Container(
                height: size.height * 0.2 - 10,
                width: size.width,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(40)),
                    color: bgPourple),
              ),
              Positioned(
                top: 20,
                left: 15,
                right: 15,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: size.height * 0.4 - 20,
                      width: size.width - 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height * 0.3 - 20,
                                width: size.width - 10,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Hero(
                                    tag: petModel.imageUrl,
                                    child: Image.asset(petModel.imageUrl,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      petModel.name,
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: bgPourpleB,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Icon(
                                          petModel.genderIcon,
                                          color: bgPourple,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                petModel.age,
                                style: GoogleFonts.getFont('Nunito',
                                    textStyle: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    )),
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      toolbarHeight: kToolbarHeight + 3,
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: bgPourple,
      title: Text(
        'Mais sobre ${petModel.name}',
        style: GoogleFonts.getFont(
          'Nunito',
          textStyle: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
