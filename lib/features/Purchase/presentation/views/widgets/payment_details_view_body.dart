import 'package:assignment_app/features/Purchase/presentation/views/widgets/payment_screen.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16), child: PaymentScreen());
  }
}
