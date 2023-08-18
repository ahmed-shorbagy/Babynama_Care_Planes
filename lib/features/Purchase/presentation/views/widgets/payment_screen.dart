import 'package:assignment_app/core/utils/app_router.dart';
import 'package:assignment_app/features/Purchase/presentation/views/widgets/payment_button.dart';
import 'package:assignment_app/features/Purchase/presentation/views/widgets/row_of_input_line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RowOfinputLine(
              rowtitle: 'Full Name',
              onchanged: (p0) {},
            ),
            RowOfinputLine(
              rowtitle: 'Card Number',
              onchanged: (p0) {},
            ),
            RowOfinputLine(
              rowtitle: 'Country',
              onchanged: (p0) {},
            ),
            const Icon(
              Icons.payment,
              size: 100,
              color: kPrimamryColor,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PaymentMethodButton(
                  icon: Icons.credit_card,
                  label: 'Visa',
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                PaymentMethodButton(
                  icon: Icons.paypal,
                  label: 'PayPal',
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                PaymentMethodButton(
                  icon: Icons.apple,
                  label: 'Apple Pay',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRouter.kThankYouView);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff775EF0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Pay Now',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
