import 'package:assignment_app/features/Purchase/presentation/views/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/styles.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment',
          style: Styles.textStyle20,
        ),
        backgroundColor: kPrimamryColor,
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}
