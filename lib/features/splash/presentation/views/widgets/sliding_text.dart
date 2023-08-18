import 'package:assignment_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          return SlideTransition(
            position: animation,
            child: Text(
              textAlign: TextAlign.center,
              'Your Personal Pediatrician',
              style:
                  GoogleFonts.lexend(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          );
        });
  }
}
