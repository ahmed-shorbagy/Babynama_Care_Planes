import 'package:assignment_app/core/utils/app_router.dart';
import 'package:assignment_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../home/presentation/views/widgets/custom_button.dart';

class ThankYouPageBody extends StatefulWidget {
  const ThankYouPageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ThankYouPageBody> createState() => _ThankYouPageBodyState();
}

Color themeColor = const Color(0xFF43D19E);

class _ThankYouPageBodyState extends State<ThankYouPageBody> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: themeColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/imgs/card.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Text(
              "Thank You!",
              style: TextStyle(
                color: themeColor,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text("Payment done Successfully", style: Styles.textStyle16),
            SizedBox(height: screenHeight * 0.05),
            const Text(
                "You will be redirected to the home page shortly\nor click here to return to home page",
                textAlign: TextAlign.center,
                style: Styles.textStyle14),
            SizedBox(height: screenHeight * 0.06),
            Flexible(
              child: CustomButton(
                title: 'Home',
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kHOmeView);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
