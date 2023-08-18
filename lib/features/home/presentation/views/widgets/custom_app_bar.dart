import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.menu),
          SizedBox(
            width: SizeConfig.screenwidth! * 0.2,
          ),
          Text(
            textAlign: TextAlign.center,
            'Subscription',
            style:
                GoogleFonts.lexend(fontWeight: FontWeight.w400, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
