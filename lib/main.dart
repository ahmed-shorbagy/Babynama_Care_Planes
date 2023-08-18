import 'package:assignment_app/constants.dart';
import 'package:assignment_app/core/utils/app_router.dart';
import 'package:assignment_app/features/home/presentation/manager/cubit/price_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CarePlanes());
}

class CarePlanes extends StatelessWidget {
  const CarePlanes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PriceCubit(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: kPrimamryColor,
            brightness: Brightness.dark),
      ),
    );
  }
}
