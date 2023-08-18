import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../manager/cubit/price_cubit.dart';
import 'custom_style_button.dart';

class MonthlyPlaneSelectionButtons extends StatefulWidget {
  const MonthlyPlaneSelectionButtons({
    super.key,
  });

  @override
  State<MonthlyPlaneSelectionButtons> createState() =>
      _MonthlyPlaneSelectionButtonsState();
}

bool isActive1 = true;
bool isActive2 = false;

class _MonthlyPlaneSelectionButtonsState
    extends State<MonthlyPlaneSelectionButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomStyleButton(
            onPressed: () {
              setState(() {
                isActive2 = false;

                isActive1 = true;
                BlocProvider.of<PriceCubit>(context).updatePrice1();
              });
            },
            backGroundColor:
                isActive1 ? const Color(0xff775EF0) : kPrimamryColor,
            text: Text(
              '1 Month',
              style: Styles.textStyle18
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomStyleButton(
            onPressed: () {
              setState(() {
                isActive1 = false;

                isActive2 = true;
                BlocProvider.of<PriceCubit>(context).updatePrice2();
              });
            },
            backGroundColor:
                isActive2 ? const Color(0xff775EF0) : kPrimamryColor,
            text: Text(
              '3 Months',
              style: Styles.textStyle18
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
