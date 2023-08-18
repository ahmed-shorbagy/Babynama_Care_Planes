import 'package:flutter/material.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';

class RowOfinputLine extends StatelessWidget {
  const RowOfinputLine({
    super.key,
    required this.rowtitle,
    required this.onchanged,
  });
  final String rowtitle;
  final void Function(String) onchanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowtitle,
          style: Styles.textStyle18,
        ),
        SizedBox(
          width: SizeConfig.screenwidth! * 0.6,
          height: SizeConfig.screenhieght! * 0.08,
          child: TextFormField(
            onChanged: onchanged,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'this field is requiered';
              } else {
                return null;
              }
            },
            cursorColor: const Color(0xff775EF0),
            decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
        )
      ],
    );
  }
}
