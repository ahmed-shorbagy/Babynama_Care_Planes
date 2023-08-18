import 'package:assignment_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../../core/utils/app_router.dart';

class SPlashViewBody extends StatefulWidget {
  const SPlashViewBody({super.key});

  @override
  State<SPlashViewBody> createState() => _SPlashViewBodyState();
}

late AnimationController animationController;
late Animation<Offset> animation;

class _SPlashViewBodyState extends State<SPlashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GradientText(
            gradientType: GradientType.linear,
            textScaleFactor: 4,
            textAlign: TextAlign.center,
            colors: const [
              Color(0xff53B3F2),
              Color(0xff53B3F2),
              Color(0xff53B3F2),
              Color(0xff53B3F2),
              Color(0xffC89E51),
              Color(0xffC89E51),
              Color(0xffC89E51),
              Color(0xffC89E51),
            ],
            'Babynama',
            style: GoogleFonts.lexend(fontWeight: FontWeight.bold)),
        const SlidingText()
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    animation = Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHOmeView);
    });
  }
}
