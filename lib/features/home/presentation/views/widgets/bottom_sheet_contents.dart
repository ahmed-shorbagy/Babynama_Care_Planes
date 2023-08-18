import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';

class BottomSheetContents extends StatelessWidget {
  const BottomSheetContents({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: SizeConfig.screenhieght! * 0.8,
        child: child,
      ),
    );
  }
}
