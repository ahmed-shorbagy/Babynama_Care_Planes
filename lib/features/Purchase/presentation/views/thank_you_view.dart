import 'package:assignment_app/features/Purchase/presentation/views/widgets/thank_you_page_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/styles.dart';

class ThanksView extends StatelessWidget {
  const ThanksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Congrtas',
          style: Styles.textStyle20,
        ),
        backgroundColor: kPrimamryColor,
      ),
      body: const ThankYouPageBody(),
    );
  }
}
