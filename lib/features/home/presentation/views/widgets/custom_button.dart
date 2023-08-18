import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(
                vertical: 12, horizontal: SizeConfig.screenwidth! * 0.3),
            backgroundColor: const Color(0xff775EF0)),
        onPressed: onPressed,
        child: Text(title,
            style:
                GoogleFonts.lexend(fontWeight: FontWeight.w400, fontSize: 18)));
  }
}
