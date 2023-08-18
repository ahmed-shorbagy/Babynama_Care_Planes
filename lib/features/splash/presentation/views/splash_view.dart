import 'package:assignment_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';

class SPlashView extends StatelessWidget {
  const SPlashView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SPlashViewBody(),
    );
  }
}
