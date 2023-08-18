import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';

class CustomRowOfPLaneDescription extends StatelessWidget {
  const CustomRowOfPLaneDescription({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Icon(
            icon,
            color: const Color(0xff775EF0),
          ),
        ),
        SizedBox(
          width: SizeConfig.screenwidth! * 0.83,
          child: Text(
            maxLines: 3,
            title,
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
