import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'column_of_planes_cards.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: CustomAppBar(),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            'Choose Your Care Plane to ',
            style:
                GoogleFonts.varela(fontWeight: FontWeight.w300, fontSize: 24),
          ),
          Text(
            '   Highly Experience   ',
            style:
                GoogleFonts.varela(fontWeight: FontWeight.bold, fontSize: 38),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ColumnOfPlanesCards()),
        ],
      ),
    );
  }
}
